{-# LANGUAGE NoImplicitPrelude, OverloadedStrings, UnicodeSyntax #-}

{-|
[@ISO639-1@]        nl

[@ISO639-2B@]       dut

[@ISO639-3@]        nld

[@Native name@]     Nederlands

[@English name@]    Dutch
-}

module Text.Numeral.Language.NL
    ( cardinal
    , struct
    ) where

--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

-- from base:
import Control.Monad ( (>=>) )
import Data.Bool     ( otherwise )
import Data.Function ( ($), const, fix )
import Data.Maybe    ( Maybe(Just) )
import Data.Monoid   ( Monoid )
import Data.Ord      ( (<) )
import Data.String   ( IsString )
import Prelude       ( Integral, (-) )

-- from base-unicode-symbols:
import Data.List.Unicode ( (∈) )

-- from containers:
import qualified Data.Map as M ( fromList, lookup )

-- from numerals:
import Text.Numeral
import Text.Numeral.Misc ( dec )
import qualified Text.Numeral.Exp.Classes as C
import qualified Text.Numeral.BigNum as BN ( rule, pelletierRepr )


--------------------------------------------------------------------------------
-- NL
--------------------------------------------------------------------------------

cardinal ∷ (Integral α, C.Scale α, Monoid s, IsString s) ⇒ α → Maybe s
cardinal = struct >=> cardinalRepr

struct ∷ (Integral α, C.Scale α, C.Lit β, C.Neg β, C.Add β, C.Mul β, C.Scale β)
       ⇒ α → Maybe β
struct = pos $ fix $ rule `combine` pelletierScale R L BN.rule

rule ∷ (Integral α, C.Lit β, C.Add β, C.Mul β) ⇒ Rule α β
rule = findRule (   0, lit               )
              [ (  13, add    10      L  )
              , (  20, mul    10      L L)
              , ( 100, step  100   10 R L)
              , (1000, step 1000 1000 R L)
              ]
                (dec 6 - 1)

cardinalRepr ∷ (Monoid s, IsString s) ⇒ Exp → Maybe s
cardinalRepr = textify defaultRepr
               { reprValue = \n → M.lookup n syms
               , reprScale = BN.pelletierRepr "iljoen" "iljoen"
                                              "iljard" "iljard"
                                              []
               , reprAdd   = Just (⊞)
               , reprMul   = Just $ \_ _ _ → ""
               , reprNeg   = Just $ \_ _   → "min "
               }
    where
      (_     ⊞ Lit 10) _         = ""
      (Lit n ⊞ _) _ | n ∈ [2,3]  = "ën"
                    | n < 10     = "en"
                    | otherwise  = ""
      (_     ⊞ _) _              = ""

      syms =
          M.fromList
          [ (0, const "nul")
          , (1, const "een")
          , (2, tenForms "twee" "twin")
          , (3, tenForms "drie" "der")
          , (4, tenForms "vier" "veer")
          , (5, const "vijf")
          , (6, const "zes")
          , (7, const "zeven")
          , (8, \c → case c of
                       CtxMul _ (Lit 10) _ → "tach"
                       CtxAdd _ (Lit _)  _ → "ach"
                       _                   → "acht"
            )
          , (9, const "negen")
          , (10, \c → case c of
                        CtxMul R _ _ → "tig"
                        _            → "tien"
            )
          , (11, const "elf")
          , (12, const "twaalf")
          , (100, const "honderd")
          , (1000, const "duizend")
          ]

      tenForms n t ctx = case ctx of
                           CtxMul _ (Lit 10) _ → t
                           CtxAdd _ (Lit _)  _ → t
                           _                   → n

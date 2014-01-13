{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PackageImports    #-}
{-# LANGUAGE UnicodeSyntax     #-}

{-|
[@ISO639-1@]        -

[@ISO639-2@]        -

[@ISO639-3@]        amp

[@Native name@]     -

[@English name@]    Alamblak
-}

module Text.Numeral.Language.AMP
    ( -- * Language entry
      entry
      -- * Conversions
    , cardinal
      -- * Structure
    , struct
      -- * Bounds
    , bounds
    ) where


-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

import "base" Data.Function ( ($), const, fix )
import "base" Data.Maybe    ( Maybe(Just) )
import "base" Prelude       ( Integral )
import "base-unicode-symbols" Data.Function.Unicode ( (∘) )
import qualified "containers" Data.Map as M ( fromList, lookup )
import           "this" Text.Numeral
import qualified "this" Text.Numeral.Exp as E
import           "this" Text.Numeral.Grammar ( Inflection )
import "this" Text.Numeral.Entry
import "text" Data.Text ( Text )


-------------------------------------------------------------------------------
-- AMP
-------------------------------------------------------------------------------

entry ∷ Entry
entry = emptyEntry
    { entIso639_3    = Just "amp"
    , entEnglishName = Just "Alamblak"
    , entCardinal    = Just Conversion
                            { toNumeral   = cardinal
                            , toStructure = struct
                            }
    }

cardinal ∷ (Inflection i, Integral α) ⇒ i → α → Maybe Text
cardinal inf = cardinalRepr inf ∘ struct

struct ∷ (Integral α, E.Unknown β, E.Lit β, E.Add β, E.Mul β) ⇒ α → β
struct = checkPos
       $ fix
       $ findRule ( 1, lit       )
                [ ( 3, add  2 R  )
                , ( 5, lit       )
                , ( 6, add  5 R  )
                , (10, mul  5 R R)
                , (20, lit       )
                , (21, add 20 R  )
                , (40, mul 20 R R)
                ]
                  399

bounds ∷ (Integral α) ⇒ (α, α)
bounds = (1, 399)

cardinalRepr ∷ i → Exp i → Maybe Text
cardinalRepr = render defaultRepr
               { reprValue = \_ n → M.lookup n syms
               , reprAdd   = Just (⊞)
               , reprMul   = Just $ \_ _ _ → " "
               }
    where
      (Lit 2 ⊞ Lit _) _ = "i"
      (_     ⊞ _    ) _ = "i "

      syms =
          M.fromList
          [ (1,  const "rpat")
          , (2,  const "hosf")
          , (5,  \c → case c of
                        CtxMul L _ _ → "tir"
                        _            → "tir yohtt"
            )
          , (20, \c → case c of
                        CtxMul L _ _ → "yima"
                        _            → "yima yohtt"
            )
          ]

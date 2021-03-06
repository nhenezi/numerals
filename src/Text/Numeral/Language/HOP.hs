{-|
[@ISO639-1@]        -

[@ISO639-2@]        -

[@ISO639-3@]        hop

[@Native name@]     Hopilàvayi

[@English name@]    Hopi
-}

module Text.Numeral.Language.HOP
    ( -- * Language entry
      entry
      -- * Conversions
    , cardinal
      -- * Structure
    , struct
      -- * Bounds
    , bounds
    ) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Data.Function ( fix )
import "base" Data.Monoid   ( (<>) )
import qualified "containers" Data.Map as M ( fromList, lookup )
import "this" Text.Numeral
import "this" Text.Numeral.Entry
import "this" Text.Numeral.Render.Utils ( mulCtx )
import "text" Data.Text ( Text )


--------------------------------------------------------------------------------
-- HOP
--------------------------------------------------------------------------------

entry :: Entry
entry = emptyEntry
    { entIso639_3    = Just "hop"
    , entNativeNames = ["Hopilàvayi"]
    , entEnglishName = Just "Hopi"
    , entCardinal    = Just Conversion
                       { toNumeral   = cardinal
                       , toStructure = struct
                       }
    }

cardinal :: (Integral a) => Inflection -> a -> Maybe Text
cardinal inf = cardinalRepr inf . struct

struct :: (Integral a) => a -> Exp
struct = fix
       $ findRule ( 0, lit)
                [ (11, add 10 R)
                , (20, lit)
                , (21, add 20 R)
                , (30, mul 10 R L)
                ]
                  (100)

bounds :: (Integral a) => (a, a)
bounds = (1, 100)

cardinalRepr :: Inflection -> Exp -> Maybe Text
cardinalRepr = render defaultRepr
               { reprValue = \inf n -> M.lookup n (syms inf)
               , reprAdd   = Just (⊞)
               , reprAddCombine = Just addCombine
               , reprMul   = Just $ \_ _ _ -> " "
               }
    where
      (Lit n          ⊞ _) _ | n `elem` [10, 20] = " niikyang "
      (Mul _ (Lit 10) ⊞ _) _                     = " niikyang "
      (_              ⊞ _) _                     = " "

      addCombine a x (Lit n) y _ | n `elem` [10, 20] = x <> a <> y <> " siikya’ta"
      addCombine a x (Mul _ (Lit 10)) y _            = x <> a <> y <> " siikya’ta"
      addCombine a x _                y _            = x <> a <> y

      syms _ =
          M.fromList
          [ (1, \c -> case c of
                       CtxAdd {} -> "suk"
                       _         -> "suukya’"
            )
          , (2, \c -> case c of
                       CtxAdd {} -> "löqmuy"
                       _         -> "lööyöm"
            )
          , (3, \c -> case c of
                       CtxAdd {} -> "paykomuy"
                       CtxMul {} -> "payiv"
                       _         -> "pàayom"
            )
          , (4, \c -> case c of
                       CtxAdd {} -> "naalöqmuy"
                       CtxMul {} -> "naalöv"
                       _         -> "naalöyöm"
            )
          , (5, mulCtx 10 "tsivotsikiv"  $ const "tsivot")
          , (6, mulCtx 10 "navaysikiv"   $ const "navay")
          , (7, mulCtx 10 "tsange’sikiv" $ const "tsange’")
          , (8, mulCtx 10 "nanalsikiv"   $ const "nanalt")
          , (9, mulCtx 10 "peve’sikiv"   $ const "pevt")
          , (10, \c -> case c of
                       CtxMul L _ _ -> "palotsikiv"
                       _            -> "pakwt"
            )
          , (20, const "sunat")
          ]

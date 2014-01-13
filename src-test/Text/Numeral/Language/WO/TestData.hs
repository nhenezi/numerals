{-# LANGUAGE NoImplicitPrelude   #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE PackageImports      #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UnicodeSyntax       #-}

{-|
[@ISO639-1@]        wo

[@ISO639-2@]        wo1

[@ISO639-3@]        wo1

[@Native name@]     Wolof

[@English name@]    Wolof
-}

module Text.Numeral.Language.WO.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Prelude     ( Num )
import "this" Text.Numeral.Grammar.Reified ( defaultInflection )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

{-
Sources:
  http://en.wikipedia.org/wiki/Wolof_language#Numerals
  http://www.sf.airnet.ne.jp/~ts/language/number/wolof.html
-}

cardinals ∷ (Num i) ⇒ TestData i
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (1, "benn")
      , (2, "ñaar")
      , (3, "ñett")
      , (4, "ñeent")
      , (5, "juróom")
      , (6, "juróom-benn")
      , (7, "juróom-ñaar")
      , (8, "juróom-ñett")
      , (9, "juróom-ñeent")
      , (10, "fukk")
      , (11, "fukk ak benn")
      , (12, "fukk ak ñaar")
      , (13, "fukk ak ñett")
      , (14, "fukk ak ñeent")
      , (15, "fukk ak juróom")
      , (16, "fukk ak juróom-benn")
      , (17, "fukk ak juróom-ñaar")
      , (18, "fukk ak juróom-ñett")
      , (19, "fukk ak juróom-ñeent")
      , (20, "ñaar-fukk")
      , (21, "ñaar-fukk ak benn")
      , (22, "ñaar-fukk ak ñaar")
      , (23, "ñaar-fukk ak ñett")
      , (24, "ñaar-fukk ak ñeent")
      , (25, "ñaar-fukk ak juróom")
      , (26, "ñaar-fukk ak juróom-benn")
      , (27, "ñaar-fukk ak juróom-ñaar")
      , (28, "ñaar-fukk ak juróom-ñett")
      , (29, "ñaar-fukk ak juróom-ñeent")
      , (30, "ñett-fukk")
      , (31, "ñett-fukk ak benn")
      , (32, "ñett-fukk ak ñaar")
      , (33, "ñett-fukk ak ñett")
      , (34, "ñett-fukk ak ñeent")
      , (35, "ñett-fukk ak juróom")
      , (36, "ñett-fukk ak juróom-benn")
      , (37, "ñett-fukk ak juróom-ñaar")
      , (38, "ñett-fukk ak juróom-ñett")
      , (39, "ñett-fukk ak juróom-ñeent")
      , (40, "ñeent-fukk")
      , (41, "ñeent-fukk ak benn")
      , (42, "ñeent-fukk ak ñaar")
      , (43, "ñeent-fukk ak ñett")
      , (44, "ñeent-fukk ak ñeent")
      , (45, "ñeent-fukk ak juróom")
      , (46, "ñeent-fukk ak juróom-benn")
      , (47, "ñeent-fukk ak juróom-ñaar")
      , (48, "ñeent-fukk ak juróom-ñett")
      , (49, "ñeent-fukk ak juróom-ñeent")
      , (50, "juróom-fukk")
      , (51, "juróom-fukk ak benn")
      , (52, "juróom-fukk ak ñaar")
      , (53, "juróom-fukk ak ñett")
      , (54, "juróom-fukk ak ñeent")
      , (55, "juróom-fukk ak juróom")
      , (56, "juróom-fukk ak juróom-benn")
      , (57, "juróom-fukk ak juróom-ñaar")
      , (58, "juróom-fukk ak juróom-ñett")
      , (59, "juróom-fukk ak juróom-ñeent")
      , (60, "juróom-benn-fukk")
      , (61, "juróom-benn-fukk ak benn")
      , (62, "juróom-benn-fukk ak ñaar")
      , (63, "juróom-benn-fukk ak ñett")
      , (64, "juróom-benn-fukk ak ñeent")
      , (65, "juróom-benn-fukk ak juróom")
      , (66, "juróom-benn-fukk ak juróom-benn")
      , (67, "juróom-benn-fukk ak juróom-ñaar")
      , (68, "juróom-benn-fukk ak juróom-ñett")
      , (69, "juróom-benn-fukk ak juróom-ñeent")
      , (70, "juróom-ñaar-fukk")
      , (71, "juróom-ñaar-fukk ak benn")
      , (72, "juróom-ñaar-fukk ak ñaar")
      , (73, "juróom-ñaar-fukk ak ñett")
      , (74, "juróom-ñaar-fukk ak ñeent")
      , (75, "juróom-ñaar-fukk ak juróom")
      , (76, "juróom-ñaar-fukk ak juróom-benn")
      , (77, "juróom-ñaar-fukk ak juróom-ñaar")
      , (78, "juróom-ñaar-fukk ak juróom-ñett")
      , (79, "juróom-ñaar-fukk ak juróom-ñeent")
      , (80, "juróom-ñett-fukk")
      , (81, "juróom-ñett-fukk ak benn")
      , (82, "juróom-ñett-fukk ak ñaar")
      , (83, "juróom-ñett-fukk ak ñett")
      , (84, "juróom-ñett-fukk ak ñeent")
      , (85, "juróom-ñett-fukk ak juróom")
      , (86, "juróom-ñett-fukk ak juróom-benn")
      , (87, "juróom-ñett-fukk ak juróom-ñaar")
      , (88, "juróom-ñett-fukk ak juróom-ñett")
      , (89, "juróom-ñett-fukk ak juróom-ñeent")
      , (90, "juróom-ñeent-fukk")
      , (91, "juróom-ñeent-fukk ak benn")
      , (92, "juróom-ñeent-fukk ak ñaar")
      , (93, "juróom-ñeent-fukk ak ñett")
      , (94, "juróom-ñeent-fukk ak ñeent")
      , (95, "juróom-ñeent-fukk ak juróom")
      , (96, "juróom-ñeent-fukk ak juróom-benn")
      , (97, "juróom-ñeent-fukk ak juróom-ñaar")
      , (98, "juróom-ñeent-fukk ak juróom-ñett")
      , (99, "juróom-ñeent-fukk ak juróom-ñeent")
      , (100, "téeméer")
      , (101, "téeméer ak benn")
      , (106, "téeméer ak juróom-benn")
      , (110, "téeméer ak fukk")
      , (200, "ñaari téeméer")
      , (300, "ñetti téeméer")
      , (400, "ñeenti téeméer")
      , (500, "juróomi téeméer")
      , (600, "juróom-benni téeméer")
      , (700, "juróom-ñaari téeméer")
      , (800, "juróom-ñetti téeméer")
      , (900, "juróom-ñeenti téeméer")
      , (1000, "junni")
      , (1100, "junni ak téeméer")
      , (1600, "junni ak juróom-benni téeméer")
      , (1945, "junni ak juróom-ñeenti téeméer ak ñeent-fukk ak juróom")
      , (1969, "junni ak juróom-ñeenti téeméer ak juróom-benn-fukk ak juróom-ñeent")
      , (2000, "ñaari junni")
      , (3000, "ñetti junni")
      , (4000, "ñeenti junni")
      , (5000, "juróomi junni")
      , (6000, "juróom-benni junni")
      , (7000, "juróom-ñaari junni")
      , (8000, "juróom-ñetti junni")
      , (9000, "juróom-ñeenti junni")
      , (10000, "fukki junni")
      , (100000, "téeméeri junni")
      , (1000000, "tamndareet")
      ]
    )
  ]

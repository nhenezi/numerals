{-# LANGUAGE NoImplicitPrelude   #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE PackageImports      #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UnicodeSyntax       #-}

{-|
[@ISO639-1@]        nl

[@ISO639-2B@]       dut

[@ISO639-3@]        nld

[@Native name@]     Nederlands

[@English name@]    Dutch
-}

module Text.Numeral.Language.NL.TestData
    ( cardinals
    , ordinals
    , partitives
    , multiplicatives
    ) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Prelude     ( Integral )
import "this" Text.Numeral.Grammar
import "this" Text.Numeral.Grammar.Reified ( defaultInflection )
import "this" Text.Numeral.Misc ( dec )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

cardinals ∷ (Integral i) ⇒ TestData i
cardinals =
  [ ( "singular"
    , singular defaultInflection
    , [ (0, "nul")
      , (1, "één")
      , (2, "twee")
      , (3, "drie")
      , (4, "vier")
      , (5, "vijf")
      , (6, "zes")
      , (7, "zeven")
      , (8, "acht")
      , (9, "negen")
      , (10, "tien")
      , (11, "elf")
      , (12, "twaalf")
      , (13, "dertien")
      , (14, "veertien")
      , (15, "vijftien")
      , (16, "zestien")
      , (17, "zeventien")
      , (18, "achtien")
      , (19, "negentien")
      , (20, "twintig")
      , (21, "éénentwintig")
      , (22, "tweeëntwintig")
      , (23, "drieëntwintig")
      , (24, "vierentwintig")
      , (25, "vijfentwintig")
      , (26, "zesentwintig")
      , (27, "zevenentwintig")
      , (28, "achtentwintig")
      , (29, "negenentwintig")
      , (30, "dertig")
      , (31, "éénendertig")
      , (32, "tweeëndertig")
      , (33, "drieëndertig")
      , (34, "vierendertig")
      , (35, "vijfendertig")
      , (36, "zesendertig")
      , (37, "zevenendertig")
      , (38, "achtendertig")
      , (39, "negenendertig")
      , (40, "veertig")
      , (41, "éénenveertig")
      , (42, "tweeënveertig")
      , (43, "drieënveertig")
      , (44, "vierenveertig")
      , (45, "vijfenveertig")
      , (46, "zesenveertig")
      , (47, "zevenenveertig")
      , (48, "achtenveertig")
      , (49, "negenenveertig")
      , (50, "vijftig")
      , (51, "éénenvijftig")
      , (52, "tweeënvijftig")
      , (53, "drieënvijftig")
      , (54, "vierenvijftig")
      , (55, "vijfenvijftig")
      , (56, "zesenvijftig")
      , (57, "zevenenvijftig")
      , (58, "achtenvijftig")
      , (59, "negenenvijftig")
      , (60, "zestig")
      , (61, "éénenzestig")
      , (62, "tweeënzestig")
      , (63, "drieënzestig")
      , (64, "vierenzestig")
      , (65, "vijfenzestig")
      , (66, "zesenzestig")
      , (67, "zevenenzestig")
      , (68, "achtenzestig")
      , (69, "negenenzestig")
      , (70, "zeventig")
      , (71, "éénenzeventig")
      , (72, "tweeënzeventig")
      , (73, "drieënzeventig")
      , (74, "vierenzeventig")
      , (75, "vijfenzeventig")
      , (76, "zesenzeventig")
      , (77, "zevenenzeventig")
      , (78, "achtenzeventig")
      , (79, "negenenzeventig")
      , (80, "tachtig")
      , (81, "éénentachtig")
      , (82, "tweeëntachtig")
      , (83, "drieëntachtig")
      , (84, "vierentachtig")
      , (85, "vijfentachtig")
      , (86, "zesentachtig")
      , (87, "zevenentachtig")
      , (88, "achtentachtig")
      , (89, "negenentachtig")
      , (90, "negentig")
      , (91, "éénennegentig")
      , (92, "tweeënnegentig")
      , (93, "drieënnegentig")
      , (94, "vierennegentig")
      , (95, "vijfennegentig")
      , (96, "zesennegentig")
      , (97, "zevenennegentig")
      , (98, "achtennegentig")
      , (99, "negenennegentig")
      , (100, "honderd")
      , (101, "honderdéén")
      , (108, "honderdacht")
      , (118, "honderdachtien")
      , (115, "honderdvijftien")
      , (500, "vijfhonderd")
      , (999, "negenhonderdnegenennegentig")
      , (1000, "duizend")
      , (1001, "duizendéén")
      , (1008, "duizendacht")
      , (8000, "achtduizend")
      , (900000, "negenhonderdduizend")
      , (dec 6, "miljoen")
      , (dec 9, "miljard")
      , (dec 12, "biljoen")
      , (dec 15, "biljard")
      , (dec 18, "triljoen")
      , (dec 21, "triljard")
      , (dec 24, "quadriljoen")
      , (dec 27, "quadriljard")
      ]
    )
  , ( "plural"
    , plural defaultInflection
    , [ (1, "éénen")
      , (2, "tweeën")
      , (3, "drieën")
      , (4, "vieren")
      , (5, "vijven")
      , (6, "zessen")
      , (7, "zevens")
      , (8, "achten")
      , (9, "negens")
      , (10, "tienen")
      , (11, "elven")
      , (12, "twaalven")
      , (13, "dertiens")
      , (14, "veertiens")
      , (15, "vijftiens")
      , (16, "zestiens")
      , (17, "zeventiens")
      , (18, "achtiens")
      , (19, "negentiens")
      , (20, "twintigs")
      , (100, "honderden")
      , (1000, "duizenden")
      , (dec 6, "miljoenen")
      , (dec 9, "miljarden")
      , (dec 12, "biljoenen")
      , (dec 15, "biljarden")
      ]
    )
  , ( "dative"
    , dative defaultInflection
    , [ (1, "éénen")
      , (2, "tweeën")
      , (3, "drieën")
      , (4, "vieren")
      , (5, "vijven")
      , (6, "zessen")
      , (7, "zevenen")
      , (8, "achten")
      , (9, "negenen")
      , (10, "tienen")
      , (11, "elven")
      , (12, "twaalven")
      , (13, "dertienen")
      , (14, "veertienen")
      , (15, "vijftienen")
      , (16, "zestienen")
      , (17, "zeventienen")
      , (18, "achtienen")
      , (19, "negentienen")
      , (20, "twintigen")
      , (23, "drieëntwintigen")
      , (100, "honderden")
      , (1000, "duizenden")
      , (dec 6, "miljoenen")
      , (dec 9, "miljarden")
      , (dec 12, "biljoenen")
      , (dec 15, "biljarden")
      ]
    )
  ]

ordinals ∷ (Integral i) ⇒ TestData i
ordinals =
  [ ( "default"
    , defaultInflection
    , [ (1, "eerste")
      , (2, "tweede")
      , (3, "derde")
      , (4, "vierde")
      , (5, "vijfde")
      , (6, "zesde")
      , (7, "zevende")
      , (8, "achtste")
      , (9, "negende")
      , (10, "tiende")
      , (11, "elfde")
      , (12, "twaalfde")
      , (13, "dertiende")
      , (14, "veertiende")
      , (15, "vijftiende")
      , (16, "zestiende")
      , (17, "zeventiende")
      , (18, "achtiende")
      , (19, "negentiende")
      , (20, "twintigste")
      , (21, "éénentwintigste")
      , (22, "tweeëntwintigste")
      , (23, "drieëntwintigste")
      , (24, "vierentwintigste")
      , (25, "vijfentwintigste")
      , (26, "zesentwintigste")
      , (27, "zevenentwintigste")
      , (28, "achtentwintigste")
      , (29, "negenentwintigste")
      , (30, "dertigste")
      , (31, "éénendertigste")
      , (32, "tweeëndertigste")
      , (33, "drieëndertigste")
      , (34, "vierendertigste")
      , (35, "vijfendertigste")
      , (36, "zesendertigste")
      , (37, "zevenendertigste")
      , (38, "achtendertigste")
      , (39, "negenendertigste")
      , (40, "veertigste")
      , (41, "éénenveertigste")
      , (42, "tweeënveertigste")
      , (43, "drieënveertigste")
      , (44, "vierenveertigste")
      , (45, "vijfenveertigste")
      , (46, "zesenveertigste")
      , (47, "zevenenveertigste")
      , (48, "achtenveertigste")
      , (49, "negenenveertigste")
      , (50, "vijftigste")
      , (51, "éénenvijftigste")
      , (52, "tweeënvijftigste")
      , (53, "drieënvijftigste")
      , (54, "vierenvijftigste")
      , (55, "vijfenvijftigste")
      , (56, "zesenvijftigste")
      , (57, "zevenenvijftigste")
      , (58, "achtenvijftigste")
      , (59, "negenenvijftigste")
      , (60, "zestigste")
      , (61, "éénenzestigste")
      , (62, "tweeënzestigste")
      , (63, "drieënzestigste")
      , (64, "vierenzestigste")
      , (65, "vijfenzestigste")
      , (66, "zesenzestigste")
      , (67, "zevenenzestigste")
      , (68, "achtenzestigste")
      , (69, "negenenzestigste")
      , (70, "zeventigste")
      , (71, "éénenzeventigste")
      , (72, "tweeënzeventigste")
      , (73, "drieënzeventigste")
      , (74, "vierenzeventigste")
      , (75, "vijfenzeventigste")
      , (76, "zesenzeventigste")
      , (77, "zevenenzeventigste")
      , (78, "achtenzeventigste")
      , (79, "negenenzeventigste")
      , (80, "tachtigste")
      , (81, "éénentachtigste")
      , (82, "tweeëntachtigste")
      , (83, "drieëntachtigste")
      , (84, "vierentachtigste")
      , (85, "vijfentachtigste")
      , (86, "zesentachtigste")
      , (87, "zevenentachtigste")
      , (88, "achtentachtigste")
      , (89, "negenentachtigste")
      , (90, "negentigste")
      , (91, "éénennegentigste")
      , (92, "tweeënnegentigste")
      , (93, "drieënnegentigste")
      , (94, "vierennegentigste")
      , (95, "vijfennegentigste")
      , (96, "zesennegentigste")
      , (97, "zevenennegentigste")
      , (98, "achtennegentigste")
      , (99, "negenennegentigste")
      , (100, "honderdste")
      ]
    )
  ]

partitives ∷ (Integral i) ⇒ TestData (i, i)
partitives =
  [ ("singular", singular defaultInflection, testData)
  , ("ignored plural", plural defaultInflection, testData)
  , ("ignored dative", dative defaultInflection, testData)
  ]
  where
    testData =
      [ ((0, 1), "nul éénde")
      , ((1, 1), "één éénde")
      , ((0, 2), "nul tweede")
      , ((1, 2), "één tweede")  -- optionally "de helft"
      , ((2, 2), "twee tweede")
      , ((1, 3), "één derde")
      , ((2, 3), "twee derde")
      , ((1, 4), "één vierde")  -- optionally "één kwart"
      , ((2, 4), "twee vierde") -- optionally "twee kwart"
      , ((3, 4), "drie vierde") -- optionally "drie kwart"
      , ((4, 4), "vier vierde") -- optionally "vier kwart"
      , ((1, 5), "één vijfde")
      , ((2, 5), "twee vijfde")
      , ((1, 10), "één tiende")
      , ((1, 100), "één honderdste")
      , ((12, 144), "twaalf honderdvierenveertigste")
      , ((-1, 2), "min één tweede")
      , ((2, -3), "twee min derde")
      , ((-3, -5), "min drie min vijfde")
      ]

multiplicatives ∷ (Integral i) ⇒ TestData i
multiplicatives =
  [ ("singular", singular defaultInflection, testData)
  , ("ignored plural", plural defaultInflection, testData)
  , ("ignored dative", dative defaultInflection, testData)
  ]
  where
    testData =
      [ (1, "éénmaal")
      , (2, "tweemaal")
      , (3, "driemaal")
      , (10, "tienmaal")
      ]

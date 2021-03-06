{-|
[@ISO639-1@]        -

[@ISO639-2@]        -

[@ISO639-3@]        lmo

[@Native name@]     Lombard, Lumbaart

[@English name@]    Lombard
-}
module Text.Numeral.Language.LMO.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "numerals" Text.Numeral.Grammar ( defaultInflection )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

{-
Sources:
  http://www.languagesandnumbers.com/how-to-count-in-lombard-milanese/en/lmo/

Note: The test data is probably Western Lombard (lom-wes) as oposed to
Eastern Lombard (lom-eas).
-}

cardinals :: (Num i) => TestData i
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (1, "vun")
      , (2, "duu")
      , (3, "trii")
      , (4, "quatter")
      , (5, "cinch")
      , (6, "ses")
      , (7, "sett")
      , (8, "vott")
      , (9, "noeuv")
      , (10, "des")
      , (11, "vundes")
      , (12, "dodes")
      , (13, "tredes")
      , (14, "quattordes")
      , (15, "quindes")
      , (16, "sedes")
      , (17, "dersett")
      , (18, "desdott")
      , (19, "desnoeuv")
      , (20, "vint")
      , (21, "vintun")
      , (22, "vintduu")
      , (23, "vinttrii")
      , (24, "vintquatter")
      , (25, "vintcinch")
      , (26, "vintses")
      , (27, "vintsett")
      , (28, "vintott")
      , (29, "vintnoeuv")
      , (30, "trenta")
      , (31, "trentavun")
      , (32, "trentaduu")
      , (33, "trentatrii")
      , (34, "trentaquatter")
      , (35, "trentacinch")
      , (36, "trentases")
      , (37, "trentasett")
      , (38, "trentott")
      , (39, "trentanoeuv")
      , (40, "quaranta")
      , (41, "quarantavun")
      , (42, "quarantaduu")
      , (43, "quarantatrii")
      , (44, "quarantaquatter")
      , (45, "quarantacinch")
      , (46, "quarantases")
      , (47, "quarantasett")
      , (48, "quarantott")
      , (49, "quarantanoeuv")
      , (50, "cinquanta")
      , (51, "cinquantavun")
      , (52, "cinquantaduu")
      , (53, "cinquantatrii")
      , (54, "cinquantaquatter")
      , (55, "cinquantacinch")
      , (56, "cinquantases")
      , (57, "cinquantasett")
      , (58, "cinquantott")
      , (59, "cinquantanoeuv")
      , (60, "sessanta")
      , (61, "sessantavun")
      , (62, "sessantaduu")
      , (63, "sessantatrii")
      , (64, "sessantaquatter")
      , (65, "sessantacinch")
      , (66, "sessantases")
      , (67, "sessantasett")
      , (68, "sessantott")
      , (69, "sessantanoeuv")
      , (70, "settanta")
      , (71, "settantavun")
      , (72, "settantaduu")
      , (73, "settantatrii")
      , (74, "settantaquatter")
      , (75, "settantacinch")
      , (76, "settantases")
      , (77, "settantasett")
      , (78, "settantott")
      , (79, "settantanoeuv")
      , (80, "vottanta")
      , (81, "vottantavun")
      , (82, "vottantaduu")
      , (83, "vottantatrii")
      , (84, "vottantaquatter")
      , (85, "vottantacinch")
      , (86, "vottantases")
      , (87, "vottantasett")
      , (88, "vottantott")
      , (89, "vottantanoeuv")
      , (90, "novanta")
      , (91, "novantavun")
      , (92, "novantaduu")
      , (93, "novantatrii")
      , (94, "novantaquatter")
      , (95, "novantacinch")
      , (96, "novantases")
      , (97, "novantasett")
      , (98, "novantott")
      , (99, "novantanoeuv")
      , (100, "cent")
      , (101, "centvun")
      , (102, "centduu")
      , (103, "centtrii")
      , (104, "centquatter")
      , (105, "centcinch")
      , (106, "centses")
      , (107, "centsett")
      , (108, "centvott")
      , (109, "centnoeuv")
      , (110, "centdes")
      , (123, "centvinttrii")
      , (200, "dusent")
      , (300, "tresent")
      , (321, "tresentvintun")
      , (400, "quattercent")
      , (500, "cinchcent")
      , (600, "ses’cent")
      , (700, "settcent")
      , (800, "vottcent")
      , (900, "noeuvcent")
      , (909, "noeuvcentnoeuv")
      , (990, "noeuvcentnovanta")
      , (999, "noeuvcentnovantanoeuv")
      , (1000, "mila")
      , (1001, "mila e vun")
      , (1008, "mila e vott")
      , (1234, "mila e dusenttrentaquatter")
      , (2000, "dò mila")
      , (3000, "tré mila")
      , (4000, "quatter mila")
      , (4321, "quatter mila e tresentvintun")
      , (5000, "cinch mila")
      , (6000, "ses mila")
      , (7000, "sett mila")
      , (8000, "vott mila")
      , (9000, "noeuv mila")
      , (10000, "des mila")
      , (12345, "dodes mila e tresentquarantacinch")
      , (20000, "vint mila")
      , (30000, "trenta mila")
      , (40000, "quaranta mila")
      , (50000, "cinquanta mila")
      , (54321, "cinquantaquatter mila e tresentvintun")
      , (60000, "sessanta mila")
      , (70000, "settanta mila")
      , (80000, "vottanta mila")
      , (90000, "novanta mila")
      , (100000, "centmila")
      , (123456, "centvinttré mila e quattercentcinquantases")
      , (200000, "dusentmila")
      , (300000, "tresentmila")
      , (400000, "quattercentmila")
      , (500000, "cinchcentmila")
      , (600000, "ses’centmila")
      , (654321, "ses’centcinquantaquatter mila e tresentvintun")
      , (700000, "settcentmila")
      , (800000, "vottcentmila")
      , (900000, "noeuvcentmila")
      , (1000000, "on milion")
      , (1000001, "on milion e vun")
      , (1234567, "on milion e dusenttrentaquatter mila e cinchcentsessantasett")
      , (2000000, "duu milion")
      , (3000000, "trii milion")
      , (4000000, "quatter milion")
      , (5000000, "cinch milion")
      , (6000000, "ses milion")
      , (7000000, "sett milion")
      , (7654321, "sett milion e ses’centcinquantaquatter mila e tresentvintun")
      , (8000000, "vott milion")
      , (9000000, "noeuv milion")
      , (1000000000, "on miliard")
      , (1000000001, "on miliard e vun")
      , (2000000000, "duu miliard")
      , (3000000000, "trii miliard")
      , (4000000000, "quatter miliard")
      , (5000000000, "cinch miliard")
      , (6000000000, "ses miliard")
      , (7000000000, "sett miliard")
      , (8000000000, "vott miliard")
      , (9000000000, "noeuv miliard")
      ]
    )
  ]

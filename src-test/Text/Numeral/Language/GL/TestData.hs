{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PackageImports    #-}
{-# LANGUAGE UnicodeSyntax     #-}

{-|
[@ISO639-1@]        gl

[@ISO639-2@]        glg

[@ISO639-3@]        glg

[@Native name@]     Galego

[@English name@]    Galician
-}
module Text.Numeral.Language.GL.TestData (cardinals) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

import "base" Prelude ( Num )
import "numerals" Text.Numeral.Grammar.Reified ( defaultInflection )
import "this" Text.Numeral.Test ( TestData )


--------------------------------------------------------------------------------
-- Test data
--------------------------------------------------------------------------------

{-
Sources:
  http://www.languagesandnumbers.com/how-to-count-in-galician/en/glg/
-}

cardinals ∷ (Num i) ⇒ TestData i
cardinals =
  [ ( "default"
    , defaultInflection
    , [ (0, "cero")
      , (1, "un")
      , (2, "dous")
      , (3, "tres")
      , (4, "catro")
      , (5, "cinco")
      , (6, "seis")
      , (7, "sete")
      , (8, "oito")
      , (9, "nove")
      , (10, "dez")
      , (11, "once")
      , (12, "doce")
      , (13, "trece")
      , (14, "catorce")
      , (15, "quince")
      , (16, "dezaseis")
      , (17, "dezasete")
      , (18, "dezoito")
      , (19, "dezanove")
      , (20, "vinte")
      , (21, "vinte e un")
      , (22, "vinte e dous")
      , (23, "vinte e tres")
      , (24, "vinte e catro")
      , (25, "vinte e cinco")
      , (26, "vinte e seis")
      , (27, "vinte e sete")
      , (28, "vinte e oito")
      , (29, "vinte e nove")
      , (30, "trinta")
      , (31, "trinta e un")
      , (32, "trinta e dous")
      , (33, "trinta e tres")
      , (34, "trinta e catro")
      , (35, "trinta e cinco")
      , (36, "trinta e seis")
      , (37, "trinta e sete")
      , (38, "trinta e oito")
      , (39, "trinta e nove")
      , (40, "corenta")
      , (41, "corenta e un")
      , (42, "corenta e dous")
      , (43, "corenta e tres")
      , (44, "corenta e catro")
      , (45, "corenta e cinco")
      , (46, "corenta e seis")
      , (47, "corenta e sete")
      , (48, "corenta e oito")
      , (49, "corenta e nove")
      , (50, "cincuenta")
      , (51, "cincuenta e un")
      , (52, "cincuenta e dous")
      , (53, "cincuenta e tres")
      , (54, "cincuenta e catro")
      , (55, "cincuenta e cinco")
      , (56, "cincuenta e seis")
      , (57, "cincuenta e sete")
      , (58, "cincuenta e oito")
      , (59, "cincuenta e nove")
      , (60, "sesenta")
      , (61, "sesenta e un")
      , (62, "sesenta e dous")
      , (63, "sesenta e tres")
      , (64, "sesenta e catro")
      , (65, "sesenta e cinco")
      , (66, "sesenta e seis")
      , (67, "sesenta e sete")
      , (68, "sesenta e oito")
      , (69, "sesenta e nove")
      , (70, "setenta")
      , (71, "setenta e un")
      , (72, "setenta e dous")
      , (73, "setenta e tres")
      , (74, "setenta e catro")
      , (75, "setenta e cinco")
      , (76, "setenta e seis")
      , (77, "setenta e sete")
      , (78, "setenta e oito")
      , (79, "setenta e nove")
      , (80, "oitenta")
      , (81, "oitenta e un")
      , (82, "oitenta e dous")
      , (83, "oitenta e tres")
      , (84, "oitenta e catro")
      , (85, "oitenta e cinco")
      , (86, "oitenta e seis")
      , (87, "oitenta e sete")
      , (88, "oitenta e oito")
      , (89, "oitenta e nove")
      , (90, "noventa")
      , (91, "noventa e un")
      , (92, "noventa e dous")
      , (93, "noventa e tres")
      , (94, "noventa e catro")
      , (95, "noventa e cinco")
      , (96, "noventa e seis")
      , (97, "noventa e sete")
      , (98, "noventa e oito")
      , (99, "noventa e nove")
      , (100, "cen")
      , (101, "cento un")
      , (102, "cento dous")
      , (103, "cento tres")
      , (104, "cento catro")
      , (105, "cento cinco")
      , (106, "cento seis")
      , (107, "cento sete")
      , (108, "cento oito")
      , (109, "cento nove")
      , (110, "cento dez")
      , (123, "cento vinte e tres")
      , (200, "douscentos")
      , (300, "trescentos")
      , (321, "trescentos e vinte e un")
      , (400, "catrocentos")
      , (500, "cincocentos")
      , (600, "seiscentos")
      , (700, "setecentos")
      , (800, "oitocentos")
      , (900, "novecentos")
      , (909, "novecentos e nove")
      , (990, "novecentos e noventa")
      , (999, "novecentos e noventa e nove")
      , (1000, "mil")
      , (1001, "mil e un")
      , (1008, "mil e oito")
      , (1234, "mil douscentos e trinta e catro")
      , (2000, "dous mil")
      , (3000, "tres mil")
      , (4000, "catro mil")
      , (4321, "catro mil trescentos e vinte e un")
      , (5000, "cinco mil")
      , (6000, "seis mil")
      , (7000, "sete mil")
      , (8000, "oito mil")
      , (9000, "nove mil")
      , (10000, "dez mil")
      , (12345, "doce mil trescentos e corenta e cinco")
      , (20000, "vinte mil")
      , (30000, "trinta mil")
      , (40000, "corenta mil")
      , (50000, "cincuenta mil")
      , (54321, "cincuenta e catro mil trescentos e vinte e un")
      , (60000, "sesenta mil")
      , (70000, "setenta mil")
      , (80000, "oitenta mil")
      , (90000, "noventa mil")
      , (100000, "cen mil")
      , (123456, "cento vinte e tres mil catrocentos e cincuenta e seis")
      , (200000, "douscentos mil")
      , (300000, "trescentos mil")
      , (400000, "catrocentos mil")
      , (500000, "cincocentos mil")
      , (600000, "seiscentos mil")
      , (654321, "seiscentos e cincuenta e catro mil trescentos e vinte e un")
      , (700000, "setecentos mil")
      , (800000, "oitocentos mil")
      , (900000, "novecentos mil")
      , (1000000, "un milhom")
      , (1000001, "un milhom e un")
      , (1234567, "un milhom douscentos e trinta e catro mil cincocentos e sesenta e sete")
      , (2000000, "dous milhom")
      , (3000000, "tres milhom")
      , (4000000, "catro milhom")
      , (5000000, "cinco milhom")
      , (6000000, "seis milhom")
      , (7000000, "sete milhom")
      , (7654321, "sete milhom seiscentos e cincuenta e catro mil trescentos e vinte e un")
      , (8000000, "oito milhom")
      , (9000000, "nove milhom")
      , (1000000000, "un bilhom")
      , (1000000001, "un bilhom e un")
      , (2000000000, "dous bilhom")
      , (3000000000, "tres bilhom")
      , (4000000000, "catro bilhom")
      , (5000000000, "cinco bilhom")
      , (6000000000, "seis bilhom")
      , (7000000000, "sete bilhom")
      , (8000000000, "oito bilhom")
      , (9000000000, "nove bilhom")
      , (1000000000000, "un trilhom")
      , (1000000000001, "un trilhom e un")
      , (2000000000000, "dous trilhom")
      , (3000000000000, "tres trilhom")
      , (4000000000000, "catro trilhom")
      , (5000000000000, "cinco trilhom")
      , (6000000000000, "seis trilhom")
      , (7000000000000, "sete trilhom")
      , (8000000000000, "oito trilhom")
      , (9000000000000, "nove trilhom")
      ]
    )
  ]

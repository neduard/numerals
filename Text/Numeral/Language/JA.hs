{-# LANGUAGE NoImplicitPrelude, OverloadedStrings, UnicodeSyntax #-}

{-
http://en.wikipedia.org/wiki/Japanese_numerals
http://www.guidetojapanese.org/numbers.html
-}

module Text.Numeral.Language.JA
    ( rules

    , kanji
    , kanji_repr

    , daiji
    , daiji_repr

    , on'yomi
    , on'yomi_repr

    , preferred
    , preferred_repr
    ) where


--------------------------------------------------------------------------------
-- Imports
--------------------------------------------------------------------------------

-- from base:
import Data.Bool     ( Bool(False) )
import Data.Function ( const )
import Data.List     ( map )
import Data.String   ( IsString )
import Prelude       ( Num, fromInteger )

-- from base-unicode-symbols:
import Data.Monoid.Unicode ( (⊕) )
import Data.Ord.Unicode    ( (≥) )

-- from containers:
import qualified Data.IntMap as IM ( fromList, lookup )

-- from numerals:
import Text.Numeral
import Text.Numeral.Misc      ( dec )
import Text.Numeral.Pelletier ( scale )


--------------------------------------------------------------------------------
-- JA
--------------------------------------------------------------------------------

rules ∷ Rules
rules = Rules { rsFindRule = findRule rs
              , rsMulOne   = (≥ 10000)
              }
    where
      rs = map atom [1..9]
         ⊕ [ mul 10   10   10 RightAdd
           , mul 100  100  10 RightAdd
           , mul 1000 1000 10 RightAdd
           ]
         ⊕ scale RightAdd 4


--------------------------------------------------------------------------------
-- Kanji
--------------------------------------------------------------------------------

kanji ∷ (IsString s) ⇒ (Rules, Repr s)
kanji = (rules, kanji_repr)

kanji_repr ∷ (IsString s) ⇒ Repr s
kanji_repr =
    Repr { reprValue = \n → IM.lookup (fromInteger n) symMap
         , reprAdd  = \_ _ → ""
         , reprMul  = \_ _ → ""
         , reprZero = "零" -- alternatives:"ゼロ" or "マル"
         , reprNeg  = "マイナス"
         }
    where
      symMap = IM.fromList
               [ (1, const "一")
               , (2, const "二")
               , (3, const "三")
               , (4, const "四")
               , (5, const "五")
               , (6, const "六")
               , (7, const "七")
               , (8, const "八")
               , (9, const "九")
               , (10, const "十")
               , (100, const "百")
               , (dec 3, const "千")
               , (dec 4, const "万")
               , (dec 8, const "億")
               , (dec 12, const "兆")
               , (dec 16, const "京")
               , (dec 20, const "垓")
               , (dec 24, const "𥝱") -- or 秭?
               , (dec 28, const "穣")
               , (dec 32, const "溝")
               , (dec 36, const "澗")
               , (dec 40, const "正")
               , (dec 44, const "載")
               , (dec 48, const "極")
               , (dec 52, const "恒河沙")
               , (dec 56, const "阿僧祇")
               , (dec 60, const "那由他/那由多")
               , (dec 64, const "不可思議")
               , (dec 68, const "無量大数")
              ]


--------------------------------------------------------------------------------
-- Daiji
--------------------------------------------------------------------------------


daiji ∷ (IsString s) ⇒ (Rules, Repr s)
daiji = (rules, daiji_repr)

daiji_repr ∷ (IsString s) ⇒ Repr s
daiji_repr =
    Repr { reprValue = \n → IM.lookup (fromInteger n) symMap
         , reprAdd  = \_ _ → ""
         , reprMul  = \_ _ → ""
         , reprZero = "零"
         , reprNeg  = ""
         }
    where
      symMap = IM.fromList
               [ (1, const "壱")
               , (2, const "弐")
               , (3, const "参")
               , (4, const "四")
               , (5, const "五")
               , (6, const "六")
               , (7, const "七")
               , (8, const "八")
               , (9, const "九")
               , (10, const "拾")
               , (100, const "百")
               , (dec 3, const "千")
               , (dec 4, const "万")
               ]


--------------------------------------------------------------------------------
-- Generic reading
--------------------------------------------------------------------------------

generic_repr ∷ (IsString s) ⇒ s → s → Repr s
generic_repr four seven =
    Repr { reprValue = \n → IM.lookup (fromInteger n) symMap
         , reprAdd  = \_ _ → " "
         , reprMul  = \_ _ → "-"
         , reprZero = "rei"
         , reprNeg  = "mainasu"
         }
    where
      symMap = IM.fromList
               [ (1, const "ichi")
               , (2, const "ni")
               , (3, const "san")
               , (4, const four)
               , (5, const "go")
               , (6, const "roku")
               , (7, const seven)
               , (8, const "hachi")
               , (9, const "kyū")
               , (10, const "jū")
               , (100, \c → case c of
                              (RM 3 _) → "byaku" -- rendaku
                              _        → "hyaku"
                 )
               , (dec 3, const "sen")
               , (dec 4, const "man")
               , (dec 8, const "oku")
               , (dec 12, const "chō")
               , (dec 16, const "kei")
               , (dec 20, const "gai")
               , (dec 24, const "jo")
               , (dec 28, const "jō")
               , (dec 32, const "kō")
               , (dec 36, const "kan")
               , (dec 40, const "sei")
               , (dec 44, const "sai")
               , (dec 48, const "goku")
               , (dec 52, const "gōgasha")
               , (dec 56, const "asōgi")
               , (dec 60, const "nayuta")
               , (dec 64, const "fukashigi")
               , (dec 68, const "muryōtaisū")
               ]


--------------------------------------------------------------------------------
-- On'yomi
--------------------------------------------------------------------------------

on'yomi ∷ (IsString s) ⇒ (Rules, Repr s)
on'yomi = (rules, on'yomi_repr)

on'yomi_repr ∷ (IsString s) ⇒ Repr s
on'yomi_repr = generic_repr "shi" "shichi"


--------------------------------------------------------------------------------
-- Preferred reading
--------------------------------------------------------------------------------

preferred ∷ (IsString s) ⇒ (Rules, Repr s)
preferred = (rules, on'yomi_repr)

preferred_repr ∷ (IsString s) ⇒ Repr s
preferred_repr = generic_repr "yon" "nana"

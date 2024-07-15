\header {
  title = "Variatio 4."
  subtitle = "à 1 Clav."
  composer = "J. S. Bach"
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
    top-margin = 10
    left-margin = 15
    right-margin = 15
    bottom-margin = 10
}

\score{
\parallelMusic voiceA,voiceB,voiceC,voiceD {
\numericTimeSignature
\time 3/8
\repeat volta 2 {
  r8 b' g' d'' a' d'' g''4.~ 8 fis'' r 
  s4. s r8 a' c''~ 16 a' b'8 r
  r e'' g'' cis'' a''4 d''8 g''4~ 8 fis''
  e''~ 8 d'' c''~ 8 b'4 a'8 d'' cis'' ~ |

  s4. r8 d' fis' b  g' c'' b'16 g' a'8 r
  s4. r8 c' e' a d'4~ 8 g' r
  s4. r8 d' fis' r \shiftOn
  \once \override Beam.positions = #'(-3.5 . -3)
  cis'' e'' a'4
  g'8~ \shiftOff
  8 fis' a' d' e' g' cis'a' g'~ | 
  
  s4. s4. r8 b g d'4.
  r8 g b e a g~ 8 fis16 e fis8 g d r
  s4. s b8 \change Staff="up" \stemDown e' \stemUp \change Staff="down"
  r s cis' e' a4.~ 8 g b e fis e |

  g4. fis e r8 d fis
  b,4. c d r8 b, d
  \stemUp g, \stemDown g4~ 8 fis4~ 8 e g
  \once \override Beam.positions = #'(1.5 . -1)
  \stemUp cis \stemDown a cis'
  fis4. g8 g,4~ 8 fis, a, |
}
\alternative{
  { 
  8 d'' r |
  16 e' fis'8 r |
  d4 r8 |
  \once \override Beam.positions = #'(-1.5 . -3.5)
  \stemUp d,8. \stemDown d16 e fis |
  }
  {
  c''8 \repeatTie d'' r |
  g'16 \repeatTie e' fis'8 r |
  d4 r8 |
  \once \override Beam.positions = #'(-1.5 . -0.5)
  \stemUp d,8. \stemDown a16 b cis' |
  }
}
\repeat volta 2 {
    r8 fis'' d'' g'' b''4~ 8 a''16 g'' fis'' e'' dis'' e'' fis''4~
    8 e'' g'' cis'' dis'' e''~ 8 dis''16 cis'' b' a'
    g' fis' e'8 r r c'' e'' a' b' d'' g' c''4~ 8 d'' c''
    b'16 c'' d''4~ 16 c'' d'' c'' b' a' d''8 g' fis'~ |

    s4. r8 d'' \shiftOn b' g' a' c'' fis'4 r8
    r b' g' e' fis' g' fis'4. e'4 r8
    r a' c'' fis' g' b' e' a'4~ 8 fis' a'~
    8 g' b' e'4. a8 d' c'~ |

    s4. r8 d' \change Staff = "up" \stemDown g' \stemUp e'
    \change Staff = "down" c'4~ 8 b16 a g fis
    g a b4~ 8 a b c' b4~ 8 g b
    e a16 g fis g d'4. c'8 fis a d4.~
    4 \tieDown g8~ 8 a c' fis g a |

    d'4 c'8 b4 g8 c' fis a b dis b,
    e g e a fis e
    \once \override Beam.positions = #'(-0.5 . 1.5)
    a b \stemUp b, \stemDown e4 d8
    c4.~ 8 b,4~ 8 a, c fis, d, fis,
    g, b, g, c4.~ 8 b, d |
}
\alternative{
  {
  \tieUp 8 g' r|
  \tieDown 16 a b8 r |
  g4 r8 |
  \once \override Beam.positions = #'(-0.5 . -0.5)
  \stemUp g,8. \stemDown a16 b c' |
  }
  {
  \tieUp \repeatTie fis'8 g' r \bar "|." |
  \tieDown \repeatTie c'16 a b8 r \bar "|." |
  g4 r8 \bar "|." |
  g,4 s8 \bar "|." |
  }
}
}
\new StaffGroup <<
  \new Staff = "up"<<
  \key g \major \voiceA \\ \voiceB >>
  \new Staff = "down" { \clef bass <<
  \key g \major \voiceC \\ \voiceD>> }
>>
\layout{}
\midi {
\tempo 4 = 80
}
}
%{
round
%}

\paper {
  print-all-headers = ##t
}

melody = \relative c'' {
    \clef treble
	\key f \major
 \repeat volta 2 {  
g2 f g8 g g g d2
g4 g a a bes8 bes bes bes a2	
 }
\alternative {
  { d8 d d4 d d }
  { d8 d d d d4 d }
 }
}

verse = \lyricmode {
\repeat volta 2 { 
    Hey ho no -- bo -- dy at home
    meat nor drink nor 
    mo -- ney have I none }
\alternative {
  { fill the pot, Ea -- die }
  { still I will be mer -- ry }
  }

  }

\score{
  <<
    \new Voice = "one" {
      \melody
    }
    \new Lyrics \lyricsto "one" { \verse }
   >>
\header{
  title = "Hey, Ho, Nobody at Home"
  composer = "Ravenscroft, Pammelia 1609 85"
  poet = "Round for 5 voices"
}
  \layout { }
  \midi { }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.


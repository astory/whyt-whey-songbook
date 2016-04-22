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
g2.^"I" d4 f2 g d1
g4.^"II" a8 bes2 a4 d, g2 fis d
d'2.^"III" d4 c2 bes a1
 }
}

verse = \lyricmode {
\repeat volta 2 { 
    Joan, come kiss me now;
    once a -- gain, for my love, gen -- tle.
    Joan, come kiss me now. }
  }

\score{
  <<
    \new Voice = "one" {
      \melody
    }
    \new Lyrics \lyricsto "one" { \verse }
   >>
\header{
  title = "Joan, Come Kiss Me Now"
  composer = "Ravenscroft, Pammelia 1609 22, music c. 1570"
  poet = "Round for 3 voices"
}
  \layout { }
  \midi { }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.



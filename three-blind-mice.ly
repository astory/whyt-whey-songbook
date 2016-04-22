%{
round
%}

\paper {
  print-all-headers = ##t
}

melody = \relative c' {
    \clef treble
	\key f \major
  \time 4/2
 \repeat volta 2 {  
  f2^"I" e d1 f2 e d1
  d2^"II" g4 g a1 d,2 g4 g a2. a4
  d^"III" d cis cis d8 d d4 a a
  d d cis cis d d a2
 }
}

verse = \lyricmode {
\repeat volta 2 { 
    Three blind mice, threee blind mice
    Dame Ju -- li -- an, Dame Ju -- li -- an, the
    mil -- ler and his mer -- ry old wife, she
    scraped her tripe, lick thou the knife }
  }

\score{
  <<
    \new Voice = "one" {
      \melody
    }
    \new Lyrics \lyricsto "one" { \verse }
   >>
\header{
  title = "Three Blind Mice"
  composer = "Ravenscroft, Deuteromelia 1609 13"
  poet = "Round for 3 voices"
}
  \layout { }
  \midi { }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.




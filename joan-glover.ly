%{
round
%}

\paper {
  print-all-headers = ##t
}

melody = \relative c' {
    \clef treble
	\key g \major
	\time 3/4
 \repeat volta 2 {  
d4.^"I" d8 d4 g g g
a4.^"II" a8 a4 b b b 
d^"III" d d d4. c8 b4 
a^"IV" g fis g g r
 }
}

verse = \lyricmode {
\repeat volta 2 { 
    Go to Joan Glo -- ver and
    tell her I love her and
    at the mid of the moon
    I will come to her. }
  }

\score{
  <<
    \new Voice = "one" {
      \melody
    }
    \new Lyrics \lyricsto "one" { \verse }
   >>
\header{
  title = "Go to Joan Glover"
  composer = "Ravenscroft, Deuteromelia 1609 25"
  poet = "Round for 4 voices"
}
  \layout { }
  \midi { }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.




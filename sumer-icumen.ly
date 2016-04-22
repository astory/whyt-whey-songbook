%{
round
%}

\paper {
  print-all-headers = ##t
}

melody = \relative c'' {
    \clef treble
	\key c \major
	\time 6/8
 \repeat volta 2 {  
c4^"I" b8 a4 b8 c4 c8 b( a g )
e4^"II" e8 f4 d8 e4. r
c4^"III" e8 d4 f8 e4 e8 d4 c8
e4^"IV" g8 a4 a8 g4. r
c4 a2 c4. r g4 e8 f4 d8 e4 g8 f4 
e16( d) c4 e8 d4 b8 c4. r
e4 e8 d4 f8 g4 g8 a4 b8
c4 b8 a4 b8 c4. r
g4 a2 g4 f2
c4 e8 f4 d8 e4 f4. g8 e4 g8 d4 b8 c4
 }
}

verse = \lyricmode {
\repeat volta 2 { 
    Sum -- er is i -- cu -- men in, lhu -- de sing cu -- cu,
    Grow -- eth sed and blow -- eth med and springth the wo -- de nu
    Sing cu -- cu. A -- we blea -- teth af -- ter lomb,
    Lhouth af -- ter cal -- ve cu.
    Bul -- lock stert -- eth, bu -- cke vert -- eth,
    Mur -- ie sing cu -- cu.
	Cu -- cu, cu -- cu.
    Wel sing -- es thu cu -- cu, ne swik thu na -- ver nu. }
  }

\score{
  <<
    \new Voice = "one" {
      \melody
    }
    \new Lyrics \lyricsto "one" { \verse }
   >>
\header{
  title = "Sumer is Icumen In"
  composer = "John of Fornsete (attr.) (?-1239)"
  poet = "Round for 4 voices"
}
  \layout { }
  \midi { }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.





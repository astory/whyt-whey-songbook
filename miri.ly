%{
Miri It Is
Anon. c1225
round
summer's end
%}

\paper {
  print-all-headers = ##t
}

melody = \relative c' {
    \clef treble
	\time 6/8
	\key g \major
  	b'4. b4 b8
	e,4. fis4 fis8
	g4 g8 a4.
	fis8( d4) a'4.
	g4 g8 e4.
	d r
\break
 	b' b 
	e, fis 
	g a
	fis8( d4) a'4.
	g e
	d r
\break
	b'8( c4) b8( a g)
	a4. b
	g8( e4) e4.
	d r
\break
	b'8( c4) b8( a g)
	a4. b
	g8( e4) e4.
	d r
	g fis8 a4
	g8 e4 e8( c4)
	d2.
	r
}
verse = \lyricmode {
    Mi -- ri it is whi -- le su -- mer i -- last with fu -- ghe -- les song;
	Oc nu ne -- cheth win -- des blast and we -- der strong.
	Ey -- ey! what this niht is long! And ich, wid wel
	mi -- chel wrong, so -- regh and mur -- ne and fast.
  }

\score{
  <<
    \new Voice = "one" {
      \melody
    }
    \new Lyrics \lyricsto "one" { \verse }
   >>
\header{
  title = "Miri It Is"
  composer = "Anon, c1225"
  poet = "Round"
}
  \layout { }
  \midi { }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

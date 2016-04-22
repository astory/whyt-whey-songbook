%{
grant us thy peace
%}
\paper {
  print-all-headers = ##t
}

\score {

<<
	\relative c' {
	\time 3/4
	\key f \major
    \set Staff.instrumentName = #"I"
    f8( c) a'2 | g8( c,) bes'2 | a4( g) f | f e2 | 
	d'4( c8 bes) a( g) | c4.( bes8) a4 | a8( g f4 e) | f2. | 
  }
 \addlyrics {
    Do -- na no -- bis pa -- cem, pa -- cem. Do -- na no -- bis pa -- cem.
  }
\relative c' {
	\time 3/4
	\key f \major
    \set Staff.instrumentName = #"II"
	c' | c | c4( bes) a | a g2 | 
	d'4 d2 | c4 c2 | c8( bes a4 g) | f2. | \break
  }
 \addlyrics {
	Do -- na no -- bis pa -- cem, Do -- na no -- bis pa -- cem.
  }
\relative c' {
	\time 3/4
	\key f \major
    \set Staff.instrumentName = #"III"
	f | e | f4.( g8) a( bes) | c4 c,2 | 
	bes'4 bes2 | a4 a2 | e8( g c4 c,) | f2.
  }
 \addlyrics {
	Do -- na no -- bis pa -- cem, Do -- na no -- bis pa -- cem.
  }
>>
\header{
  title = "Dona Nobis Pacem"
  composer = "Palestrina, 1526-1594"
  poet = "Round for 3 voices"
}
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

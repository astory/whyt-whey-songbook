%{
celebrates the thwarting of the Gunpowder plot, 1605
%}

\paper {
  print-all-headers = ##t
}


motif = 
\relative c' {
	d2^"I" e4 fis g4. g8 fis4^"II" fis 
\repeat volta 2 { e2 d 
\break
	r4 a' b8 b g4 d'2 d4 c b4. b8 a2
\break
	r4 e fis8 fis d4 a'2 a4 g fis4. fis8 e2
\break
	d2 e4 fis }
\alternative {
  { g4. g8 fis4 fis }
  { g4. g8 fis2 }
 }
}

\score{
<<
	\relative c' {
	\time 4/4
	\key d \major
\motif
  }
 \addlyrics {
Non no -- bis do -- mi -- ne, non 
\repeat volta 2 { no -- bis,
Sed no -- mi -- ni tu -- o da glo -- ri -- am,
Sed no -- mi -- ni tu -- o da glo -- ri -- am,
Non no -- bis }
\alternative {
  { do -- mi -- ne, non }
  { Do -- mi -- ne }
  }
}
>>
\header{
  title = "Non nobis Domine"
  composer = "Anonymous, circa 1620"
  poet = "Canon"
}
  \layout { }
  \midi { }
}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.


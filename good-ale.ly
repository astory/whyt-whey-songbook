%{
feast
%}


\paper {
  print-all-headers = ##t
}

myVerse = 
\relative c'' {
	\time 6/8
	\key f \major
	g4 g8 a4 bes8
	c4( bes8) a4 g8
	bes4 a8 f4 g8
	a2 r8 d,
	f4 f8 g4 g8
	a4. f4 f8
	g( bes a) g4 f8
	g2 r8 d' 
 }

verseOneLyrics = \lyricmode {
  \set stanza = #"1. "
Bring us in no brown bread, for that is made of bran,
Nor bring us in no white bread, for therein is no grain, but...
  }

verseTwoLyrics = \lyricmode {
  \set stanza = #"2. "
Bring us in no beef, for there -- in is man -- y bones,
But bring us in good ale, for that goeth down at once!
  }

myChorus = 
\relative c'' {
	c4 bes8 a4 g8
	f4 e8 d4 d8
	f4 g8 f e4
	d2 r8 d( 
	f4) f8 g4 g8 
	a4 a8 f4.
	g8( bes) a g4 f8
	g2.
 }

chorusLyrics = \lyricmode {
	Bring us in good ale, good ale,
	and bring us in good ale.  For our bless -- ed La -- dy's sake, 
	bring us in good ale.
  }

\score{ 
<<
    \new Voice = "melody" { \myVerse \break \myChorus } 
    \new Lyrics \lyricsto "melody" { \verseOneLyrics \chorusLyrics } 
    \new Lyrics \lyricsto "melody" {  \verseTwoLyrics } 
>>

  \layout { }
\header{
  title = "Bring Us in Good Ale"
  composer = "c1460"
}
}

\markup { 
  \hspace #8
  \larger
  \column{
  \vspace #2
  \line{ 3. Bring us in no bacon, for that is passing fat, }
  \line { but bring us in good ale and give us enough of that! }
  \vspace #0.5
  \line{ 4. Bring us in no mutton, for that is passing lean, }
  \line { nor bring us in no tripes, for they be seldom clean. but... }
  \vspace #0.5
  \line{ 5. Bring us in no eggs, for there are many shells, }
  \line { but bring us in good ale, and give us nothing else! }
  \vspace #0.5
  \line{ 6. Bring us in no butter, for therein are many hairs, }
  \line { nor bring us in no pig's flesh, for that will make us bears, but... }
  \vspace #0.5
  \line{ 7. Bring us in no puddings, for therein is all God's good, }
  \line { nor bring us in no venison, for that is not for our blood, but... }
  \vspace #0.5
  \line{ 8. Bring us in no capon's flesh, for that is often dear, }
  \line { nor bring us in no duck's flesh, for they wallow in the mere, but... }
  }
}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

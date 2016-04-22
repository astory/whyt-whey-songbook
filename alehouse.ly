%{
round
%}

\paper {
  print-all-headers = ##t
}

melody = \relative c' {
    \clef treble
	\key d \major
	\time 4/4
 \repeat volta 2 {  
a^"I" a a a d d d d 
e fis g a d,2 r4 d
a'^"II" a a a b a fis d
g a b cis d cis8 b a4 fis
a^"III" g8 fis e4 cis
fis fis8 e d4 
d' cis8 b a4 
g8( b) a g fis1
 }
}

verse = \lyricmode {
\repeat volta 2 { 
    He that will an ale -- house keep must 
    have three things in store; a
    cham -- ber and a fea -- ther bed, a
    chim -- ney and a 
    hey non -- ny non -- ny
    hey non -- ny non -- ny
    hey non -- ny no,
    hey non -- ny no,
    hey non -- ny no
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
  title = "He That Will an Ale-house Keep"
  composer = "Ravenscroft, Melismata 1611 15"
  poet = "Round for 3 voices"
}
  \layout { }
  \midi { }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.





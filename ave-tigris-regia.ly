\version "2.18.0"

\paper {
  print-all-headers = ##t
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 3/4
  
  d4 a'2 g4 a2 b4 a g a2.
  d,4 a'2 g4 a2 b4 a g a2.
  d,4 a'2 g4 a2 b4 a2 g4 f2
  e4 g2 f4 g f e e2 d2.
}

refrain = \relative c' {
  d4 f2 e4 d( c) d d( e) g2.
  g4 g f e( d) e f f( e) d2.
}

chorus = \lyricmode {
  A -- ve ti -- gris re -- gi -- a
  pe -- ta -- mus pro vic -- to -- ri -- a!
}

stanzaOne = { 
 \set stanza = #"1. "
 \lyricmode {
  Ty -- ger's ar -- my, on -- to the field
  to con -- tend with sw -- ord and shield
  with the foe they quick -- ly de -- al:
  Ty -- ger's ar -- my shall ne -- ver yield!
 }
}

stanzaTwo = { 
 \set stanza = #"2. "
 \lyricmode {
  Ty -- ger's ar -- chers, pr -- o -- wess show;
  Take the field with sha -- ft and bow.
  Arr -- ows fall like i -- ron sno -- w;
  Swift and s -- i -- lent fall the foe.
 }
}

stanzaThree = { 
 \set stanza = #"3. "
 \lyricmode {
  Fe -- line grace and T -- y -- ger's sense
  Shar -- pened blade and m -- us -- cles tense;
  Ex -- e -- cute the art of fence For
  ho -- nor l -- et the duel comm -- ence!
 }
}

stanzaFour = { 
 \set stanza = #"4. "
 \lyricmode {
  Va -- lor, Ho -- nor, Co -- ur -- te -- sy
  Raise the arm of Ch -- i -- val -- ry
  Dan -- ger -- ous in en -- mi -- t -- y
  Fol -- low_the Ty -- ger to vic -- to -- ry!
 }
}

\score{
  \header {
    title = "Ave tigris regia"
    poet = "Judith FitzHenry, Fiana of Clare & Alexandre d'Avigne"
    composer =  \markup { "anon" \small "13C" }
  }

  <<
    \new Voice = "one" {
      \melody
      \break
      \refrain
    }
    \new Lyrics \lyricsto "one" { \stanzaOne \chorus }
    \new Lyrics \lyricsto "one" { \stanzaTwo }
    \new Lyrics \lyricsto "one" { \stanzaThree }
    \new Lyrics \lyricsto "one" { \stanzaFour }
   >>
  \layout { }
  \midi { }
}


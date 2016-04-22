%{
Gaudete Ostgardr.  music traditional, lyrics by Lady Melanie de la Tour
%}


\version "2.12.3"

\paper {
  print-all-headers = ##t
}

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  
  <e a>4 <e a> <d g> <e a> <g c> <g b> <e a>2 <e a>4 <d f> e <d f> d2 d
  <a d>4 <a d> <c f> <a d> <c f> <e g> <e a>2 <g c>4 <e a> <g b> <g c> <d a'>2 <e a>
}

refrain = \relative c' \repeat volta 2 {  
  r2 <e a> <e a> <e g> <e a>4 <g b> <g c>2 <g c>4 <g b>2 <e a>4 <e g>2 <e g>
  <e g> <e a> <g b>2. <e a>4 <e g>2 <c a'>4 <g' b>~ <g b> <d a'> <e g>2 <e a> r2
}

chorus = \lyricmode {
  Gau -- de -- te, gau -- de -- te, O gens Ost -- gar -- dri.
  Glo -- ri -- ae Pro -- vin -- ci -- ae, gau -- de -- te.
}

stanzaOne = { 
 \set stanza = #"1. "
 \lyricmode {
  Comes the time to sing the praise
  of our glo -- rious Ost -- gardr.
  Cant -- i -- cles, ron -- deaus and lays
  e -- cho through the van -- guard.
 }
}

stanzaTwo = { 
 \set stanza = #"2. "
 \lyricmode {
  Pui -- ssant is our Vi -- ce -- roy,
  Gol -- den is our Vice -- reine.
  All pro -- vin -- cials shout for joy,
  Ri -- ver -- dale to o -- cean.
 }
}

stanzaThree = { 
 \set stanza = #"3. "
 \lyricmode {
  Might -- y are our no -- ble knights
  and their loy -- al squi -- res.
  Proud to wear the green and whites,
  praise their deeds with choi -- rs.
 }
}

stanzaFour = { 
 \set stanza = #"4. "
 \lyricmode {
  White -- scarved dons and their ca -- dets,
  Green and whites with swa -- gger.
  Corps en corps and tetes a tetes,
  Ra -- pi -- er and da -- gger.
 }
}

stanzaFive = { 
 \set stanza = #"5. "
 \lyricmode {
  Bless -- ed are the cheese -- ma -- kers,
  bless -- ed saus -- age eat -- ers.
  Bless -- ed are the noise -- ma -- kers,
  strike the drums with bea -- ters!
 }
}

\score{
  <<
    \new Voice = "one" {
      \melody 
      \break 
      \refrain
    }
    \new Lyrics \lyricsto "one" { \stanzaOne \chorus }
    \new Lyrics \lyricsto "one" \stanzaTwo
    \new Lyrics \lyricsto "one" \stanzaThree
    \new Lyrics \lyricsto "one" \stanzaFour
    \new Lyrics \lyricsto "one" \stanzaFive
   >>
  \layout { }
  \midi { }
\header{
  title = "Gaudete Ostgardr"
  poet = "Lady Melanie de la Tour"
  composer =  \markup { "Piae Cantiones" \small "1582" }
}
}

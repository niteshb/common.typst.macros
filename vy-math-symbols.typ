/*
  Contains macros for Mathmatical Symbols
*/
#import "vy-math-symbols-set-numbers.typ": *

// 
#let vy-set1(set-name) = {
  [$SS_(#set-name)$]
}

#let vy-set2(set-name) = {
  [$S_A$]
}

#let vy-set3(set-name) = {
  [$#set-name$]
}

#let vy-set = vy-set1

// For highligthing a term getting defined
#let vy-define(content) = {
  text(
    content,
    fill: color.hsl(300deg, 100%, 30%),
    weight: 800,
  )
}

// Highlighting the underbrace text and brace
// Presently only text is highlighted
#let vy-underbrace(content, label) = {
  $underbrace(content, text(label, fill: #color.hsl(0deg,100%,50%)))$
}

// Symbols for Compositions & Partitions
#let vy-composition(n) = $attach(bb(s), tl: #n, bl: cal(C))$
#let vy-composition-set(n) = $attach(bb(S), tl: #n, bl: cal(C))$
#let vy-composition-2(n, k, is-set: false) = {
  let chink = $cal(C),#k$
  let main = [s]
  if(is-set == true) {
    main = [S]
  }
  $attach(bb(#main), tl: #n, bl: chink)$
}
#let vy-composition-set-2(n, k) = vy-composition-2(n, k, is-set: true)

// Partitions
#let vy-partition(n) = $attach(bb(s), tl: #n, bl: cal(P))$
#let vy-partition-set(n) = $attach(bb(S), tl: #n, bl: cal(P))$
#let vy-partition-2(n, k, is-set: false) = {
  let chink = $cal(P),#k$
  let main = [s]
  if(is-set == true) {
    main = [S]
  }
  $attach(bb(#main), tl: #n, bl: chink)$
}
#let vy-partition-set-2(n, k) = vy-partition-2(n, k, is-set: true)

// Symbol for nCr: Number of Combinations of n things, r taken at a time
#let vy-C(n, r) = {
  $attach(C, tl: #n, br: #r)$
}

#let vy-derangement(n) = {
  $#n¡$
}

// Operators
#let vy-operator-approx-eq = sym.tilde.equiv
#let vy-operator-set-minus = $without$
#let vy-operator-is-defined-as = sym.equiv
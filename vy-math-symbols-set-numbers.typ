/*
  Contains macros for Mathmatical Symbols for Major Sets of Numbers and their variants
*/
#let vy-set-n-natural = $bb(N)$
#let vy-set-n-whole = $bb(W)$
#let vy-set-n-integer = $bb(Z)$
#let vy-set-n-rational = $bb(Q)$
#let vy-set-n-real = $bb(R)$
#let vy-set-n-irrational = $bb(T)$
#let vy-set-n-complex = $bb(C)$
#let vy-set-n-imaginary = $bb(I)$

#let vy-set-n-modulo(vy-set-n, divisor, remainder) = $attach(limits(#vy-set-n), bl: #divisor, tl: #remainder)$

#let vy-set-n-natural-modulo(num, r) = vy-set-n-modulo(vy-set-n-natural, num, r)
#let vy-set-n-natural-even = vy-set-n-natural-modulo($2$, $0$)
#let vy-set-n-natural-odd  = vy-set-n-natural-modulo($2$, $1$)

#let vy-set-n-whole-modulo(num, r) = vy-set-n-modulo(vy-set-n-whole, num, r)
#let vy-set-n-whole-even = vy-set-n-whole-modulo($2$, $0$)
#let vy-set-n-whole-odd  = vy-set-n-whole-modulo($2$, $1$)

#let vy-set-n-integer-modulo(num, r) = vy-set-n-modulo(vy-set-n-integer, num, r)
#let vy-set-n-integer-even = vy-set-n-integer-modulo($2$, $0$)
#let vy-set-n-integer-odd  = vy-set-n-integer-modulo($2$, $1$)

#let vy-zpm-label-txt = "zpm"
#let vy-zpm-label-txt-math = ($z$, $p$, $m$)
#let vy-zpm-label-math = ($0$, $+$, $-$)

#let vy-set-n-zpm-top-right(letter, zero: true, plus: false, minus: false) = {
  let temp = ""
  let label = vy-zpm-label-math
  if(zero) {temp += text(label.at(0), baseline: -0.13em)}
  if(plus) {temp += text(label.at(1), baseline: -0.2em)}
  if(minus) {temp += text(label.at(2), baseline: -0.2em)}
  $attach(#letter, t: temp)$
}

#let vy-set-n-zpm-bottom(letter, zero: true, plus: false, minus: false) = {
  let temp = ""
  let label = vy-zpm-label-math
  if(zero) { temp += text(label.at(0)) }
  if(plus) { temp += text(label.at(1)) }
  if(minus) { temp += text(label.at(2)) }
  $attach(limits(#letter), b: #text(
    temp,
    //weight: 900, 
    fill: color.hsl(288deg, 100%, 50%),
    baseline: -.75em, 
    size: 0.6em,
  ))$
}

#let vy-set-n-zpm = vy-set-n-zpm-top-right

#let vy-set-n-rational-zm = vy-set-n-zpm(vy-set-n-rational, minus: true)
#let vy-set-n-rational-zp = vy-set-n-zpm(vy-set-n-rational, plus: true)
#let vy-set-n-rational-m = vy-set-n-zpm(vy-set-n-rational, zero: false, minus: true)
#let vy-set-n-rational-p = vy-set-n-zpm(vy-set-n-rational, zero: false, plus: true)

#let vy-set-n-integer-zm = vy-set-n-zpm(vy-set-n-integer, minus: true)
#let vy-set-n-integer-zp = vy-set-n-zpm(vy-set-n-integer, plus: true)
#let vy-set-n-integer-m = vy-set-n-zpm(vy-set-n-integer, zero: false, minus: true)
#let vy-set-n-integer-p = vy-set-n-zpm(vy-set-n-integer, zero: false, plus: true)

#let vy-set-n-real-zm = vy-set-n-zpm(vy-set-n-real, minus: true)
#let vy-set-n-real-zp = vy-set-n-zpm(vy-set-n-real, plus: true)
#let vy-set-n-real-m = vy-set-n-zpm(vy-set-n-real, zero: false, minus: true)
#let vy-set-n-real-p = vy-set-n-zpm(vy-set-n-real, zero: false, plus: true)

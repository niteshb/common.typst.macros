

#let vy-num-group-digits-separator = state("vy-num-group-digits-separator", [,])

#let vy-num-group-digits(n,
  separator: context vy-num-group-digits-separator.get(),
  mode: "international",
) = {
  let i-n = decimal(n)
  let group-size = 3
  let base = 1000
  let rem = calc.rem(i-n, base)
  i-n = int(i-n / base)
  let output = [#rem]
  if(mode == "international") {
    base = 1000
  } else if (mode == "indian") {
    base = 100
  }
  while(i-n > 0) {
    rem = calc.rem(i-n, base)
    i-n = int(i-n / base)
    output = [#rem#separator] + output
  }
  [#output]
}


#let vy-math-conditional(content, fill: color.hsl(300deg, 100%, 50%)) = {
  text(" " + content, fill: fill, size: 26pt)
}

#let vy-math-annotate(content) = {
  text(
    [$quad$ #content], 
    size: 24pt,
    fill: color.hsl(80deg, 40%, 40%),
    style: "italic",
    baseline: -0.1em,
  )
}


# Some graphics and things

I wanted to get some practice using haskell libraries (which can be somewhat confusing to read through), and a recent blog post inspired me to try my hand at fractal drawings. So far, only the Koch snowflake and Sierpinski triangle have been completed, but I plan to add some more as well as more interesting colouring and features.

## Installation

Hopefully you have stack installed. 

```
stack build
```

Then to draw some stuff

```
stack exec FractalDrawings-exe -- -w 800 -h 600 -o "koch_snowflake.svg" -S Koch 5 blue
```

The -w and -h flags are for width and height, -o is the output file, and -S can is to choose between `Sierpinski` and `Koch`. The final integer and colour are required (for now) and the integer specifies the number of iterations that will be generated. I suggest starting small however, as it takes extremely long for values much greater than 7 or 8.

#set page(width: auto, height: auto)
#import "/src/cetz.typ": *
#import "/src/lib.typ": *
#import "/tests/helper.typ": *

/* Test linearization */
#test-case({
  import draw: *

  plot.plot(size: (6, 4),
    {
       plot.add(domain: (0, 360), x=>calc.sin(x * 1deg),
         line: "raw", style: (stroke: 3pt))
       plot.add(domain: (0, 360), x=>calc.sin(x * 1deg),
         line: "linear")
    })
})

/* Test linearization for vertical and horizontal lines */
#test-case({
  import draw: *

  plot.plot(size: (6, 4),
    x-min: -1, x-max: 2, y-min: -1, y-max: 2,
    {
       plot.add(((0,0), (1,0), (1,0.1), (1,0.2), (1,0.5), (1,1), (0,1), (0,0)))
    })
})

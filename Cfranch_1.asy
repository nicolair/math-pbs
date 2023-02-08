settings.outformat = "pdf";
size(6cm);

import graph;

pen CR1 = deepgreen;
pen CR2 = red;
pen CR3 = blue;

real f(real t)
{
  real u = t - 1/2;
  if( u != 0){
    return abs(u)*sin(1/u);
  } else {
    return 0;
  }
}

real a = 0;
real b = 0.8;

draw(graph(f, a, b), CR1);

axes(min=(-0.1,-0.2), max=(0.9,0.5), arrow=Arrow);

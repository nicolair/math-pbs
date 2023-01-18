settings.outformat = "pdf";
size(6cm);

import graph;

pen CR1 = deepgreen;
pen CR2 = red;
pen CR3 = blue;

real f0(real t)
{
  if(abs(t-1) <= 1){
    return 1 - abs(t-1);
  } else {
    return 0;
  }
}

real f1(real t)
{
  if(abs(t-2) <= 1){
    return 1 - abs(t-2);
  } else {
    return 0;
  }
}

real f2(real t)
{
  if(abs(t-3) <= 1){
    return 1 - abs(t-3);
  } else {
    return 0;
  }
}

real f3(real t)
{
  if(abs(t-4) <= 1){
    return 1 - abs(t-4);
  } else {
    return 0;
  }
}

real a = -1;
real b = 5;

draw(graph(f0,a,b));
draw(graph(f1,a,b), CR1);
draw(graph(f2,a,b), CR2);
draw(graph(f3,a,b), CR3);

axes(min=(-1,-1), max=(7,2), arrow=Arrow);

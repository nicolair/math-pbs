size(8cm);

import graph;

real f( real x) {
  return x^3 -(3/4)*x;
}

xaxis(-1,1,Arrow);
yaxis(-1,1,Ticks);

draw(graph(f,-1, 1), deepgreen+2);

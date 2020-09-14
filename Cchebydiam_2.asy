size(8cm);

import graph;

real f( real x) {
  return x^2 - 1/2;
}
xaxis(-1,1,Arrow);
yaxis(-1,1,Ticks);


draw(graph(f,-1, 1), deepgreen+2);

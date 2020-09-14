size(10cm);

import graph;
xaxis(-1.1,1.1,Arrow);
yaxis(-1,1,Ticks);

real f( real x) {
  return x;
}
draw(graph(f,-1, 1), heavyred+2);

real f( real x) {
  return x^2 - 1/2;
}
draw(graph(f,-1, 1), heavygreen+2);

real f( real x) {
  return x^3 - (3/4)*x;
}
draw(graph(f,-1, 1), heavyblue+2);

real f( real x) {
  return x^4 -x^2 +1/8;
}
draw(graph(f,-1, 1), heavycyan+2);

settings.outformat = "pdf";
import graph;
size(6cm);

real phi(real t){
  return t^3/3 -1.1*t^2 + 1.05*t;
}

real a = 0;
real b = 2;

xaxis(xmin=a-0.2, xmax=b+0.2, Arrow);
yaxis(ymin=-0.2, ymax=phi(2)+0.2, Arrow);
draw((0.7,0)--(0.7,phi(0.7)));
draw(graph(phi,a,b),deepgreen+1);


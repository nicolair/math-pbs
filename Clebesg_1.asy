settings.outformat = "pdf";
import graph;
size(6cm);

real phi(real t){
  return -t^4 + t^2;
}

real a = -1;
real b = 1;

xaxis(xmin=a-0.2, xmax=b+0.2, Arrow);
yaxis(ymin=-0.2,ymax=0.5, Arrow);
//axes((-1.1,0),(1.2,0.5),(Ticks,Ticks));
draw(graph(phi,a,b),deepgreen+1);


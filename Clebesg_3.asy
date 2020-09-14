settings.outformat = "pdf";
import graph;
size(6cm);

real phi(real t){
  return 1+(t-0.4)^2;
}

real a = 0;
real b = 1;

xaxis(xmin=a-0.2, xmax=b+0.2, axis=YEquals(1),arrow=Arrow);
yaxis(ymin=1, ymax=phi(b)+0.2, arrow=Arrow);

draw(graph(phi,a,b),deepgreen+1);


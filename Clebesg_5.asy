settings.outformat = "pdf";
import graph;
size(6cm);


real a = 0;
real b = 4*pi;

xaxis(xmin=a-0.2, xmax=b+0.2,arrow=Arrow);
yaxis(ymin=-1.2, ymax=1.2, arrow=Arrow);

draw(graph(cos,0,4*pi),deepgreen+1);


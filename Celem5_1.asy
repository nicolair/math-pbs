settings.outformat = "pdf";
import graph;
size(7cm);

pen G = deepgreen+1;
real f(real m) {return m/(m+3);}

axes((-10,-7),(7,7),Arrow);
draw((-10,1)--(7,1));
draw((-3,-7)--(-3,7), dashed);

draw(graph(f,-10,-3.5),G);
draw(graph(f,-2.62,7),G);

label("$1$",(0,1),NE);
label("$-3$",(-3,0),SW);
import graph;

settings.outformat = "pdf";
size(6cm);

pen GCr1 = deepgreen +1;


axes((-10,-3),(10,4),Arrow);

label("$\frac{\pi}{2}$",(0,pi/2),NW);

label("$\frac{\pi}{2}$",(pi/2,0),S);

label("$-\pi$",(-pi,0),N);

draw((-pi,0)--(-pi,-pi/2),dotted);

draw((-3*pi,-pi/2)--(-2*pi,pi/2)--(-pi,-pi/2)--(0,pi/2)--(pi,-pi/2)--(2*pi,pi/2)--(3*pi,-pi/2),GCr1);

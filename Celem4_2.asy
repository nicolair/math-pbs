import graph;

settings.outformat = "pdf";
size(6cm);

pen GCr1 = deepgreen +1;


axes((-10,-0.5),(10,5),Arrow);

label("$\pi$",(0,pi),E);
draw((-pi/2,pi)--(0/2,pi),dotted);

label("$\frac{\pi}{2}$",(pi/2,0),S);

label("$-\frac{\pi}{2}$",(-pi/2,0),S);

draw((-pi/2,0)--(-pi/2,pi),dotted);

draw((-2*pi-pi/2,pi)--(-pi-pi/2,0)--(-pi/2,pi)--(pi/2,0)--(pi + pi/2,pi)--(2*pi + pi/2,0),GCr1);

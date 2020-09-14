settings.outformat = "pdf";
//import graph;
size(4cm);

pen Vert = deepgreen +2;

filldraw((-1,-1)--(1,-1)--(1,1)--(-1,1)--cycle,Vert);

draw((-1.6,0)--(1.6,0),Arrow);
draw((0,-1.6)--(0,1.6),Arrow);

label("$x_1$",(1.5,0),S);
label("$x_2$",(0,1.5),W);

label("1",(1,0),SE);
label("1",(0,1),NW);
label("-1",(-1,0),SW);
label("-1",(0,-1),SE);

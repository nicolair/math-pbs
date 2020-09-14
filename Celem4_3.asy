import graph;

settings.outformat = "pdf";
size(6cm);

pen GCr1 = deepgreen +1;


axes((-1.5,-0.5),(1.5,1.5),Arrow);

label("$-1$",(-1,0),S);
label("$1$",(1,0),S);
label("$1$",(0,1),NE);

draw(arc((0,0),1.,0,180), GCr1);
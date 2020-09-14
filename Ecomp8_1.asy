settings.outformat = "pdf";
size(10cm,0);

pen CrayonVert = deepgreen +1;
pen CrayonRouge = red +1;
pen GrosCrayonRouge = red +5;


pair Z = (1,0.5);
pair A = (2,0);
draw((-3,0)--(3,0), CrayonVert);

dot((0,0),CrayonVert + 5);
dot(-A,CrayonVert + 5);
dot(A,CrayonVert + 5);
label("$O$",(0,0),NE);
label("$A'$",-A,NE);
label("$A$",A,NE);

path C = E..N..W..S..cycle;

label("$Z$",Z,NE);
dot(Z,CrayonRouge +5);
C = scale(abs(Z))*C;
draw((2*A-Z)--(3*Z-2*A));

draw(C,CrayonRouge);
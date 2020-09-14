settings.outformat = "pdf";
size(10cm,0);


pen CrayonVert = deepgreen +1;
pen CrayonRouge = red +1;
pen GrosCrayonRouge = red +5;

pair O = (0,0);
pair A = (2,0);
pair Z = (1,0.5);
real R = abs(Z);
pair Zb = reflect(A,-A)*Z;

pair M ;
M = (Z-A)/(Zb-A);
M = Zb * M ;

draw((-3,0)--(3,0), CrayonVert);

dot(O,CrayonVert + 5);
dot(-A,CrayonVert + 5);
dot(A,CrayonVert + 5);
label("$O$",O,2*N);
label("$A'$",-A,NE);
label("$A$",A,NE);

path C = E..N..W..S..cycle;

label("$Z$",Z,2*E+N);
dot(Z,CrayonRouge +5);
C = scale(R)*C;
draw((2*A-Z)--(3*Z-2*A));

draw(C,CrayonRouge);

dot(M,CrayonRouge +5);
label("$M$",M,SE);

draw(O--Z);
draw(O--M);
draw(O--2*(Z+M));
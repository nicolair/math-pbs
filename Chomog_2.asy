settings.outformat = "pdf";
size(5cm);


pen CrayonVert = deepgreen +1;
pen CrayonRouge = red +1;
pen GrosCrayonRouge = red +5;

draw((-1,0)--(4,0),Arrow);
draw((0,-2.5)--(0,5),Arrow);

path C = E..N..W..S..cycle ;
C = scale(1.5)*C ;
C = shift(1,5/2)*C ;
draw(C,CrayonVert);

pair z1 = (1,2);
pair z2 = (1,-2);

dot(z1,GrosCrayonRouge);
label("$Z_1$",z1,E);
dot(z2,GrosCrayonRouge);
label("$Z_2$",z2,E);
draw((1,-2.5)--(1,4.5),dashed);

pair z = (1,1);
dot(z,GrosCrayonRouge);
label("$Z$",z,SE);

pair fz = (-1/5,8/5);
dot(fz,GrosCrayonRouge);
label("$f(Z)$",fz,2*W);

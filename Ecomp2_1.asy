settings.outformat = "pdf";
import graph;
size(7cm);

pen Vert = deepgreen+3;
pen vert = deepgreen+1;
pen Rouge = red+3;
pen rouge = red+1;

pair O = (0,0);
pair A = (1,0);
pair B = (-0.5,sqrt(3)/2);
pair C = (-0.5,-sqrt(3)/2);
pair M = (1.1,0.5);

pair M1 = reflect(O,A)*M;
pair M2 = reflect(O,B)*M;
pair M3 = reflect(O,C)*M;
pair M4 = reflect(B,C)*M;

draw(A--B--C--A,vert);

real c1 = -1.5;
real c2 = 1.2;
draw(c1*A--c2*A,dashed);
draw(c1*B--c2*B,dashed);
draw(c1*C--c2*C,dashed);
draw((-0.5,-1.5)--(-0.5,1.5),dashed);

dot(O,Vert);
dot(A,Vert);
dot(B,Vert);
dot(C,Vert);

dot(M,Rouge);
dot(M1,Rouge);
dot(M2,Rouge);
dot(M3,Rouge);
dot(M4,Rouge);


label("$O$",O+(0,.1),N);
label("$A$",A,S);
label("$B$",B,W);
label("$C$",C,SE);

label("$M$",M,E);
label("$M_1$",M1,SE);
label("$M_2$",M2,SW);
label("$M_3$",M3,N);
label("$M_4$",M4,W);

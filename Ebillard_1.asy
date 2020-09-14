settings.outformat = "pdf";
import graph;
size(6cm);

pen V = deepgreen+2;
pen R = red+1;

pair O = (0,0);
path U = circle(O,1);
draw(U, V);

real alph = 1;
real beta = 2;
pair A = (cos(alph),sin(alph));
pair B = (cos(beta),sin(beta));
draw( A--B, R, MidArrow );
pair C = reflect(B,O)*A;
draw(B--C, R, MidArrow);
draw(O--B, dotted+1);

dot(A,R+5);
label("$M_{k-1}$",A,NE);
dot(B,R+5);
label("$M_{k}$",B,NW);
dot(C,R+5);
label("$M_{k+1}$",C,W);

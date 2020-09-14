settings.outformat = "pdf";
import graph;
size(6cm);

pen V = deepgreen+2;
pen R = red+1;

xaxis(0,Arrow);
yaxis(0,Arrow);

real ch(real t) {return (exp(t) + exp(-t))/2 -1;}
real u = 1.3;
pair Z = (u, ch(u));
pair x = (u,0);
pair y = (0,ch(u));

draw(graph(ch, 0, 2),V);
draw(x--Z);
draw(y--Z);
dot(Z,R+5);

label("$x(t)$",x,S);
label("$y(t)$",y,W);
label("$z(t)$",Z,NW);

//axes((0,0),(5,5), Arrow);
pair O = (0,0);
path U = circle(O,1);
//draw(U, V);

real alph = 1;
real beta = 2;
pair A = (cos(alph),sin(alph));
pair B = (cos(beta),sin(beta));
//draw( A--B, R, MidArrow );
//pair C = reflect(B,O)*A;
//draw(B--C, R, MidArrow);
//draw(O--B, dotted+1);

//dot(A,R+5);
//label("$M_{k-1}$",A,NE);
//dot(B,R+5);
//label("$M_{k}$",B,NW);
//dot(C,R+5);
//label("$M_{k+1}$",C,W);

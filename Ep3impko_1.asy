settings.outformat = "pdf";
import graph;
size(9.5cm);

pen V = deepgreen+2;
pen R = red+1;
pen D = currentpen;

//xaxis(0,Arrow);
//yaxis(0,Arrow);

real f(real t) {return -(3*t**2 + t - 2)/2 ;}

draw(graph(f, -1.7, 1.2),V);

pair A = (-1, 0);
dot(A,R+5);
label("$-1$",A,SE);

pair B = (0,1);
dot(B,R+5);
label("$1$",(0.07,0.85));

pair C = (1, -1);
pair xC = (1,0);
dot(C,R+5);
label("$(1,-1)$",C,W);
//draw(xC--C,D);

real m = -1/6;
real fm = f(m);
pair xM = (m,0);
label("$m$",xM,NW);
pair M = (m, fm);
pair dM = (fm,fm);
pair xdM = (fm,0);
//dot(M,R+5);
draw(xM--M,D);
draw(M--dM,D);
draw(dM--(fm,-1.5),D);
label("$b$",xdM,NE);
real fb = f(fm);
draw((-1.5,fb)--(1.5,fb),D);

real r1 = (-3 - sqrt(33))/6;
pair I1 = (r1, f(r1));
pair xI1 = (r1,0);
//dot(I1,R+5);
draw(I1--xI1,D);
label("$a$",xI1,N);


real r2 = (-3+sqrt(33))/6;
pair I2 = (r2, f(r2));
pair xI2 = (r2,0);
draw(xI2--I2,D);
label("$a'$",xI2,S);
//dot(I2,R+5);

axes((-1.9,-1.9),(1.5,1.5), Arrow);
pair Dm = (1.5,1.5);
pair Dp = (-1.9,-1.9);
draw(Dm--Dp);

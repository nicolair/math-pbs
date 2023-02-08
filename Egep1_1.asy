settings.outformat = "pdf";
size(9cm);
import graph;

pen CR1 = deepgreen;
pen CR2 = red;
pen CR3 = blue;

real m = 0.8;
real a = 2;
real b = 0.5;

pair M = (a,b);
pair A = (a,0);
pair B = (0,b);

axes(min=(-1,-1.7), max=(3,1), arrow=Arrow);

draw(-0.6*(1,m)--0.9*(1,m), CR1);
label("$D_m$",0.9*(1,m),E);

dot(M,CR2);
label("$M$",M,N);
dot(A,CR2);
label("$A$",A,S);
dot(B,CR2);
label("$B$",B,W);

draw(M--B,dotted);
draw(M--A,dotted);

draw(A-2.1*(1,m)--A+0.2*(1,m),CR1);
draw(B-0.9*(1,m)--B+0.2*(1,m),CR1);

pair Aprime = (0, -a*m);
pair Bprime = (-b/m,0);
dot(Aprime,CR2);
label("$A'$",Aprime,NW);
dot(Bprime,CR2);
label("$B'$",Bprime,N);

pair Mprime = (-b/m, -a*m);
draw(Mprime--Bprime,dotted);
draw(Mprime--Aprime,dotted);
dot(Mprime,CR2);
label("$M'$",Mprime,SW);

draw(M--Mprime);

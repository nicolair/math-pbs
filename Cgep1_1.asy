settings.outformat = "pdf";
size(9cm);
import graph;

pen CR1 = deepgreen;
pen CR2 = red;
pen CR3 = blue;

axes(min=(-1,-1.7), max=(3,1), arrow=Arrow);

real m = 0.8;
real a = 2;
real b = 0.5;
draw(-0.6*(1,m)--0.9*(1,m), CR1);
label("$D_m$",0.9*(1,m),E);
draw(-1.1*(a,b)--0.5*(a,b));

// premier point M
pair M = (a,b);
pair A = (a,0);
pair B = (0,b);

dot(M,CR2);
label("$M$",M,N);
draw(M--B,dotted);
draw(M--A,dotted);

dot(A,CR2);
dot(B,CR2);
draw(A--B,CR2);

pair Aprime = (0, -a*m);
pair Bprime = (-b/m,0);
dot(Aprime,CR3);
dot(Bprime,CR3);
draw(Aprime--Bprime,CR3);
pair Mprime = (-b/m, -a*m);
dot(Mprime,CR3);
label("$M'$",Mprime,SW);

// deuxième point M

real l = -0.4;
a = 2*l;
b = 0.5*l;

M = (a,b);
A = (a,0);
B = (0,b);

dot(M,CR2);
label("$M$",M,S);
draw(M--B,dotted);
draw(M--A,dotted);

dot(A,CR2);
dot(B,CR2);
draw(A--B,CR2);

pair Aprime = (0, -a*m);
pair Bprime = (-b/m,0);
dot(Aprime,CR3);
dot(Bprime,CR3);
draw(Aprime--Bprime,CR3);
pair Mprime = (-b/m, -a*m);

pair Mprime = (-b/m, -a*m);
dot(Mprime,CR3);
label("$M'$",Mprime,N);

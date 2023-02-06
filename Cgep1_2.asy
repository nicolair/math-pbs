settings.outformat = "pdf";
size(9cm);
import graph;

pen CR1 = deepgreen;
pen CR2 = red;
pen CR3 = blue;

axes(min=(-3.5,-3.5), max=(3,1), arrow=Arrow);

real m = 0.8;
real a = 2;
real b = 0.5;

pair h(real m)
{
  return (-b/m, -a*m);
}

pair hprime(real m)
{
  return (b/m^2, -a);
}

// premier point M
pair M = (a,b);

dot(M,CR2);
label("$M$",M,N);

draw(graph(h, 0.15, 1.7), CR1);
pair O=(0,0);
dot(O);
label("$O$",O,NE);

pair Mprime = (-b/m, -a*m);
dot(Mprime,CR3);
label("$M'$",Mprime,SW);

draw((Mprime - 0.5*hprime(m))--(Mprime + 0.5*hprime(m)),CR1, arrow=Arrows);

pair Aprime = (-b/m,0);
pair Bprime = (0,-a*m);
dot(Aprime);
label("$A'$",Aprime,NE);
dot(Bprime);
label("$B'$", Bprime,E);
draw(Mprime--Aprime,dotted);
draw(Mprime--Bprime,dotted);
draw((-0.9*Aprime + 1.9*Bprime)--(1.5*Aprime - 0.5*Bprime),CR1);

draw(O--1.5*Mprime);
pair P = 0.5* Mprime;
dot(P);
label("$P$",P,E);



size(8cm,6cm);
import graph ;
axes((-1,-2),(7,4),Arrow);
real a = 1;
real b = 5.5;

pair A = (a,0);
pair B = (b,0);

dot(A);
label("$a$",A,N);
label("$b$",B,S);
dot(B);

real f(real x) {
  return 2*log(x - 0.6);
}
real fprime(real x) {
  return 2/(x-0.6);
}

draw(graph(f,a,b),deepgreen+1);
draw(A--(a,f(a)),dotted);
draw(B--(b,f(b)),dotted);

real x1 = 5;
pair M = (x1,f(x1));
dot((x1,0));
label("$x_1$",(x1,0),S);
draw((x1,0)--M,dotted);
dot(M);
pair v = (1,fprime(x1));
pair T = M - 4*v;
draw(M--T,Arrow);
label("$g(x_1) < a$",T,S);
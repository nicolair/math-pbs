import graph;
size(7cm);
pen Gv = darkgreen +1;

real a = 2;
real b = 1.3;
real c = sqrt(a^2 - b^2);

real u(real t){
  return a*cos(t);
}

real u1(real t){
  return c*cos(t);
}

real v(real t){
  return b*sin(t);
}

bool3 cond(real t){
  return abs(cos(t))<c/a;
}

guide E = graph(u,v,0,2*pi);
guide[] E1 = graph(u1,v,0,2*pi,cond);

real d = 1.7;

pair  centre = (c^2*d/a^2,0);
real  r = b*sqrt(1-c^2*d^2/a^4);
guide  C = circle(centre,r);

draw(E,red + 1);
draw(E1,Gv);
draw(C);

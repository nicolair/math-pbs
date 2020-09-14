import graph;
size(7cm);
pen Gv = darkgreen +1;

real a = 2;
real b = 0.9;
real c = sqrt(a^2 - b^2);

real u(real d){
  return a^2/d;
}
real v(real d){
  return -a*b*sqrt(1-d^2/a^2)/d;
}

axes((-4*a,-3*a),(4*a,3*a),Arrow);

real dmin = 0.5;

guide H1 = graph(u,v,-a,-dmin);
guide sH1 = reflect((0,0),(1,0))*H1;
guide H2 = graph(u,v,dmin,a);
guide sH2 = reflect((0,0),(1,0))*H2;

draw(H1,Gv,MidArrow);
draw(H2,Gv,MidArrow);
draw(sH1,dotted+1);
draw(sH2,dotted+1);

label("$a$",(u(a),v(a)),SW);
label("$0^+$",(u(dmin),v(dmin)),S);

label("$-a$",(u(-a),v(-a)),NE);
label("$0^-$",(u(-dmin),v(-dmin)),N);
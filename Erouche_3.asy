settings.outformat = "pdf";
import graph;
size(10cm);

pair gamma(real t){
  pair u = (cos(t),sin(t));
  return  1 + 0.5*u - 0.2*u^5 + 0.1*cos(t);
}

guide courbe = graph(gamma,0,2*pi);

draw(courbe,deepgreen+1,MidArrow);

draw((-4,0)--(0,0));

path unitcircle = E..N..W..S..cycle;
unitcircle = shift(1,0)*unitcircle;
draw(unitcircle);

dot((0,0),black+5);
label("$0$",(0,-0.1),SW);

dot((-2,0),black+5);
label("$x$",(-2,-0.1),S);
settings.outformat = "pdf";
import graph;
size(3cm);

pair gamma(real t){
  pair u = (cos(t),sin(t));
  return u^2 - u -1 ;
}

guide courbe = graph(gamma,0,2*pi);

draw(courbe,deepgreen+1,MidArrow);
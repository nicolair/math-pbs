settings.outformat = "pdf";
import graph;
size(7cm);
real phi(real t){
  return acos((1-t^2)/(1+t^2)) + asin(2*t/(1+t^2));
}

axes((-3,-.1),(3,3.5),Arrow);
draw(graph(phi,-3,3),deepgreen+1);
dot((-1,0));label("$-1$",(-1,0),S);
dot((0,3));label("$3$",(0,3),W);
dot((0,0));

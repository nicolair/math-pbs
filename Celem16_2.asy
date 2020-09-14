settings.outformat = "pdf";
import graph;
size(6cm);

real phi(real t){
  return (t^2+t)/(t-2);
}

real a = 2-sqrt(6);
real u = 5 -2*sqrt(6);

axes((-1.1,-2.1),(1.2,0.5),Arrow);
draw(graph(phi,-1,1),deepgreen+1);

draw((a,0)--(a,u)--(0,u));
draw((0,-2)--(1,-2)--(1,0));

label("$-1$",(-1,0),S);
label("$2-\sqrt{6}$",(a,0),S);
label("$u$",(0,u),E);
label("$-2$",(0,-2),W);
label("$1$",(1,0),N);

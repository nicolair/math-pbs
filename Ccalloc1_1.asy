settings.outformat = "pdf";
import graph;
size(6cm);

pen V = deepgreen+1;
pen R = red+1;
pen D = currentpen;

real e = exp(1);

real f(real x){
  if(x == 0){
    return e;
  } else{
  return (x+sqrt(x^2+1))^(1/x);
  }
}

real g(real x){
  return e*(1-x^2/6);
}

draw(graph(f,-2,2),V);
draw(graph(g,-2,2),R);

xaxis(-2, 2, Ticks);
yaxis(-0.1,3,Arrow);
//axes((-2,-0.1),(2,3), Arrow);

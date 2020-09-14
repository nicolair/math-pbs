settings.outformat = "pdf";
import graph;
size(6cm);
real phi(real t){
  return (t^2+t)/(t-2);
}

bool3 branch(real x)
{
  static int lastsign = 2;
  if(abs(x - 2) < 0.4) return false;
  int sign = sgn(x-2);
  bool b = lastsign == 2 || sign == lastsign; 
  lastsign = sign;
  return b ? true : default;
}

axes((-10,-11),(10,21),Arrow);
draw(graph(phi,-10,10,branch),deepgreen+1);
draw((2,-11)--(2,20));
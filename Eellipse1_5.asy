size(6cm);

real a = 2;
real b = 1.45;
real c = sqrt(a^2 - b^2);
int n = 25;
real pas = 2*a/n;
real d = -a;
pair centre;
real r;
path C;
pen Gv = darkgreen + 1;

for(int i=1; i<n; ++i){
  d = d + pas;

  centre = (c^2*d/a^2,0);
  r = b*sqrt(1-c^2*d^2/a^4);

  C = circle(centre,r);

  draw(C,Gv);
} 
size(6cm);

pen Gv = darkgreen + 1;

real a = 2;
real b = 1.4;
real c = sqrt(a^2 - b^2);
path Ell = scale(a,b)* unitcircle;
draw(Ell,red+2);

int n = 15;
real pas = 2*a/n;
real d = -a;
pair centre;
real r;
path C;

for(int i=1; i<n; ++i){
  d = d + pas;

  centre = (d,0);
  r = b*sqrt(1-d^2/a^2);

  C = circle(centre,r);

  draw(C,darkgreen);
} 
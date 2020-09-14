import settings;
outformat="pdf";
unitsize(2cm);
size(5cm);
pen gVert = deepgreen+1 ;

real c = 1;
real f(real t){
  return sqrt(t*t - c*c);
  }  
pair F1 = (1,0);
pair F2 = (-1,0);
dot(F1, gVert+3);
label('$F$',F1,W);
label("$F'$",F2,E);
dot(F2, gVert+3);
for(int i = 0; i < 5; ++i){
  real a = 1.05 + i*0.05;
  real b = f(a);
  path E = scale(a,b)*unitcircle;
  draw(E,gVert);
}

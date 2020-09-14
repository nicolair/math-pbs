import settings;
outformat="pdf";
unitsize(2cm);
size(5cm);
pen gVert = deepgreen+1 ;

real rayon(real t){
  return sqrt(t - t*t);
  }  

for(int i = 1; i < 10; ++i){
  real r = i*0.1;
  path E = shift(-1 + 2*r)*scale(rayon(r))*unitcircle;
  draw(E,gVert);
}

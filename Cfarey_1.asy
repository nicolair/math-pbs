size(8cm);
int p;
int q;
real r;
pair c;
path C;
for(q = 1; q < 12; ++q){
  for(p = 1; p < q; ++p){
    r = 1/(2*q^2);
    c = (p/q,-r);
    C = circle(c,r);
    draw(C,darkgreen);
  }
}
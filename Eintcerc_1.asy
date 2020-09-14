size(9cm);

real a=2.;
real b=1.5;
real R=5.;
real k= R/sqrt(a^2+b^2);


pair O=(0,0);
pair I=(a,b);
//pair M=(R^2/a);

dot(O);label("$O$",O,NW);
dot(I);label("$I$",I,NE);
//draw(O--I);
draw(circle(O,R),red);
//dot(M,red);

int n=5;
pair Omega;
real r;
real theta;
for(int j=0; j<=n; ++j){
  theta=j*2*pi/n;
  Omega=(R*cos(theta),R*sin(theta));
  r=k*sqrt((R*cos(theta) - a)^2+(R*sin(theta) - b)^2);
  dot(Omega,red);
  draw(circle(Omega,r),deepgreen);
}

settings.outformat = "pdf";
import graph;
size(7cm);

path unitcircle = E..N..W..S..cycle;

draw(unitcircle);

real x0 = -0.1;
real y0 = 0.2;
real r = 0.22;

real p(real t) {
  return r + x0*cos(t) + y0*sin(t);
}

real phi1(real t){
  return t + acos(p(t));
}

real phi1prime(real t){
  return 1 + (x0*sin(t)-y0*cos(t))*(1-p(t)^2)^(-0.5);
}

real phi1R(real v){
  return newton(10, new real(real t) {return phi1(t) - v;}, phi1prime,0);
}

real phi2(real t){
  return t - acos(p(t));
}

real f(real t){
  return phi2(phi1R(t));
}

path Gamma = scale(r)*unitcircle;
Gamma = shift(x0,y0)*Gamma;
draw(Gamma);

real theta = 2;
pair T = (x0,y0) + r*expi(phi1R(theta));
pair M = expi(theta);
theta = f(theta);
pair MM = expi(theta);

dot(M);
label("$e^{i\theta}$",M,N);
dot(MM);
draw(M--T,deepgreen+2);
draw(T--MM);
dot(T);
label("$z({\varphi_1}^{-1}(\theta))$",T,NE);

T = (x0,y0) + r*expi(phi1R(theta));
dot(T);

M = MM;
label("$e^{if(\theta)}$",M,E);
theta = f(theta);
MM = expi(theta);
dot(MM);
draw(M--T,deepgreen+2);
draw(T--MM);

draw(M--(x0,y0),dashed);
label("$z_0$",(x0,y0),N);

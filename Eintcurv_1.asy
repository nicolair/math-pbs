import graph3;

size(7cm);

triple f(pair z) {
  return (z.x*cos(z.y),z.x*sin(z.y), sqrt(1-(z.x)^2));
}

real phi = pi/3;

triple M(real theta){
  return (cos(theta), cos(phi)*sin(theta),sin(phi)*sin(theta));
}

path3 p = graph(M,0,pi,operator ..);
surface s = surface(f,(0,0),(1,2pi),8,8,Spline);

draw(s,lightgreen);
draw(p,darkgreen+2);

axes3("$x$","$y$","$z$",(-2,-2,-0.2),(1.5,1.5,1.5),Arrow3);
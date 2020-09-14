import graph3;

size(7cm);

triple f(pair z) {
  return (z.x*cos(z.y),z.x*sin(z.y), sqrt(1-(z.x)^2));
}

real phi = 0.7;

triple u = (0, -sin(phi),cos(phi));
triple O = (0,0,0);

triple M(real theta){
  return (cos(theta), cos(phi)*sin(theta),sin(phi)*sin(theta));
}

triple P(real theta){
  return (cos(theta), cos(phi)*sin(theta),0);
}

path3 pM = graph(M,0,pi,operator ..);
path3 pP = graph(P,0,pi,operator ..);
//surface s = surface(f,(0,0),(1,2pi),8,8,Spline);

//draw(s,lightgreen);
draw(pM,darkgreen+1);
draw(pP,red+1);
draw(O--u,darkgreen+1,Arrow3);
dot(M(1),darkgreen+5);
dot((M(1).x,M(1).y,0),red+5);
draw(M(1)--(M(1).x,M(1).y,0),dashed);

axes3("$x$","$y$","$z$",(-1.5,-0.5,0),(1.5,1.5,1.5),Arrow3);

label("$\overrightarrow{u}_{\varphi}$",u,N);
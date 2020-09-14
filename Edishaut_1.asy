//import graph3;
unitsize(1cm);
import three;
import fontsize;
size(20cm);

defaultpen(fontsize(45pt));
pen gV = darkgreen + 2;

triple A = (0,0,1);
triple O = (0,0,0);
triple B = (1,0,0);
triple D = (0,-1.3,0);
triple C = (-1.5,1,0);

path3 pABC = B--C--D ;
triple nA = normal(pABC);

draw(A--B,gV);draw(A--C,gV);draw(A--D,gV);draw(B--C,gV);draw(B--D,gV);draw(C--D,gV+dashed);

draw(A--O,red+dashed+1);     draw(O--B); draw(O--C); draw(O--D);
dot(O,red+5);
dot(A,darkgreen+5);dot(B,darkgreen+5);dot(C,darkgreen+5);dot(D,darkgreen+5);

label("$A$",A,N);label("$B$",B,SW);label("$C$",C,E);label("$D$",D,W);

//triple f(pair z) {
//  return (z.x*cos(z.y),z.x*sin(z.y), sqrt(1-(z.x)^2));
//}

//real phi = pi/3;

//triple M(real theta){
//  return (cos(theta), cos(phi)*sin(theta),sin(phi)*sin(theta));
//}

//path3 p = graph(M,0,pi,operator ..);
//surface s = surface(f,(0,0),(1,2pi),8,8,Spline);

//draw(s,lightgreen);
//draw(p,darkgreen+2);

//axes3("$x$","$y$","$z$",(-2,-2,-0.2),(1.5,1.5,1.5),Arrow3);
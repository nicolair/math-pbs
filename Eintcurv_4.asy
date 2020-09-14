import graph3;
import three;

size(7cm);

real a0= .45;
real b0 = .55;
real c0 = sqrt(1-a0^2-b0^2);
real a1= -.35;
real b1 = .75;
real c1 = sqrt(1-a1^2-b1^2);
triple m0 = (a0,b0,c0);
triple m1 = (a1,b1,c1);
//triple u = (b0*c1-c0*b1,c0*a1-a0*c1,a0*b1-b0*a1);
triple u = cross(m0,m1);
u = (1/sqrt(u.x^2+u.y^2+u.z^2))*u;
triple I = (u.y,-u.x,0);
I = (1/sqrt(I.x^2+I.y^2))*I;

triple O = (0,0,0);

triple M(real theta) {
  return rotate(theta,-u)*I;
}

path3 cercle = graph(M,0,180,operator ..);
real r = 0.3;
real ru = 0.6;
path3 arc0 = arc(O,-r*I,r*m0);
path3 arcu = arc(O,ru*(0,0,1),u);

draw(O--m0,darkgreen+1,Arrow3);
draw(O--m1,darkgreen+1,Arrow3);
draw(O--u,dashed+darkgreen+1,Arrow3);
draw(I--(-I),red);

draw(cercle,red+2);

draw(arc0,Arrow3);
draw(arcu);

axes3("$x$","$y$","$z$",(0,0,0),(1.5,1.5,1.5),Arrow3);
label("$\overrightarrow{m}_0$",m0,N);
label("$\overrightarrow{m}_1$",m1,N);
label("$\theta_0$",rotate(45,u)*(-0.5*I));
label("$\varphi$",rotate(20,-I)*(0.75*(0,0,1)));
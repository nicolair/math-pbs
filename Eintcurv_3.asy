import graph;

size(7cm);

real phi = 0.7;
real theta0 = 0.8;
real theta1 = 2.1;

pair P(real theta){
  return (cos(theta), cos(phi)*sin(theta));
}

path pP = graph(P,theta0,theta1);
draw(pP,red+1);
path pP = graph(P,0,theta0);
draw(pP,dotted+1);
path pP = graph(P,theta1,pi);
draw(pP,dotted+1);

dot(P(theta0),red+4);
dot(P(theta1),red+4);
dot((P(theta0).x,0),red+4);
dot((P(theta1).x,0),red+4);
draw((P(theta0).x,0)--P(theta0),dashed);
draw((P(theta1).x,0)--P(theta1),dashed);

label("$P_0$",P(theta0),N);
label("$P_1$",P(theta1),N);
label("$\cos \theta_0$",(P(theta0).x,0),S);
label("$\cos \theta_1$",(P(theta1).x,0),S);

axes("$x$","$y$",(-1.5,-0.5),(1.5,1.5),Arrow);

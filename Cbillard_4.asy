settings.outformat = "pdf";
import graph;
size(5.5cm);

pen V = deepgreen+2;
pen R = red+1;

pair O = (0,0);
path U = circle(O,1);
draw(U, V);

real alpha = 9*pi/14;
real beta = 2*alpha - pi;
real beta_deg = beta*180/pi;

pair M = expi(0.2);
pair MM = rotate(beta_deg,(0,0))*M;
pair MMM;

for(int i=0; i<7; ++i) {
  draw( M--MM, R, MidArrow );
  MMM = rotate(beta_deg,(0,0))*MM;
  M = MM;
  MM = MMM;
}


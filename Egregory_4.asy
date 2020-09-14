settings.outformat = "pdf";
import graph;
size(3cm);

pen V = deepgreen+1;
pen R = red+1;

int n = 3;

real alpha = pi/4;
pair O = (0,0);
pair A = (1,0);
pair B = (1/sqrt(2),1/sqrt(2));
pair C = (1,.8);
alpha = alpha/2^(n-1);

real beta = 0;
real gamma = beta + alpha;
for(int i= 0; i < 2^(n-1); ++i){
  draw((cos(beta),sin(beta))--(cos(gamma),sin(gamma)),R);
  beta = gamma;
  gamma = gamma + alpha;
}

draw(O--A);
draw(O--B);



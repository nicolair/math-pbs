settings.outformat = "pdf";
size(12cm,0);

pen GrosCrayon = defaultpen +1;
pen CrayonRouge = red +2;
pen GrosCrayonRouge = red +5;

draw((-0.3,0)--(10,0),Arrow);
draw((0,-0.3)--(0,1.5),Arrow);

int m =5;
pair[] x = new pair[m];
  x[0] = (0.5,0);
  x[1] = (1.5,0);
  x[2] = (2.5,0);
  x[3] = (4.1,0);
  x[4] = (7.2,0);
  x[5] = (9.2,0);
guide ronds;
for(int k=0; k< m+1; ++k){
  ronds = ronds--x[k];
}
dot(ronds,GrosCrayonRouge);

int n=3;
for(int k=2; k< 28; ++k){
  draw((k/n,-0.1)--(k/n,0.1));
}

label("$x_0=a$",x[0]+(0,-0.1) , S);
label("$x_1$",x[1]+(0,-0.1) , S);
label("$x_2$",x[2]+(0,-0.1) , S);
label("$x_s=b$",x[5]+(0,-0.1) , S);


int k = 18;
label("$\frac{k}{n}$",(k/n - 0.2,0.3),N);
draw((k/n - 0.15,0.3)--(k/n,0.05),Arrow);
label("$\frac{k+1}{n}$",((k+1)/n + 0.2,0.3),N);
draw(((k+1)/n + 0.2,0.3)--((k+1)/n ,0.05),Arrow);

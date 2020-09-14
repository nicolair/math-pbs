size(7cm);
pair a = (1,-3);
pair b = (-3,5);
draw((-20,0)--(12,0));
dot(a,black +3); label("$A$",a,S);
dot(b,black +3); label("$B$",b,N);

real k = 0.35;

pair gm = (a-k*b)/(1-k);
pair gp = (a+k*b)/(1+k);
pair c = (gm + gp)/2 ;
real r = length(gp - gm)/2 ;
path Niv = circle(c,r);
dot(gm,red +3); dot(gp,red +3);
draw(Niv, red);
label("$\Gamma_{k_1}$",gm, SE);

k = 0.65;
gm = (a-k*b)/(1-k);
gp = (a+k*b)/(1+k);
c = (gm + gp)/2 ;
r = length(gp - gm)/2 ;
Niv = circle(c,r);
dot(gm,red +3); dot(gp,red +3);
draw(Niv, red);
label("$\Gamma_{k_2}$",gm, SE);

k = 2.2;
gm = (a-k*b)/(1-k);
gp = (a+k*b)/(1+k);
c = (gm + gp)/2 ;
r = length(gp - gm)/2 ;
Niv = circle(c,r);
dot(gm,red +3); dot(gp,red +3);
draw(Niv, red);
label("$\Gamma_{k_3}$",gm, NW);

k = 1.3;
gm = (a-k*b)/(1-k);
gp = (a+k*b)/(1+k);
c = (gm + gp)/2 ;
r = length(gp - gm)/2 ;
Niv = circle(c,r);
dot(gm,red +3); dot(gp,red +3);
draw(Niv, red);
label("$\Gamma_{k_4}$",gm, NW);



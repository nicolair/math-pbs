settings.outformat = "pdf";
size(4cm,0);
pen colour1 = deepgreen;
pen colour2 = deepgreen;

pair z0=(0,0);
pair z1=(-1,0);
pair z2=(1,0);
real r=1.5;
path c1=circle(z1,r);
path c2=circle(z2,r);
fill(c1,colour1);
fill(c2,colour2);

picture intersection=new picture;
fill(intersection,c1,palegreen);
clip(intersection,c2);

add(intersection);

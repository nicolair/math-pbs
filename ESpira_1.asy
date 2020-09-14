size(7cm);
pair O = (0,0);
pair z = (1,0);
pair u;
pair zz;
draw(O--z,deepgreen);
dot(z,darkgreen+5);
label("$z_0$",z,E);

u = (-z.y , z.x);
zz = z + unit(u);
draw(z--zz,darkgreen+2);
draw(O--zz,deepgreen);
z = zz;
dot(z,darkgreen+5);
label("$z_1$",z,E);

u = (-z.y , z.x);
zz = z + unit(u);
draw(z--zz,darkgreen+2);
draw(O--zz,deepgreen);
z = zz;
dot(z,darkgreen+5);
label("$z_2$",z,NE);

u = (-z.y , z.x);
zz = z + unit(u);
draw(z--zz,darkgreen+2);
draw(O--zz,deepgreen);
z = zz;
dot(z,darkgreen+5);
label("$z_3$",z,N);

u = (-z.y , z.x);
zz = z + unit(u);
draw(z--zz,darkgreen+2);
draw(O--zz,deepgreen);
z = zz;
dot(z,darkgreen+5);
label("$z_4$",z,NW);

for(int i = 0; i < 12; ++i) { 
  u = (-z.y , z.x);
  zz = z + unit(u);
  draw(z--zz,darkgreen+2);
  draw(O--zz,deepgreen);
  z = zz;
  dot(z,darkgreen+5);
}
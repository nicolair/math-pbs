size(7cm);
pair O = (0,0);
pair z = (1,0);
pair u;
pair zz;
draw(O--(20,0),deepgreen);

for(int i = 0; i < 300; ++i) { 
  u = (-z.y , z.x);
  zz = z + unit(u);
  draw(z--zz,darkgreen+2);
  z = zz;
}
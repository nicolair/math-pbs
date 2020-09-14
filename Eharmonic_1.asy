size(7cm);
int n = 4;
pair c;
for(int x = -n+1; x < n; ++x){
  for(int y= -n+1; y < n; ++y){
    c = (x,y);
    dot(c);
  }
}
c = (0,2);
dot(c,red +8);
label("$c_1$",c,E);

c = (-1,1);
dot(c,red +8);
label("$c_2$",c,E);c = (0,0);

c = (0,1);
dot(c,red +8);
label("$c_3$",c,E);c = (0,0);

c = (1,1);
dot(c,red +8);
label("$c_4$",c,E);

c = (-2,0);
dot(c,red +8);
label("$c_5$",c,E);c = (0,0);

c = (-1,0);
dot(c,red +8);
label("$c_6$",c,E);c = (0,0);

c = (0,0);
dot(c,red +8);
label("$c_7$",c,E);c = (0,0);

c = (1,0);
dot(c,red +8);
label("$c_8$",c,E);c = (0,0);

c = (-1,-1);
dot(c,red +8);
label("$c_9$",c,E);

c = (0,-1);
dot(c,red +8);
label("$c_{10}$",c,E);c = (0,0);

c = (1,-1);
dot(c,red +8);
label("$c_{11}$",c,E);c = (0,0);

c = (0,-2);
dot(c,red +8);
label("$c_{12}$",c,E);



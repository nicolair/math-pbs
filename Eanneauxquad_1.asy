settings.outformat = "pdf";
import graph;
size(8cm);

pen V = deepgreen+3;
pen R = red+1;
pen D = currentpen;

pair alpha = (0.5, sqrt(3)/2);
pair beta = (0.5, -sqrt(3)/2);
pair u = (1,0);
real vmax = 5;
int nj = 20;
int n = 20;
pair p;

for(int i=-n; i < n; ++i){
  for(int j=-n; j < n; ++j){
    p = (i*u + j*alpha);
    if((abs(p.x) < vmax) & (abs(p.y) < vmax)){
      dot(p,V);
    }
  }
}

path cercleunit =(1,0)..alpha..(-0.5,sqrt(3)/2)..(-1,0)..(-0.5,-sqrt(3)/2)..(0.5,-sqrt(3)/2)..cycle;
draw(cercleunit);

axes((-vmax,-vmax),(vmax,vmax), Arrow);


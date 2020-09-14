settings.outformat = "pdf";
import graph;
size(5cm);
//real phi(real t){
//  return acos((1-t^2)/(1+t^2)) + asin(2*t/(1+t^2));
//}

axes("i", "j", (-.1,-.1),(10.1,10.1),Arrow);

pen rouge = red+2;
pen Vert = deepgreen+4;

//draw(graph(phi,-3,3),deepgreen+1);
for(int i = 0; i < 10; ++i){
    for(int j = 0 ; j < 10; ++j){
        if( i <= j){
            dot((i,j),Vert);
        } else {
            dot((i,j),rouge);
        }
    }
}

label("$0$",(0,0),S);
label("$1$",(1,0),S);
label("$n$",(9,0),S);

label("$0$",(0,0),W);
label("$1$",(0,1),W);
label("$n$",(0,9),W);


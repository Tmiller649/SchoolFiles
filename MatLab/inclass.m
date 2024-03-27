x=linspace(-5,10,100);
z=linspace(0,10,100);
y=((x.^4)/3)-(2*(x.^3))-2.3*(x.^2)+(6*x)+4;
y2= 300*(z.^.5);
figure
hold on
plot(x,y,"r--","Linewidth",10)
plot(z,y2,"b-")
xlabel("x")
ylabel("y")
title("Title")
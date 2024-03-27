E = input('Engine Hp = ');
Cd = input('Cd = ');
Af = input('Af = ');
W = input('Vehicle weight = ');
S = input('What is the speed of the Vehicle? ');
S=(S*5280)/3600;
p=.0022633;
HP=0;
Ahp=(.5*p*(S*S*S)*Cd*Af)/550;
G=0;
HPr = E/2;
while HP<=HPr
  HP=Ahp+(1.5*(W/1000))+(6*(W/1000)*G);
  G = G +.01;
end
   
fprintf('HP Required = %.2f ',HPr);
fprintf('Maximum Grade = %.2f',G);
    

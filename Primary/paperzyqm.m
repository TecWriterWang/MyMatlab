clc;
clear;
 
L1=10;            
n=1.5;            
d=3.5;           
fy1=0:2:45;      
fy=fy1*pi/180;    

 
x=zeros(22,1);    
y=zeros(22,1);    
x(1) = 1;      
y(1) = 0;
 
for i=1:22
    D = sin(fy(i+1))/sqrt(n^2-(sin(fy(i+1)))^2);
    A = [x(i), y(i); 1 , -D];
    B = [(x(i))^2+(y(i))^2 ; L1*tan(fy(i+1))-L1*D];
C = A\B;
x(i+1) = C(1);
    y(i+1) = C(2);
end
 
 
 
plot(x(2:end),y(2:end));
xlabel('x');
ylabel('y');

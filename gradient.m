function g=gradient(x)
g=zeros(2,1);
h=10^(-5);
e1=[1;0];
e2=[0;1];
g(1)=(f(x+h*e1)-f(x))/h;
g(2)=(f(x+h*e2)-f(x))/h;
end

function hes=hessian(x)
hes=zeros(2,2);
h=10^(-5);
e1=[1;0];
e2=[0;1];
hes(1,1)=(f(x+2*h*e1)+f(x)-2*f(x+h*e1))/h^2;
hes(2,2)=(f(x+2*h*e2)+f(x)-2*f(x+h*e2))/h^2;
hes(1,2)=(f(x+h*e1+h*e2)+f(x)-f(x+h*e1)-f(x+h*e2))/h^2;
hes(2,1)=(f(x+h*e2+h*e1)+f(x)-f(x+h*e2)-f(x+h*e1))/h^2;
end
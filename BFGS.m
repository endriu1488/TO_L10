x=[1;3];
B=eye(2);
r=gradient(x);
h=-B*r;
EPS=10^-2;
iter=0;
while (abs(norm(r))>EPS)
    r=gradient(x);
    h=-B*r;
    H=hessian(x);
    Teta=-(h'*r)/(h'*H*h);
    x=x+Teta*h;
    S=gradient(x);
    p=Teta*h;
    y=rS-r;
    B=B+((1+(y'*B*y)/(p'*y))*((p*p')/(p'*y))-(p*y'*B)/(p'*y)-(B*y*p')/(p'*y));
    iter=iter+1;
end

x
iter
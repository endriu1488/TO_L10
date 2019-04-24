x=[0;0];
a=10^4;
c1=0.5;
c2=1.2;
EPS=10^-5;
iter=0;

while(abs(norm(gradient(x)))>EPS)
    f1=f(x);
    x=x-inv((hessian(x)+a*eye(2,2)))*gradient(x);
    f2=f(x);
    if(f2<f1)
        a=c1*a;
        iter=iter+1;
    else
        a=c2*a;
    end
end

x
iter
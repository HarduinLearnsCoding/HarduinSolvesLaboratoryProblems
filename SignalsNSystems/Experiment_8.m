%1

syms s t a b;
f=1;
F=laplace(f,t,s);
disp(F);

f=t^2;
F=laplace(f,t,s);
disp(F);

f=t*exp(6*t);
F=laplace(f,t,s);
disp(F);

f=cos(3*t);
F=laplace(f,t,s);
disp(F);

f=exp(-t)*sin(2*t);
F=laplace(f,t,s);
disp(F);

f=(cos(5*t))^2;
F=laplace(f,t,s);
disp(F);

f=t*((cos(5*t))^2);
F=laplace(f,t,s);
disp(F);

f=t*exp(a*t)*(cos(b*t));
F=laplace(f,t,s);
disp(F);

f=t*exp(a*t)*(sin(b*t));
F=laplace(f,t,s);
disp(F);

f=(sin(2*t))^3;
F=laplace(f,t,s);
disp(F);

F=(2*s-5)/(s^2+4*s+8);
f=ilaplace(F,s,t);
disp(f);



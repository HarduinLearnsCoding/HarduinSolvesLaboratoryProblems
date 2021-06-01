syms z t a b;
f=1;
F=ztrans(f,t,z);
disp(F);

f=t^2;
F=ztrans(f,t,z);
disp(F);

f=t*exp(6*t);
F=ztrans(f,t,z);
disp(F);

f=cos(3*t);
F=ztrans(f,t,z);
disp(F);

f=exp(-t)*sin(2*t);
F=ztrans(f,t,z);
disp(F);

f=t*exp(a*t)*(cos(b*t));
F=ztrans(f,t,z);
disp(F);

f=t*exp(a*t)*(sin(b*t));
F=ztrans(f,t,z);
disp(F);
syms s t a b;
f=1;
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

f=t^2;
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

f=t*exp(6*t);
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

f=cos(3*t);
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

f=exp(-t)*sin(2*t);
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

f=(cos(5*t))^2;
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

f=t*((cos(5*t))^2);
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

f=t*exp(a*t)*(cos(b*t));
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

f=t*exp(a*t)*(sin(b*t));
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

f=(sin(2*t))^3;
func=f*exp(-s*t);
F=int(func,0,inf);
ans=simplify(F);
pretty(ans);

F=(2*s-5)/(s^2+4*s+8);
func=F*exp(s*t);
f=int(func,0,inf);
ans=simplify(f);
pretty(ans);

function value=L(x)
fl=x(1);
Pt=x(2);
lambda=x(3);
a=40;
I=10*1024*1024*8;%bit
K=10^(-26);
P0=0.4;%W
kt=18;
B1=1;
Pr=0.4;%W
B2=0.2;
WU=10;%MHZ
d=10;%[10,100] 也可以调整
v=4;
h1=0.99;
N0=174*(10^(-13));
WD=10;%MHZ
PF=0.1;%W
h2=0.99;
fc=8*(10^8);

%calculating
RU=WU*log2(1+(Pt*(d^(-v)*(h1^2))/N0));
RD=WD*log2(1+(PF*(d^(-v)*(h2^2))/N0));
tU=B1*(1-lambda)*I/RU;
tD=B2*(1-lambda)*I/RD;
TC=a*(1-lambda)*I/fc;%Cloud端执行时间
tl=a*lambda*I/fl;
tc=tU+TC+tD;
L=max(tl,tc);
value=L;
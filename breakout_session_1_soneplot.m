%%signal definitions
syms tc fc;
fc=sin(tc)
fplot(fc,[0,2*pi])
nt=25;
td=linspace(0,2*pi,nt);
fd=sin(td);
hold on
plot(td,fd,'ko')

%% obtaining derivatives
dfdt_c=diff(fc,tc);
%sampling time period
T = td(2)-td(1)
dfdt_d = gradient(fd,T);

figure(2)
fplot(dfdt_c,[0,2*pi],'r')
hold on
plot(td,dfdt_d,'ko')
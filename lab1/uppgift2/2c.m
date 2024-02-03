%startvärden för det minsta är 5.3e-13 och största 7.148. 
disp('Newton-Raphsons metod for the largest')
clear all
x = 7.148;  %Vår grova approximation
t = 1;  %Föregående tn.
format short
disp('      x        f(x)      fprim(x)    tn      K: linjärisering')
while abs(t)>10e-8
    f = 61.*x - ((x.^2 + x + 0.03)./(3.*x + 1)).^7 - 20.*x.*exp(-x);
    fprim = 20.*x.*exp(-x) - 20.*exp(-x) + (21.*((x.^2 + x + 0.03).^7))./((3.*x + 1).^8) - (7.*(2.*x +1).*((x.^2 + x + 0.03).^6))./((3.*x + 1).^7) + 61;
    tn = f/fprim;    %Vår nuvarande tn i denna iteration
    K = tn/(t.^2);   %Nuvarande tn divideras med föregående tn
    t = tn;         %Nuvarande tn läggs in i t, sådana att den blir föregående i nästa iteration.
    disp([x         f  fprim  tn  K])
    x = x - tn;
end
rot = x

disp('Newton-Raphsons metod for the lowest')
clear all
x = 5.3e-13;  %Vår grova approximation
t = 1;  %Föregående tn.
format short
disp('      x        f(x)      fprim(x)    tn      K: linjärisering')
while abs(t)>10e-8
    f = 61.*x - ((x.^2 + x + 0.03)./(3.*x + 1)).^7 - 20.*x.*exp(-x);
    fprim = 20.*x.*exp(-x) - 20.*exp(-x) + (21.*((x.^2 + x + 0.03).^7))./((3.*x + 1).^8) - (7.*(2.*x +1).*((x.^2 + x + 0.03).^6))./((3.*x + 1).^7) + 61;
    tn = f/fprim;    %Vår nuvarande tn i denna iteration
    K = tn/(t.^2);   %Nuvarande tn divideras med föregående tn
    t = tn;         %Nuvarande tn läggs in i t, sådana att den blir föregående i nästa iteration.
    disp([x         f  fprim  tn  K])
    x = x - tn;
end
rot = x


clear all
clf
x = 0:0.001:10;
format long

y = 61.*x - ((x.^2 + x + 0.03)./(3.*x + 1)).^7 - 20.*x.*exp(-x);

% Plot the function
plot(x, y);
grid on;
ylim([-40, 30]);

xpunkter = [5.33e-13, 6.397];
y = 61.*xpunkter - ((xpunkter.^2 + xpunkter + 0.03)./(3.*xpunkter + 1)).^7 - 20.*xpunkter.*exp(-xpunkter);
hold on
plot(xpunkter, y, 'ro');
title('Funktionsgrafen med rötter inringade');
xlabel('x');
ylabel('y');
legend('Roots at approximately x = 5.33e-13 and x = ')

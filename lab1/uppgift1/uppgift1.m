% a)
A = [1,2,3,0;0,4,5,6;1,1,-1,0;1,1,1,1];
b = [7,6,5,4]';
x = A\b;
% x1 = 2.1304 x2= 2.6957 x3= -0.1739 x4=  -0.6522
% b)
r = b - A * x
% c)
% rounding uncertainty and numerical 
% in computer

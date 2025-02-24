function [J] = leaderCostFun(U, H, f)
%LEADERCOSTFUN functional cost for leader
%   navigation cost + potential repulsion cost

% classic cost
J1 = 0.5 * U' * H * U;
J2 = f' * U;

J3 = 0;

J = J1 + J2;
end 


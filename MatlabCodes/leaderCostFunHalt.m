function [J] = leaderCostFunHalt(U, x0, T_bar, S_bar, N, n)
%LEADERCOSTFUN functional cost for leader in feasibility-aware policy
%   function that slows down the leader to allow follower to get back in formation + potential repulsion cost

% navigation cost
x_t = (T_bar * x0 + S_bar * U);
J1 = 0;
for t = 1:(N-1)
    % distance between position(t+1) and position(t)
    J1 = J1 + norm(x_t((n*(t-1)+1 + n):(n*(t-1)+2 + n)) - x_t((n*(t-1)+1):(n*(t-1)+2)))^2;
end


J = J1;

end 


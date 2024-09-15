clear;
a_1 = 2;
a_0 = 4;
b_1 = 3;
b_0 = 5;
k_1 = 4;
k_0 = 4;

A = [-a_1 1; -a_0 0];
b = [b_1; b_0];
C = [1 0];
theta = [k_0-a_0; k_1-a_1; b_0; b_1];
A_0 = [-k_1 1; -k_0 0];
gamma = 0.25;

out = sim('scheme_u1.slx', 15000);
result=[out.ex_norm.Time, out.ex_norm.Data];
csvwrite(string(gamma) + '_ex_norm_1.csv', result);
% result=cat(2, out.theta_tilde.Time, out.theta_tilde.Data)
csvwrite(string(gamma) + '_theta_tilde_1.csv', out.theta_tilde.Data);

% out = sim('scheme_u2.slx', 500);
% result=[out.ex_norm.Time, out.ex_norm.Data];
% csvwrite(string(gamma) + '_ex_norm_2.csv', result);
% % result=cat(2, out.theta_tilde.Time, out.theta_tilde.Data)
% csvwrite(string(gamma) + '_theta_tilde_2.csv', out.theta_tilde.Data);

clear;
a_0 = 9;
a_1 = 6;
b_0 = 2;

k_M_1 = 10;
k_M_0 = 25;

k_0 = 7;

Lambda = -k_0;
gamma = 0.25;
is_zero = true;

% for gamma = [0.1, 1e2, 1e4]
%    out = sim('model_0.slx', 5);
%    csvwrite('0_' + string(gamma) + '_time.csv', out.y_m.Time);
%    csvwrite('0_' + string(gamma) + '_epsilon.csv', out.y_m.Data - out.y.Data);
%    % csvwrite('0_' + string(gamma) + '_y.csv', out.y.Data);
%    csvwrite('0_' + string(gamma) + '_u.csv', out.u.Data);
%    csvwrite('0_' + string(gamma) + '_psi_p_hat.csv', out.psi_p_hat.Data);
% end

is_zero = false;
for gamma = [0.1, 1e2, 1e4]
   out = sim('model_0.slx', 100);
   csvwrite('1_' + string(gamma) + '_time.csv', out.y_m.Time);
   csvwrite('1_' + string(gamma) + '_epsilon.csv', out.y_m.Data - out.y.Data);
   % csvwrite('1_' + string(gamma) + '_y.csv', out.y.Data);
   csvwrite('1_' + string(gamma) + '_u.csv', out.u.Data);
   csvwrite('1_' + string(gamma) + '_psi_p_hat.csv', out.psi_p_hat.Data);
end

% out = sim('scheme_u1.slx', 15000);
% result=[out.ex_norm.Time, out.ex_norm.Data];
% csvwrite(string(gamma) + '_ex_norm_1.csv', result);
% % result=cat(2, out.theta_tilde.Time, out.theta_tilde.Data)
% csvwrite(string(gamma) + '_theta_tilde_1.csv', out.theta_tilde.Data);

% out = sim('scheme_u2.slx', 500);
% result=[out.ex_norm.Time, out.ex_norm.Data];
% csvwrite(string(gamma) + '_ex_norm_2.csv', result);
% % result=cat(2, out.theta_tilde.Time, out.theta_tilde.Data)
% csvwrite(string(gamma) + '_theta_tilde_2.csv', out.theta_tilde.Data);

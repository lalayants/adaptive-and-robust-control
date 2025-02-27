clear;
a_1 = 2;
a_0 = -3;
b_0 = 2;

k_M_1 = 5;
k_M_0 = 6;

b_M_0 = 1;

Lambda = -b_0;
mu_1 = 1;
mu_2 = 2;
mu_3 = 3;
gamma_0 = diag([1 1 1 0.01]) * 10000;

ss_obj = ss(tf([b_0], [1, a_1, a_0]));
if rank(ctrb(ss_obj)) == 2
    disp('Controllable, U =');
    disp(ctrb(ss_obj))
end
if rank(obsv(ss_obj)) == 2
    disp('Observable, V =');
    disp(obsv(ss_obj))
end
disp('Poles: ');
disp(pole(ss_obj));

% for gamma = [0.1, 1e2, 1e4]
%    out = sim('model_0.slx', 1000);
%    csvwrite('0_' + string(gamma) + '_time.csv', out.y_m.Time);
%    csvwrite('0_' + string(gamma) + '_epsilon.csv', out.y_m.Data - out.y.Data);
%    % csvwrite('0_' + string(gamma) + '_y.csv', out.y.Data);
%    csvwrite('0_' + string(gamma) + '_u.csv', out.u.Data);
%    csvwrite('0_' + string(gamma) + '_psi_p_hat.csv', out.psi_p_hat.Data);
% end
% 
% is_zero = false;
% for gamma = [0.1, 1e2, 1e4]
%    out = sim('model_0.slx', 1000);
%    csvwrite('1_' + string(gamma) + '_time.csv', out.y_m.Time);
%    csvwrite('1_' + string(gamma) + '_epsilon.csv', out.y_m.Data - out.y.Data);
%    % csvwrite('1_' + string(gamma) + '_y.csv', out.y.Data);
%    csvwrite('1_' + string(gamma) + '_u.csv', out.u.Data);
%    csvwrite('1_' + string(gamma) + '_psi_p_hat.csv', out.psi_p_hat.Data);
% end

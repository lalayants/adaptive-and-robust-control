clear;
a_0 = 9;
a_1 = 6;
b_0 = 2;

k_M_1 = 10;
k_M_0 = 25;

k_0 = 1;

Lambda = -k_0;
gamma = 10000;
is_zero = true;
gammas = [1, 100, 10000];
[Ass, Bss, Css, Dss] = tf2ss(b_0,[a_1,a_0]);
init_ss = 1;
for gamma = gammas
   display(gamma);
   out = sim('lab8.slx', 100000);
   csvwrite('0_' + string(gamma) + '_time.csv', out.y_m.Time);
   csvwrite('0_' + string(gamma) + '_epsilon.csv', out.y_m.Data - out.y.Data);
   % csvwrite('0_' + string(gamma) + '_y.csv', out.y.Data);
   csvwrite('0_' + string(gamma) + '_u.csv', out.u.Data);
   csvwrite('0_' + string(gamma) + '_psi_p_hat.csv', out.psi_p_hat.Data);
end

is_zero = false;
for gamma = gammas
   display(gamma);
   out = sim('lab8.slx', 100000);
   csvwrite('1_' + string(gamma) + '_time.csv', out.y_m.Time);
   csvwrite('1_' + string(gamma) + '_epsilon.csv', out.y_m.Data - out.y.Data);
   % csvwrite('1_' + string(gamma) + '_y.csv', out.y.Data);
   csvwrite('1_' + string(gamma) + '_u.csv', out.u.Data);
   csvwrite('1_' + string(gamma) + '_psi_p_hat.csv', out.psi_p_hat.Data);
end

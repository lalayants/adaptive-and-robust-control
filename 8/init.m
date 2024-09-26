clear;
a_0 = 9;
a_1 = 6;
b_0 = 2;

k_M_1 = 10;
k_M_0 = 25;

k_0 = 1;

Lambda = -k_0;
gamma = 0.25;
is_zero = true;

for gamma = [1, 10, 100]
   display(gamma);
   out = sim('model_0.slx', 50);
   csvwrite('0_' + string(gamma) + '_time.csv', out.y_m.Time);
   csvwrite('0_' + string(gamma) + '_epsilon.csv', out.y_m.Data - out.y.Data);
   % csvwrite('0_' + string(gamma) + '_y.csv', out.y.Data);
   csvwrite('0_' + string(gamma) + '_u.csv', out.u.Data);
   csvwrite('0_' + string(gamma) + '_psi_p_hat.csv', out.psi_p_hat.Data);
end

is_zero = false;
for gamma = [1, 10, 100]
   display(gamma);
   out = sim('model_0.slx', 50);
   csvwrite('1_' + string(gamma) + '_time.csv', out.y_m.Time);
   csvwrite('1_' + string(gamma) + '_epsilon.csv', out.y_m.Data - out.y.Data);
   % csvwrite('1_' + string(gamma) + '_y.csv', out.y.Data);
   csvwrite('1_' + string(gamma) + '_u.csv', out.u.Data);
   csvwrite('1_' + string(gamma) + '_psi_p_hat.csv', out.psi_p_hat.Data);
end

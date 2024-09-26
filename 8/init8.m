clear;
a_0 = 9;
a_1 = 6;
b_0 = 2;

k_M_1 = 10;
k_M_0 = 25;

k_0 = 7;

Lambda = -k_0;
gamma = 0.25;

[Ass, Bss, Css, Dss] = tf2ss(b_0,[a_1,a_0]);
init_ss = 10;
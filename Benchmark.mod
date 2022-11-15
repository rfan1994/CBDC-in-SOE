//%------------------------------------------------------------
//% THIS DYNARE FILE SIMULATES TANK WITH CBDC AND BANK
//%------------------------------------------------------------


//%------------------------------------------------------------
//% Declare endogenous and exogenous variables
//%------------------------------------------------------------

//% SHOCKS
//% 1 TFP, 2 government purchase, 3 foreign output, 4 foreign interest rate
//% Policy shock
var a_a a_g a_y_star a_r_star;
varexo eps_a eps_g eps_y_star eps_r_star eps_m;

//% Aggregate
//% 5 consumption, 6 labor, 7 capital, 8 investment, 9 output, 10 welfare
var c h k i y_h v;

//% HH UNCONSTRAINED
//% 11 lagrange, 12 consumption, 13 labor, 14 deposit, 15 bond, 16 foreign bond, 17 welfare
var lm1 c1 h1 d1 b1 b_f1 v1;

//% HH CONSTRAINED
//% 18 lagrange, 19 consumption, 20 labor, 21 welfare
var lm2 c2 h2 v2;

//% BANK AND FIRM
//% 22 deposit rate, 23 capital rate, 24 wage, 25 capital price, 26 markup, 27 domestic inflation
var r_d r_k w q mc pi_h;

//% FOREIGN
//% 28 inflation, 29 domestic price, 30 real exchange rate, 31 change in exchange rate
var pi p_h s delta_e;

//% GOVERNMENT
//% 32 bond rate, 33 transfer1, 34 transfer2 
var r t1 t2;

//% OTHERS
//% 35 output, 36-38 consumption 
//% 39 interest rate, 40 deposit rate, 41 domestic inflation
//% 42 domestic price, 43 real exchange, 44 terms of trade, 45 CPI inflation
//% 46 wage, 47 deposit
var log_y log_c log_c1 log_c2;
var log_r log_r_d log_pi_h; 
var log_p_h log_s log_tot log_pi;
var log_w log_d1;

//%-----------------------------------------------------------------------
//% Declare model parameters
//%------------------------------------------------------------------------

//% AGGREGATE
//% RT share
parameters LAMBDA;
//% PREFERENCE
//% discount factor, IES, leisure weight, frisch
//% ES, home bias
//% transaction cost
parameters BETA SIGMA CHI PHI;
parameters ETA GAMMA GAMMA_STAR;
parameters A B;
//% PRODUCTION
//% capital share, depreciation, price adjustment, ES
parameters ALPHA DELTA KAPPA_P EPSILON;
//% FINANCE
//% investment adjustment, ES
//% foreign adjustment, foreign bond
parameters KAPPA_I EPSILON_B;
parameters KAPPA_B BF_BAR;
//% Fiscal
parameters PHI_B PHI_M PHI_G B_BAR M_BAR T1_BAR T2_BAR;
//% MONETARY
//% taylor rule
parameters RHO_R PHI_PI PHI_Y PHI_E R_BAR PI_BAR Y_BAR E_BAR;
//% CBDC spread
parameters DELTA_M;
//% SHOCKS
parameters RHO_A RHO_Z RHO_G RHO_Y_STAR RHO_R_STAR; 
parameters A_BAR Z_BAR G_BAR Y_STAR_BAR R_STAR_BAR;
parameters STDERR_A STDERR_Z STDERR_G STDERR_Y_STAR STDERR_R_STAR STDERR_M;

//% Steady state
Y_BAR = 1.42648*0.98886; 

//% Parameters
LAMBDA = 0.05;
BETA = 0.997;
SIGMA = 2;
CHI = 3.4;
PHI = 1;
A = 2;
B = 0.005; 
ALPHA = 0.33;
DELTA = 0.025;
KAPPA_P = 2;
EPSILON = 4;
KAPPA_I = 5.46; 
EPSILON_B = 3;
PHI_B = 1;
PHI_M = 1;
PHI_G = 1;
B_BAR = 2;
M_BAR = 0;
T1_BAR = 0;
T2_BAR = 0;
RHO_R = 0.5;
PHI_PI = 10;
PHI_Y = 10;
R_BAR = 1.02/0.997;
PI_BAR = 1.02;
DELTA_M = 0.2;
RHO_A = 0.96;
RHO_Z = 0.95; 
RHO_G = 0.95; 
A_BAR = 1; 
Z_BAR = 1; 
G_BAR = 0; 
STDERR_A = 0.015;
STDERR_Z = 0.01;
STDERR_G = 0.01;
STDERR_M = 0.25;

//% SOE
ETA = 2;
GAMMA = 0.9;
GAMMA_STAR = 0.1;
KAPPA_B = 5; 
BF_BAR = 0.5;
E_BAR = 1.02;
PHI_E = 2;
Y_STAR_BAR = 1;
R_STAR_BAR = 1/BETA;
RHO_Y_STAR = 0.95;
RHO_R_STAR = 0.99;
STDERR_Y_STAR = 0.01;
STDERR_R_STAR = 0.01;

//%------------------------------------------------------------
//% Model equations
//%------------------------------------------------------------

model;

//% AGGREGATE
//% 1 TFP
log(a_a) = (1-RHO_A)*log(A_BAR)+RHO_A*log(a_a(-1))-eps_a;

//% 2 consumption
c = (1-LAMBDA)*c1+LAMBDA*c2;

//% 3 labor
h = (1-LAMBDA)*h1+LAMBDA*h2;

//% 4 capital
k = (1-LAMBDA)*d1;

//% 5 resource constraint
y_h = GAMMA*p_h^(-ETA)*(c+i)+a_g+KAPPA_P/2*(pi_h-PI_BAR)^2*y_h+GAMMA_STAR*(p_h/s)^(-ETA)*a_y_star;

//% 6 welfare
v = (1-LAMBDA)*v1+LAMBDA*v2;

//% HH UNCONSTRAINED
//% 7 lagrange
c1^(-SIGMA) = lm1;

//% 8 labor 
h1^PHI = lm1*w/CHI;

//% 9 deposit 
lm1 = BETA*lm1(+1)*r_d/pi(+1);

//% 10 bond
lm1 = BETA*lm1(+1)*r/pi(+1);

//% 11 foreign bond
lm1*(1+(1-LAMBDA)*KAPPA_B*((1-LAMBDA)*b_f1-BF_BAR)) = BETA*lm1(+1)*s(+1)/s*a_r_star;

//% 12 welfare
v1 = c1^(1-SIGMA)/(1-SIGMA)-CHI*h1^(1+PHI)/(1+PHI)+BETA*v1(+1);

//% HH CONSTRAINED
//% 13 lagrange
c2^(-SIGMA) = lm2;

//% 14 labor 
h2^PHI = lm2*w/CHI;

//% 15 BC
c2 = w*h2-t2;

//% 16 welfare
v2 = c2^(1-SIGMA)/(1-SIGMA)-CHI*h2^(1+PHI)/(1+PHI)+BETA*v2(+1);

//% BANK 
//% 17 deposit rate
r_d = (BETA*lm1(+1)*(r_k(+1)+(1-DELTA)*q(+1))-(q-1)*lm1)/(BETA*lm1(+1)/pi(+1));

//% 18 capital price
lm1 = q*lm1*(1-KAPPA_I/2*(i/i(-1)-1)^2-KAPPA_I*(i/i(-1)-1)*i/i(-1))
    + BETA*q(+1)*lm1(+1)*KAPPA_I*(i(+1)/i-1)*(i(+1)/i)^2;

//% 19 capital LOM 
k = (1-DELTA)*k(-1)+(1-KAPPA_I/2*(i/i(-1)-1)^2)*i;

//% FIRM
//% 20 output
y_h = a_a*k(-1)^ALPHA*h^(1-ALPHA);

//% 21 capital rate 
r_k = ALPHA*mc*y_h/k(-1);

//% 22 wage
w = (1-ALPHA)*mc*y_h/h;

//% 23 domestic inflation 
EPSILON/KAPPA_P*(mc/p_h-(EPSILON-1)/EPSILON) 
= (pi_h-PI_BAR)*pi_h-BETA*lm1(+1)/lm1*(pi_h(+1)-PI_BAR)*pi_h(+1)*p_h(+1)*y_h(+1)/(p_h*y_h);

//% FOREIGN
//% 24 inflation
pi_h = p_h/p_h(-1)*pi;

//% 25 domestic price 
p_h*y_h = c+i+p_h*a_g+KAPPA_P/2*(pi_h-PI_BAR)^2+s*(1-LAMBDA)*(b_f1-a_r_star(-1)*b_f1(-1)+KAPPA_B/2*((1-LAMBDA)*b_f1-BF_BAR)^2);

//% 26 real exchange rate
1 = GAMMA*p_h^(1-ETA)+(1-GAMMA)*s^(1-ETA);

//% 27 change in exchange rate
delta_e = s/s(-1)*pi;

//% 28 output
log(a_y_star) = (1-RHO_Y_STAR)*log(Y_STAR_BAR)+RHO_Y_STAR*log(a_y_star(-1))+eps_y_star;

//% 29 real interest rate
log(a_r_star) = (1-RHO_R_STAR)*log(R_STAR_BAR)+RHO_R_STAR*log(a_r_star(-1))+eps_r_star;

//% GOVERNMENT 
//% 30 interest rate
r/R_BAR = (r(-1)/R_BAR)^RHO_R*((pi/PI_BAR)^PHI_PI*(p_h*y_h/Y_BAR)^PHI_Y*(delta_e/E_BAR)^PHI_E)^(1-RHO_R)*exp(eps_m);
//% r = R_BAR*exp(eps_m);

//% 31 balance sheet
//% a_g+r(-1)/pi*(1-LAMBDA)*b1(-1)+r_m(-1)/pi*LAMBDA*m2(-1)
//% = (1-LAMBDA)*t1+LAMBDA*t2+(1-LAMBDA)*b1+LAMBDA*m2;
b1 = B_BAR/(1-LAMBDA);

//% 32 government purchase 
//% log(a_g) = (1-RHO_G)*log(G_BAR)+RHO_G*log(a_g(-1))+eps_g;
a_g = G_BAR*exp(eps_g);

//% 33 tax unconstrained 
//% t1-T1_BAR = PHI_B*((1-LAMBDA)*b1(-1)-B_BAR)+PHI_M*((1-LAMBDA)*m1(-1)+PHI_G*(a_g(-1)-G_BAR);
t1 = a_g+r(-1)/pi*(1-LAMBDA)*b1(-1)-(1-LAMBDA)*b1;

//% 34 tax constrained 
//% t2-T2_BAR = PHI_B*((1-LAMBDA)*b1(-1)-B_BAR)+PHI_M*((1-LAMBDA)*m1(-1)+PHI_G*(a_g(-1)-G_BAR);
t2 = a_g+r(-1)/pi*(1-LAMBDA)*b1(-1)-(1-LAMBDA)*b1;

//% OTHERS
//% 35 output 
log_y = log(p_h*y_h);

//% 36-38 consumption
log_c = log(c);
log_c1 = log(c1);
log_c2 = log(c2);

//% 39 interest rate
log_r = log(r);

//% 40 deposit rate
log_r_d = log(r_d);

//% 41 domestic inflation
log_pi_h = log(pi_h);

//% 42 domestic price
log_p_h = log(p_h);

//% 43 real exchange
log_s = log(s);

//% 44 terms of trade
log_tot = log(p_h/s);

//% 45 CPI inflation
log_pi = log(pi);

//% 46 CPI inflation
log_w = log(w);

//% 47 deposit
log_d1 = log(d1);


end;

//%------------------------------------------------------------
//% Call steady state
//%------------------------------------------------------------

initval;
a_a = 1;
a_g = 0;
a_y_star = 1;
a_r_star = 1.00301;
c = 0.989101;
h = 0.438397;
k = 11.2001;
i = 0.280001;
y_h = 1.2773;
v = -446.999;
lm1 = 1.00731;
c1 = 0.996367;
h1 = 0.430421;
d1 = 11.7895;
b1 = 2.10526;
b_f1 = 0.526316;
v1 = -439.531;
lm2 = 1.38063;
c2 = 0.851062;
h2 = 0.589943;
v2 = -588.886;
r_d = 1.02307;
r_k = 0.028009;
w = 1.45282;
q = 1;
mc = 0.744235;
pi_h = 1.02;
pi = 1.02;
p_h = 0.992313;
s = 1.07494;
delta_e = 1.02;
r = 1.02307;
t1 = 0.00601805;
t2 = 0.00601805;
end;

steady(solve_algo = 4, maxit = 5000);

//%------------------------------------------------------------
//% Declare shocks
//%------------------------------------------------------------

shocks;
var eps_a;  stderr STDERR_A;
var eps_g;  stderr STDERR_G;
var eps_y_star;  stderr STDERR_Y_STAR;
var eps_r_star;  stderr STDERR_R_STAR;
var eps_m;  stderr STDERR_M;
end;

//%------------------------------------------------------------
//% TO SEE PROPERTIES OF MODEL
//%------------------------------------------------------------

stoch_simul(nograph, order = 2, hp_filter = 1600, irf = 101) 
v1 v2 v;

stoch_simul(nograph, order = 1, hp_filter = 1600, irf = 101) 
log_y log_c log_c1 log_c2 log_r log_r_d log_pi_h log_p_h log_s log_tot log_pi log_w log_d1;




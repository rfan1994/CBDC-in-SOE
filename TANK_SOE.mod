//%------------------------------------------------------------
//% THIS DYNARE FILE SIMULATES TANK WITH CBDC AND BANK
//%------------------------------------------------------------


//%------------------------------------------------------------
//% Declare endogenous and exogenous variables
//%------------------------------------------------------------

//% SHOCKS
//% 1 TFP, 2 liquidity shock, 3 government purchase, 4 foreign output, 5 foreign interest rate
//% Monetary policy shock
var a_a a_z a_g a_y_star a_r_star;
varexo eps_a eps_z eps_g eps_y_star eps_r_star eps_m;

//% Aggregate
//% 6 consumption, 7 labor, 8 capital, 9 investment, 10 output, 11 welfare
var c h k i y_h v;

//% HH UNCONSTRAINED
//% 12 lagrange, 13 consumption, 14 labor, 15 deposit, 16 dollar deposit, 17 bond, 18 foreign bond
//% 19 liquidity, 20 transaction cost, 21 transaction markup, 22 welfare
var lm1 c1 h1 d1 d_f1 b1 b_f1 l1 s1 tau1 v1;

//% HH CONSTRAINED
//% 23 lagrange, 24 consumption, 25 labor, 26 cash, 27 dollar, 28 CBDC
//% 29 liquidity, 30 transaction cost, 31 transaction markup, 32 welfare
var lm2 c2 h2 m2 m_f2 cbdc2 l2 s2 tau2 v2;

//% BANK AND FIRM
//% 33 deposit rate, 34 dollar deposit rate
//% 35 capital rate, 36 wage, 37 capital price, 38 markup, 39 domestic inflation
var r_d r_df r_k w q mc pi_h;

//% FOREIGN
//% 40 inflation, 41 domestic price, 42 real exchange rate, 43 change in exchange rate
var pi p_h s delta_e;

//% GOVERNMENT
//% 44 bond rate, 45 tax revenue, 46 transfer1, 47 transfer2 
var r tax t1 t2;

//% OTHERS
var log_y log_c log_c1 log_c2 log_r log_r_d log_w log_pi_h log_pi log_tot log_l2 log_m2 log_cbdc2;

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
//% cash cost, transaction ES
parameters BETA SIGMA CHI PHI;
parameters ETA GAMMA GAMMA_STAR;
parameters A B;
parameters DELTA_M EPSILON_M;
//% PRODUCTION
//% capital share, depreciation, price adjustment, production ES
parameters ALPHA DELTA KAPPA_P EPSILON;
//% FINANCE
//% investment adjustment, deposit ES
//% foreign adjustment cost
parameters KAPPA_I EPSILON_B;
parameters KAPPA_B KAPPA_D KAPPA_M BF_BAR DF_BAR MF_BAR;
//% Fiscal
parameters TAU_C PHI_B PHI_M PHI_G B_BAR M_BAR T1_BAR T2_BAR;
//% MONETARY
//% taylor rule
parameters RHO_R PHI_PI PHI_Y PHI_E R_BAR PI_BAR Y_BAR E_BAR;
//% SHOCKS
parameters RHO_A RHO_Z RHO_G RHO_Y_STAR RHO_R_STAR; 
parameters A_BAR Z_BAR G_BAR Y_STAR_BAR R_STAR_BAR;
parameters STDERR_A STDERR_Z STDERR_G STDERR_Y_STAR STDERR_R_STAR STDERR_M;

//% AGGREGATE
//% RT share
LAMBDA = 0.2;
//% PREFERENCE
//% discount factor, IES, leisure weight, frisch
//% ES, home bias
//% transaction cost, transaction ES
BETA = 0.99;
SIGMA = 2;
CHI = 1;
PHI = 3;
ETA = 2;
GAMMA = 0.58;
GAMMA_STAR = 0.27;
A = 0.9;
B = 0.7; 
DELTA_M = 0.1;
EPSILON_M = 2;
//% PRODUCTION
//% capital share, depreciation, price adjustment, production ES
ALPHA = 0.33;
DELTA = 0.025;
KAPPA_P = 2;
EPSILON = 6;
//% FINANCE
//% investment adjustment, deposit ES
//% foreign adjustment cost
KAPPA_I = 1.728; 
EPSILON_B = 3; 
KAPPA_B = 2; 
KAPPA_D = 1; 
KAPPA_M = 1; 
BF_BAR = 0.05;
DF_BAR = 0;
MF_BAR = 0;
//% Fiscal
TAU_C = 0.12;
PHI_B = 1;
PHI_M = 1;
PHI_G = 1;
B_BAR = 2;
M_BAR = 0;
T1_BAR = 0;
T2_BAR = 0;
//% MONETARY
//% taylor rule
RHO_R = 0.5;
PHI_PI = 2;
PHI_Y = 2;
PHI_E = 10;
PI_BAR = 1.03;
R_BAR = PI_BAR/BETA;
Y_BAR = 0.852787*2.25038;
E_BAR = 1;
//% SHOCKS
RHO_A = 0.9;
RHO_Z = 0.7217; 
RHO_G = 0.8; 
Y_STAR_BAR = 1;
R_STAR_BAR = 1/BETA;
A_BAR = 1; 
Z_BAR = 1; 
G_BAR = 0.3; 
RHO_Y_STAR = 0.6031;
RHO_R_STAR = 0.5374;
STDERR_A = 0.0711;
STDERR_Z = 0.0694;
STDERR_G = 0.05;
STDERR_Y_STAR = 0.0788;
STDERR_R_STAR = 0.0799;
STDERR_M = 0.25;

//%------------------------------------------------------------
//% Model equations
//%------------------------------------------------------------

model;

//% AGGREGATE
//% 1 TFP
log(a_a) = (1-RHO_A)*log(A_BAR)+RHO_A*log(a_a(-1))-eps_a;

//% 2 Liquidity
log(a_z) = (1-RHO_Z)*log(Z_BAR)+RHO_Z*log(a_z(-1))-eps_z;

//% 3 consumption
c = (1-LAMBDA)*c1+LAMBDA*c2;

//% 4 labor
h = (1-LAMBDA)*h1+LAMBDA*h2;

//% 5 capital
k = (1-LAMBDA)*d1;

//% 6 resource constraint
y_h*(1-KAPPA_P/2*(pi_h-PI_BAR)^2) = GAMMA*p_h^(-ETA)*((1-LAMBDA)*(1+s1)*c1+LAMBDA*((1+s2)*c2+DELTA_M*(m2(-1)/pi+m_f2*s/s(-1)))+i)+a_g+GAMMA_STAR*(p_h/s)^(-ETA)*a_y_star;

//% 7 welfare
v = (1-LAMBDA)*v1+LAMBDA*v2;

//% HH UNCONSTRAINED
//% 8 lagrange
c1^(-SIGMA) = lm1*(1+s1+tau1+TAU_C);

//% 9 labor 
h1^PHI = lm1*w/CHI;

//% 10 deposit 
lm1*(1-c1/l1*tau1) = BETA*lm1(+1)*r_d/pi(+1);

//% 11 dollar deposit 
//% lm1*(1-c1/l1*tau1+KAPPA_D*(1-LAMBDA)*((1-LAMBDA)*d_f1-DF_BAR)) = BETA*lm1(+1)*r_df*s(+1)/s;
d_f1 = 0;

//% 12 bond
lm1 = BETA*lm1(+1)*r/pi(+1);

//% 13 foreign bond
lm1*(1+KAPPA_B*(1-LAMBDA)*((1-LAMBDA)*b_f1-BF_BAR)) = BETA*lm1(+1)*s(+1)/s*a_r_star;

//% 14 liquidity
l1 = d1+s*d_f1;

//% 15 transaction cost
//% s1 = a_z*A*c1/l1+B*l1/c1-2*(A*B)^0.5;
s1 = 0;

//% 16 transaction markup
//% tau1 = a_z*A*c1/l1-B*l1/c1;
tau1 = 0;

//% 17 welfare
v1 = c1^(1-SIGMA)/(1-SIGMA)-CHI*h1^(1+PHI)/(1+PHI)+BETA*v1(+1);

//% HH CONSTRAINED
//% 18 lagrange
c2^(-SIGMA) = lm2*(1+s2+tau2+TAU_C*cbdc2/l2);

//% 19 labor 
h2^PHI = lm2*w/CHI;

//% 20 cash
lm2*(1-c2/l2*(tau2+TAU_C*cbdc2/l2)*(l2/(m2+s*m_f2))^(1/EPSILON_M)) = BETA*lm2(+1)*(1-DELTA_M)/pi(+1);

//% 21 dollar
//% lm2*(1-c2/l2*(tau2+TAU_C*cbdc2/l2)*(l2/(m2+s*m_f2))^(1/EPSILON_M)+KAPPA_M*LAMBDA*(LAMBDA*m_f2-MF_BAR)) = BETA*lm2(+1)*(1-DELTA_M)*s(+1)/s;
m_f2 = 0;

//% 22 CBDC
//% lm2*(1-c2/l2*(tau2+TAU_C*cbdc2/l2)*(l2/cbdc2)^(1/EPSILON_M)+TAU_C*cbdc2/l2) = BETA*lm2(+1)/pi(+1);
cbdc2 = 0;

//% 23 liquidity
l2 = (m2^((EPSILON_M-1)/EPSILON_M)+(s*m_f2)^((EPSILON_M-1)/EPSILON_M)+cbdc2^((EPSILON_M-1)/EPSILON_M))^(EPSILON_M/(EPSILON_M-1));

//% 24 transaction cost
s2 = a_z*A*c2/l2+B*l2/c2-2*(A*B)^0.5;

//% 25 transaction markup
tau2 = a_z*A*c2/l2-B*l2/c2;

//% 26 BC
(1+s2+TAU_C*cbdc2/l2)*c2+(m2-(1-DELTA_M)*m2(-1)/pi)+s*(m_f2-(1-DELTA_M)*m_f2*s/s(-1))+(cbdc2-cbdc2(-1)/pi) = w*h2-t2-KAPPA_M/2*s*(LAMBDA*m_f2-MF_BAR)^2;

//% 27 welfare
v2 = c2^(1-SIGMA)/(1-SIGMA)-CHI*h2^(1+PHI)/(1+PHI)+BETA*v2(+1);

//% BANK 
//% 28 deposit rate
//% r_d = EPSILON_B/(EPSILON_B-1)*(BETA*lm1(+1)*(r_k(+1)+(1-DELTA)*q(+1))-(q-1)*lm1)/(BETA*lm1(+1)/pi(+1))-1/(EPSILON_B-1)*r;
r_d = (BETA*lm1(+1)*(r_k(+1)+(1-DELTA)*q(+1))-(q-1)*lm1)/(BETA*lm1(+1)/pi(+1));

//% 29 dollar deposit rate
//% r_df = EPSILON_B/(EPSILON_B-1)*(BETA*lm1(+1)*(r_k(+1)+(1-DELTA)*q(+1))-(q-1)*lm1)/(BETA*lm1(+1)*s(+1)/s)-1/(EPSILON_B-1)*a_r_star*(1+KAPPA_D*(1-LAMBDA)*((1-LAMBDA)*d_f1-DF_BAR))/(1+KAPPA_B*(1-LAMBDA)*((1-LAMBDA)*b_f1-BF_BAR));
r_df = (BETA*lm1(+1)*(r_k(+1)+(1-DELTA)*q(+1))-(q-1)*lm1)/(BETA*lm1(+1)*s(+1)/s);

//% 30 capital price
lm1 = q*lm1*(1-KAPPA_I/2*(i/i(-1)-1)^2-KAPPA_I*(i/i(-1)-1)*i/i(-1))
    + BETA*q(+1)*lm1(+1)*KAPPA_I*(i(+1)/i-1)*(i(+1)/i)^2;

//% 31 capital LOM 
k = (1-DELTA)*k(-1)+(1-KAPPA_I/2*(i/i(-1)-1)^2)*i;

//% FIRM
//% 32 output
y_h = a_a*k(-1)^ALPHA*h^(1-ALPHA);

//% 33 capital rate 
r_k = ALPHA*mc*y_h/k(-1);

//% 34 wage
w = (1-ALPHA)*mc*y_h/h;

//% 35 domestic inflation 
EPSILON/KAPPA_P*(mc/p_h-(EPSILON-1)/EPSILON) 
= (pi_h-PI_BAR)*pi_h-BETA*lm1(+1)/lm1*(pi_h(+1)-PI_BAR)*pi_h(+1)*p_h(+1)*y_h(+1)/(p_h*y_h);

//% FOREIGN
//% 36 inflation
pi_h = p_h/p_h(-1)*pi;

//% 37 domestic price 
p_h*y_h*(1-KAPPA_P/2*(pi_h-PI_BAR)^2) = (1-LAMBDA)*(1+s1)*c1+LAMBDA*(1+s2)*c2+i+p_h*a_g
                                      + s*(1-LAMBDA)*(b_f1-a_r_star(-1)*b_f1(-1))+s*LAMBDA*(m_f2-m_f2(-1))
                                      + LAMBDA*DELTA_M*(m2(-1)/pi+m_f2(-1)*s/s(-1))
                                      + KAPPA_B/2*s*(1-LAMBDA)*((1-LAMBDA)*b_f1-BF_BAR)^2+KAPPA_D/2*s*(1-LAMBDA)*((1-LAMBDA)*d_f1-DF_BAR)^2+KAPPA_M/2*s*LAMBDA*(LAMBDA*m_f2-MF_BAR)^2;

//% 38 real exchange rate
1 = GAMMA*p_h^(1-ETA)+(1-GAMMA)*s^(1-ETA);

//% 39 change in exchange rate
delta_e = s/s(-1)*pi;

//% 40 output
log(a_y_star) = (1-RHO_Y_STAR)*log(Y_STAR_BAR)+RHO_Y_STAR*log(a_y_star(-1))+eps_y_star;

//% 41 real interest rate
log(a_r_star) = (1-RHO_R_STAR)*log(R_STAR_BAR)+RHO_R_STAR*log(a_r_star(-1))+eps_r_star;

//% GOVERNMENT 
//% 42 interest rate
r/R_BAR = (r(-1)/R_BAR)^RHO_R*((pi/PI_BAR)^PHI_PI*(p_h*y_h/Y_BAR)^PHI_Y*(delta_e/E_BAR)^PHI_E)^(1-RHO_R)*exp(eps_m);
//% r = R_BAR*exp(eps_m);

//% 43 balance sheet
//% a_g+r(-1)/pi*(1-LAMBDA)*b1(-1)+r_m(-1)/pi*LAMBDA*m2(-1)
//% = (1-LAMBDA)*t1+LAMBDA*t2+(1-LAMBDA)*b1+LAMBDA*m2;
b1 = B_BAR/(1-LAMBDA);

//% 44 government purchase 
log(a_g) = (1-RHO_G)*log(G_BAR)+RHO_G*log(a_g(-1))+eps_g;

//% 45 tax revenue
tax = (1-LAMBDA)*TAU_C*c1+LAMBDA*TAU_C*cbdc2/l2*c2;

//% 46 tax unconstrained 
//% t1-T1_BAR = PHI_B*((1-LAMBDA)*b1(-1)-B_BAR)+PHI_M*((1-LAMBDA)*m1(-1)+LAMBDA*m2(-1)-M_BAR)+PHI_G*(a_g(-1)-G_BAR);
t1 = p_h*a_g-tax+(1-LAMBDA)*(r(-1)/pi*b1(-1)-b1)+LAMBDA*(m2(-1)/pi-m2+cbdc2(-1)/pi-cbdc2);

//% 47 tax constrained 
//% t2-T2_BAR = PHI_B*((1-LAMBDA)*b1(-1)-B_BAR)+PHI_M*((1-LAMBDA)*m1(-1)+LAMBDA*m2(-1)-M_BAR)+PHI_G*(a_g(-1)-G_BAR);
t2 = p_h*a_g-tax+(1-LAMBDA)*(r(-1)/pi*b1(-1)-b1)+LAMBDA*(m2(-1)/pi-m2+cbdc2(-1)/pi-cbdc2);

//% OTHERS
log_y = log(y_h);
log_c = log(c);
log_c1 = log(c1);
log_c2 = log(c2);
log_r = log(r);
log_r_d = log(r_d);
log_w = log(w);
log_pi_h = log(pi_h);
log_pi = log(pi);
log_tot = log(s/p_h);
log_l2 = log(l2);
log_m2 = log(m2/l2);
log_cbdc2 = 0;
end;

//%------------------------------------------------------------
//% Call steady state
//%------------------------------------------------------------

initval;
a_a = 1;
a_z = 1;
a_g = 0.3;
a_y_star = 1;
a_r_star = 1.0101;
c = 1.27107;
h = 0.88324;
k = 15.1045;
i = 0.377613;
y_h = 2.25412;
v = -95.6768;
lm1 = 0.497659;
c1 = 1.33945;
h1 = 0.846474;
d1 = 18.8806;
d_f1 = 0;
b1 = 2.5;
b_f1 = 0.0625;
l1 = 18.8806;
s1 = 0;
tau1 = 0;
v1 = -87.4927;
lm2 = 0.897401;
c2 = 0.997583;
h2 = 1.0303;
m2 = 1.05182;
m_f2 = 0;
cbdc2 = 0;
l2 = 1.05182;
s2 = 0.00419883;
tau2 = 0.115536;
v2 = -128.413;
r_d = 1.01076;
r_df = 1.0101;
r_k = 0.035101;
w = 1.21873;
q = 1;
mc = 0.712746;
pi_h = 1.00065;
pi = 1.00065;
p_h = 0.855395;
s = 1.30455;
delta_e = 1.00065;
r = 1.01076;
tax = 0.128587;
t1 = 0.148097;
t2 = 0.148097;
end;

steady(solve_algo = 4, maxit = 5000);


//%------------------------------------------------------------
//% Declare shocks
//%------------------------------------------------------------

shocks;
var eps_a;  stderr STDERR_A;
var eps_z;  stderr STDERR_Z;
var eps_g;  stderr STDERR_G;
var eps_y_star;  stderr STDERR_Y_STAR;
var eps_r_star;  stderr STDERR_R_STAR;
var eps_m;  stderr STDERR_M;
end;

//%------------------------------------------------------------
//% TO SEE PROPERTIES OF MODEL
//%------------------------------------------------------------

stoch_simul(nograph, order = 1, hp_filter = 100, irf = 101) 
log_y log_c log_c1 log_c2 log_r log_r_d log_w log_pi_h log_pi log_tot log_l2 log_m2 log_cbdc2;





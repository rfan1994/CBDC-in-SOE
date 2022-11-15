
%% Benchmark
clear; close all; clc;
addpath /Applications/Dynare/5.1/matlab
dynare Benchmark.mod

Variance = oo_.variance_decomposition;
varexo = {'eps_a','eps_g','eps_y*','eps_r*','eps_m'};
varexo_name = {'TFP shock','Government purchase shock','Foreign TFP shock','Foreign monetary shock','Monetary shock'};
var_list = {'log_y','log_c','log_c1','log_c2','log_r','log_r_d',...
            'log_pi_h','log_p_h','log_s','log_tot','log_pi','log_w','log_d1'};
var_list_name = {'Output','Consumption','Consumption (non RT)','Consumption (RT)','Interest rate','Deposit rate',...
                 'Domestic inflation','Domestic Price','Exchange rate','TOT','CPI Inflation','Wage','Deposit'};
var_list_name = categorical(var_list_name);
var_list_name = reordercats(var_list_name,{'Output','Consumption','Consumption (non RT)','Consumption (RT)','Interest rate','Deposit rate',...
                                           'Domestic inflation','Domestic Price','Exchange rate','TOT','CPI Inflation','Wage','Deposit'});
                                       
T = 0:5;  
% Monetary
figure('position',[10,10,1000,1000])
sgtitle('Benchmark: Monetary Shock')

subplot(4,3,1);
plot(T,100*log_y_eps_m(T+1),'LineWidth',1); 
title('Output')

subplot(4,3,2);
plot(T,100*log_c1_eps_m(T+1),'LineWidth',1); 
title('Consumption (non RT)')

subplot(4,3,3);
plot(T,100*log_c2_eps_m(T+1),'LineWidth',1); 
title('Consumption (RT)')

subplot(4,3,4);
plot(T,100*log_r_eps_m(T+1),'LineWidth',1); 
title('Interest Rate')

subplot(4,3,5);
plot(T,100*log_r_d_eps_m(T+1),'LineWidth',1); 
title('Deposit Rate')

subplot(4,3,6);
plot(T,100*log_pi_h_eps_m(T+1),'LineWidth',1); 
title('Domestic Inflation')

subplot(4,3,7);
plot(T,100*log_p_h_eps_m(T+1),'LineWidth',1); 
title('Domestic Price Level')

subplot(4,3,8);
plot(T,100*log_s_eps_m(T+1),'LineWidth',1); 
title('Real Exchange Rate')

subplot(4,3,9);
plot(T,100*log_tot_eps_m(T+1),'LineWidth',1); 
title('Terms of Trade')

subplot(4,3,10);
plot(T,100*log_pi_eps_m(T+1),'LineWidth',1); 
title('CPI inflation')

subplot(4,3,11);
plot(T,100*log_d1_eps_m(T+1),'LineWidth',1); 
title('Deposit')

T = 0:50;  
% TFP
figure('position',[10,10,1000,1000])
sgtitle('Benchmark: TFP Shock')

subplot(4,3,1);
plot(T,100*log_y_eps_a(T+1),'LineWidth',1); 
title('Output')

subplot(4,3,2);
plot(T,100*log_c1_eps_a(T+1),'LineWidth',1); 
title('Consumption (non RT)')

subplot(4,3,3);
plot(T,100*log_c2_eps_a(T+1),'LineWidth',1); 
title('Consumption (RT)')

subplot(4,3,4);
plot(T,100*log_r_eps_a(T+1),'LineWidth',1); 
title('Interest Rate')

subplot(4,3,5);
plot(T,100*log_r_d_eps_a(T+1),'LineWidth',1); 
title('Deposit Rate')

subplot(4,3,6);
plot(T,100*log_pi_h_eps_a(T+1),'LineWidth',1); 
title('Domestic Inflation')

subplot(4,3,7);
plot(T,100*log_p_h_eps_a(T+1),'LineWidth',1); 
title('Domestic Price Level')

subplot(4,3,8);
plot(T,100*log_s_eps_a(T+1),'LineWidth',1); 
title('Real Exchange Rate')

subplot(4,3,9);
plot(T,100*log_tot_eps_a(T+1),'LineWidth',1); 
title('Terms of Trade')

subplot(4,3,10);
plot(T,100*log_pi_eps_a(T+1),'LineWidth',1); 
title('CPI inflation')

subplot(4,3,11);
plot(T,100*log_d1_eps_a(T+1),'LineWidth',1); 
title('Deposit')
                          

% Foreign monetary
figure('position',[10,10,1000,1000])
sgtitle('Benchmark: Foreign Monetary Shock')

subplot(4,3,1);
plot(T,100*log_y_eps_r_star(T+1),'LineWidth',1); 
title('Output')

subplot(4,3,2);
plot(T,100*log_c1_eps_r_star(T+1),'LineWidth',1); 
title('Consumption (non RT)')

subplot(4,3,3);
plot(T,100*log_c2_eps_r_star(T+1),'LineWidth',1); 
title('Consumption (RT)')

subplot(4,3,4);
plot(T,100*log_r_eps_r_star(T+1),'LineWidth',1); 
title('Interest Rate')

subplot(4,3,5);
plot(T,100*log_r_d_eps_r_star(T+1),'LineWidth',1); 
title('Deposit Rate')

subplot(4,3,6);
plot(T,100*log_pi_h_eps_r_star(T+1),'LineWidth',1); 
title('Domestic Inflation')

subplot(4,3,7);
plot(T,100*log_p_h_eps_r_star(T+1),'LineWidth',1); 
title('Domestic Price Level')

subplot(4,3,8);
plot(T,100*log_s_eps_r_star(T+1),'LineWidth',1); 
title('Real Exchange Rate')

subplot(4,3,9);
plot(T,100*log_tot_eps_r_star(T+1),'LineWidth',1); 
title('Terms of Trade')

subplot(4,3,10);
plot(T,100*log_pi_eps_r_star(T+1),'LineWidth',1); 
title('CPI inflation')

subplot(4,3,11);
plot(T,100*log_d1_eps_r_star(T+1),'LineWidth',1); 
title('Deposit')


figure('Position',[100 100 800 300]);
bar(var_list_name,[Variance(:,1) Variance(:,3)+Variance(:,4) Variance(:,5)])  
legend('Technology Shock', 'International Shock', 'Monetary Shock','Location','SouthOutside','Orientation','horizontal','Box','off')

             


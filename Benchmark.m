
%% Benchmark
clear; close all; clc;
addpath /Applications/Dynare/5.1/matlab
dynare Benchmark.mod

Variance = oo_.variance_decomposition;
varexo = {'eps_a','eps_g','eps_y*','eps_r*','eps_m'};
varexo_name = {'TFP shock','Government purchase shock','Foreign TFP shock','Foreign monetary shock','Monetary shock'};
var_list = {'log_y','log_c1','log_c2','log_k','log_h1','log_h2',...
            'log_b','log_b_f','log_r_d','log_w','log_pi','log_tot'};
var_list_name = {'Output','Consumption (unconstrained)','Consumption (constrained)','Capital',...
                 'labor (unconstrained)','labor (constrained)','Domestic bond','Foreign bond',...
                 'Deposit rate','Wage','CPI Inflation','Terms of trade'};
var_list_name = categorical(var_list_name);
var_list_name = reordercats(var_list_name,{'Output','Consumption (unconstrained)','Consumption (constrained)','Capital',...
                                           'labor (unconstrained)','labor (constrained)','Domestic bond','Foreign bond',...
                                           'Deposit rate','Wage','CPI Inflation','Terms of trade'});

T = 0:50;  
% TFP
figure('position',[10,10,1000,1000])
sgtitle('Benchmark: TFP Shock')

subplot(4,3,1);
plot(T,100*log_y_eps_a(T+1),'LineWidth',1); 
title('Output')

subplot(4,3,2);
plot(T,100*log_c1_eps_a(T+1),'LineWidth',1); 
title('Consumption (unconstrained)')

subplot(4,3,3);
plot(T,100*log_c2_eps_a(T+1),'LineWidth',1); 
title('Consumption (constrained)')

subplot(4,3,4);
plot(T,100*log_k_eps_a(T+1),'LineWidth',1); 
title('Capital')

subplot(4,3,5);
plot(T,100*log_h1_eps_a(T+1),'LineWidth',1); 
title('Labor (unconstrained)')

subplot(4,3,6);
plot(T,100*log_h2_eps_a(T+1),'LineWidth',1); 
title('Labor (constrained)')

subplot(4,3,7);
plot(T,100*log_b_f_eps_a(T+1),'LineWidth',1); 
title('Foreign bond')

subplot(4,3,8);
plot(T,100*log_r_eps_a(T+1),'LineWidth',1); 
title('Nominal interest rate')

subplot(4,3,9);
plot(T,100*log_r_d_eps_a(T+1),'LineWidth',1); 
title('Deposit rate')

subplot(4,3,10);
plot(T,100*log_w_eps_a(T+1),'LineWidth',1); 
title('Wage')

subplot(4,3,11);
plot(T,100*log_pi_eps_a(T+1),'LineWidth',1); 
title('CPI Inflation')

subplot(4,3,12);
plot(T,100*log_tot_eps_a(T+1),'LineWidth',1); 
title('Terms of trade')
                          

T = 0:10;  
% Monetary
figure('position',[10,10,1000,1000])
sgtitle('Benchmark: Monetary Shock')

subplot(4,3,1);
plot(T,100*log_y_eps_m(T+1),'LineWidth',1); 
title('Output')

subplot(4,3,2);
plot(T,100*log_c1_eps_m(T+1),'LineWidth',1); 
title('Consumption (unconstrained)')

subplot(4,3,3);
plot(T,100*log_c2_eps_m(T+1),'LineWidth',1); 
title('Consumption (constrained)')

subplot(4,3,4);
plot(T,100*log_k_eps_m(T+1),'LineWidth',1); 
title('Capital')

subplot(4,3,5);
plot(T,100*log_h1_eps_m(T+1),'LineWidth',1); 
title('Labor (unconstrained)')

subplot(4,3,6);
plot(T,100*log_h2_eps_m(T+1),'LineWidth',1); 
title('Labor (constrained)')

subplot(4,3,7);
plot(T,100*log_b_f_eps_m(T+1),'LineWidth',1); 
title('Foreign bond')

subplot(4,3,8);
plot(T,100*log_r_eps_m(T+1),'LineWidth',1); 
title('Nominal interest rate')

subplot(4,3,9);
plot(T,100*log_r_d_eps_m(T+1),'LineWidth',1); 
title('Deposit rate')

subplot(4,3,10);
plot(T,100*log_w_eps_m(T+1),'LineWidth',1); 
title('Wage')

subplot(4,3,11);
plot(T,100*log_pi_eps_m(T+1),'LineWidth',1); 
title('CPI Inflation')

subplot(4,3,12);
plot(T,100*log_tot_eps_m(T+1),'LineWidth',1); 
title('Terms of trade')


T = 0:10; 
% Foreign interest rate
figure('position',[10,10,1000,1000])
sgtitle('Benchmark: Foreign Interest Rate Shock')

subplot(4,3,1);
plot(T,100*log_y_eps_r_star(T+1),'LineWidth',1); 
title('Output')

subplot(4,3,2);
plot(T,100*log_c1_eps_r_star(T+1),'LineWidth',1); 
title('Consumption (unconstrained)')

subplot(4,3,3);
plot(T,100*log_c2_eps_r_star(T+1),'LineWidth',1); 
title('Consumption (constrained)')

subplot(4,3,4);
plot(T,100*log_k_eps_r_star(T+1),'LineWidth',1); 
title('Capital')

subplot(4,3,5);
plot(T,100*log_h1_eps_r_star(T+1),'LineWidth',1); 
title('Labor (unconstrained)')

subplot(4,3,6);
plot(T,100*log_h2_eps_r_star(T+1),'LineWidth',1); 
title('Labor (constrained)')

subplot(4,3,7);
plot(T,100*log_b_f_eps_r_star(T+1),'LineWidth',1); 
title('Foreign bond')

subplot(4,3,8);
plot(T,100*log_r_eps_r_star(T+1),'LineWidth',1); 
title('Nominal interest rate')

subplot(4,3,9);
plot(T,100*log_r_d_eps_r_star(T+1),'LineWidth',1); 
title('Deposit rate')

subplot(4,3,10);
plot(T,100*log_w_eps_r_star(T+1),'LineWidth',1); 
title('Wage')

subplot(4,3,11);
plot(T,100*log_pi_eps_r_star(T+1),'LineWidth',1); 
title('CPI Inflation')

subplot(4,3,12);
plot(T,100*log_tot_eps_r_star(T+1),'LineWidth',1); 
title('Terms of trade')

             
T = 0:10; 
% Foreign output
figure('position',[10,10,1000,1000])
sgtitle('Benchmark: Foreign Output Shock')

subplot(4,3,1);
plot(T,100*log_y_eps_y_star(T+1),'LineWidth',1); 
title('Output')

subplot(4,3,2);
plot(T,100*log_c1_eps_y_star(T+1),'LineWidth',1); 
title('Consumption (unconstrained)')

subplot(4,3,3);
plot(T,100*log_c2_eps_y_star(T+1),'LineWidth',1); 
title('Consumption (constrained)')

subplot(4,3,4);
plot(T,100*log_k_eps_y_star(T+1),'LineWidth',1); 
title('Capital')

subplot(4,3,5);
plot(T,100*log_h1_eps_y_star(T+1),'LineWidth',1); 
title('Labor (unconstrained)')

subplot(4,3,6);
plot(T,100*log_h2_eps_y_star(T+1),'LineWidth',1); 
title('Labor (constrained)')

subplot(4,3,7);
plot(T,100*log_b_f_eps_y_star(T+1),'LineWidth',1); 
title('Foreign bond')

subplot(4,3,8);
plot(T,100*log_r_eps_y_star(T+1),'LineWidth',1); 
title('Nominal interest rate')

subplot(4,3,9);
plot(T,100*log_r_d_eps_y_star(T+1),'LineWidth',1); 
title('Deposit rate')

subplot(4,3,10);
plot(T,100*log_w_eps_y_star(T+1),'LineWidth',1); 
title('Wage')

subplot(4,3,11);
plot(T,100*log_pi_eps_y_star(T+1),'LineWidth',1); 
title('CPI Inflation')

subplot(4,3,12);
plot(T,100*log_tot_eps_y_star(T+1),'LineWidth',1); 
title('Terms of trade')


figure('Position',[0 0 1200 600]);
bar(var_list_name,[Variance(:,1) Variance(:,3)+Variance(:,4) Variance(:,5)])  
legend('Technology Shock', 'International Shock', 'Monetary Shock','Location','SouthOutside','Orientation','horizontal','Box','off')


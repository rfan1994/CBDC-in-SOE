
%% Dynare
clear; close all; clc;
addpath /Applications/Dynare/5.1/matlab

N = 4; T = 101;
V = zeros(N,3);

Y_EPS_M = zeros(N,T); Y_EPS_A = zeros(N,T); Y_EPS_Z = zeros(N,T);
C_EPS_M = zeros(N,T); C_EPS_A = zeros(N,T); C_EPS_Z = zeros(N,T);
C1_EPS_M = zeros(N,T); C1_EPS_A = zeros(N,T); C1_EPS_Z = zeros(N,T);
C2_EPS_M = zeros(N,T); C2_EPS_A = zeros(N,T); C2_EPS_Z = zeros(N,T);
R_EPS_M = zeros(N,T); R_EPS_A = zeros(N,T); R_EPS_Z = zeros(N,T);
R_D_EPS_M = zeros(N,T); R_D_EPS_A = zeros(N,T); R_D_EPS_Z = zeros(N,T);
W_EPS_M = zeros(N,T); W_EPS_A = zeros(N,T); W_EPS_Z = zeros(N,T);
PI_H_EPS_M = zeros(N,T); PI_H_EPS_A = zeros(N,T); PI_H_EPS_Z = zeros(N,T);
PI_EPS_M = zeros(N,T); PI_EPS_A = zeros(N,T); PI_EPS_Z = zeros(N,T);
TOT_EPS_M = zeros(N,T); TOT_EPS_A = zeros(N,T); TOT_EPS_Z = zeros(N,T);
D1_EPS_M = zeros(N,T); D1_EPS_A = zeros(N,T); D1_EPS_Z = zeros(N,T);
M2_EPS_M = zeros(N,T); M2_EPS_A = zeros(N,T); M2_EPS_Z = zeros(N,T);
M_F2_EPS_M = zeros(N,T); M_F2_EPS_A = zeros(N,T); M_F2_EPS_Z = zeros(N,T);
CBDC2_EPS_M = zeros(N,T);CBDC2_EPS_A = zeros(N,T); CBDC2_EPS_Z = zeros(N,T);

for n = 1:N
    switch n
        case 1
            dynare TANK_SOE.mod
            Variance1 = oo_.variance_decomposition;
            Welfare1 = oo_.mean(1:3);
            SS1 = oo_.steady_state;
        case 2
            dynare TANK_SOE_CBDC.mod
            Variance2 = oo_.variance_decomposition;
            Welfare2 = oo_.mean(1:3);
            SS2 = oo_.steady_state;
        case 3
            dynare TANK_SOE_Dollarization.mod
            Variance3 = oo_.variance_decomposition;
            Welfare3 = oo_.mean(1:3);
            SS3 = oo_.steady_state;
        case 4
            dynare TANK_SOE_Dollarization_CBDC.mod  
            Variance4 = oo_.variance_decomposition;
            Welfare4 = oo_.mean(1:3);
            SS4 = oo_.steady_state;      
    end
    
    Y_EPS_M(n,:) = 100*log_y_eps_m; Y_EPS_A(n,:) = 100*log_y_eps_a; Y_EPS_Z(n,:) = 100*log_y_eps_z;
    C_EPS_M(n,:) = 100*log_c_eps_m; C_EPS_A(n,:) = 100*log_c_eps_a; C_EPS_Z(n,:) = 100*log_c_eps_z;
    C1_EPS_M(n,:) = 100*log_c1_eps_m; C1_EPS_A(n,:) = 100*log_c1_eps_a; C1_EPS_Z(n,:) = 100*log_c1_eps_z;
    C2_EPS_M(n,:) = 100*log_c2_eps_m; C2_EPS_A(n,:) = 100*log_c2_eps_a; C2_EPS_Z(n,:) = 100*log_c2_eps_z;
    R_EPS_M(n,:) = 100*log_r_eps_m; R_EPS_A(n,:) = 100*log_r_eps_a; C2_EPS_Z(n,:) = 100*log_r_eps_z;
    R_D_EPS_M(n,:) = 100*log_r_d_eps_m; R_D_EPS_A(n,:) = 100*log_r_d_eps_a; R_D_EPS_Z(n,:) = 100*log_r_d_eps_z;
    W_EPS_M(n,:) = 100*log_w_eps_m;  W_EPS_A(n,:) = 100*log_w_eps_a; W_EPS_Z(n,:) = 100*log_w_eps_z;
    PI_H_EPS_M(n,:) = 100*log_pi_h_eps_m; PI_H_EPS_A(n,:) = 100*log_pi_h_eps_a; PI_H_EPS_Z(n,:) = 100*log_pi_h_eps_z;
    PI_EPS_M(n,:) = 100*log_pi_eps_m; PI_EPS_A(n,:) = 100*log_pi_eps_a; PI_EPS_Z(n,:) = 100*log_pi_eps_z;
    TOT_EPS_M(n,:) = 100*log_tot_eps_m; TOT_EPS_A(n,:) = 100*log_tot_eps_a; TOT_EPS_Z(n,:) = 100*log_tot_eps_z;
    D1_EPS_M(n,:) = 100*log_d1_eps_m;  D1_EPS_A(n,:) = 100*log_d1_eps_a; D1_EPS_Z(n,:) = 100*log_d1_eps_z;
    M2_EPS_M(n,:) = 100*log_m2_eps_m;  M2_EPS_A(n,:) = 100*log_m2_eps_a; M2_EPS_Z(n,:) = 100*log_m2_eps_z;
    CBDC2_EPS_M(n,:) = 100*log_cbdc2_eps_m; CBDC2_EPS_A(n,:) = 100*log_cbdc2_eps_a; CBDC2_EPS_Z(n,:) = 100*log_cbdc2_eps_z;
    
    if n>2
        M_F2_EPS_M(n,:) = 100*log_m_f2_eps_m;  M_F2_EPS_A(n,:) = 100*log_m_f2_eps_a; M_F2_EPS_Z(n,:) = 100*log_m_f2_eps_z;
    end
    
end

%% Welfare analysis 

sigma = 2;
dV1 = zeros(3,3);
dV(1,:) = (Welfare3./Welfare1).^(1/(1-sigma))-1;
dV(2,:) = (Welfare2./Welfare1).^(1/(1-sigma))-1;
dV(3,:) = (Welfare4./Welfare3).^(1/(1-sigma))-1;


%% Variance decomposition
Variance = {Variance1,Variance2,Variance3,Variance4};     
varexo_name = {'TFP','Liquidity','Government purchase',...
               'Foreign output','Foreign interest rate','Monetary'};
var_list = {'v','v1','v2','log_y','log_c','log_c1','log_c2','log_z',...
            'log_z_d','log_w','log_pi_h','log_pi','log_tot','log_d1','log_m2','log_cbdc2'};
var_list_name = {'Social welfare','Welfare (non RT)','Welfare (RT)','Output',...
                 'Consumption','Consumption (non RT)','Consumption (RT)',...
                 'Interest rate','Deposit rate','Wage','Domestic inflation',...
                 'CPI inflation','TOT','Deposit','Cash','CBDC'};  
Model = categorical({'Benchmark no CBDC','Benchmark with CBDC',...
                     'Dollarization no CBDC','Dollarization with CBDC'});
Model = reordercats(Model,{'Benchmark no CBDC','Benchmark with CBDC',...
                           'Dollarization no CBDC','Dollarization with CBDC'});

variance = zeros(4,3);          
for i = 1:15
    for n = 1:N
        variance(n,1) = Variance{n}(i,1);
        variance(n,2) = Variance{n}(i,4)+Variance{n}(i,5);
        variance(n,3) = Variance{n}(i,6);
    end
    filename = append(var_list{i},'.png');
    figure('Position',[100 100 700 300]);
    bar(Model,variance)
    ylim([0 100])
    legend('Technology Shock', 'International Shock', 'Monetary Shock','Location','SouthOutside','Orientation','horizontal','Box','off')
    title(var_list_name{i})
    exportgraphics(gcf,filename)
end
close all;
%% SOE: friction
Model = {'Benchmark no CBDC','Benchmark with CBDC',...
         'Dollarization no CBDC','Dollarization with CBDC'};

T = 0:100;
filename = 'TFP.png';

figure('position',[10,10,1000,500])
sgtitle('TFP Shock')

subplot(2,4,1);
for n = 1:N
    plot(T,Y_EPS_A(n,T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,C1_EPS_A(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (non RT)')

subplot(2,4,3);
for n = 1:N
    plot(T,C2_EPS_A(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (RT)')


subplot(2,4,4);
for n = 1:N
    plot(T,PI_H_EPS_A(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,PI_EPS_A(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,6);
for n = 1:N
    plot(T,TOT_EPS_A(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,7);
for n = 1:N
    plot(T,M2_EPS_A(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Cash')

subplot(2,4,8);
for n = 1:N
    plot(T,CBDC2_EPS_A(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC')

exportgraphics(gcf,filename)

% ===============================================
T = 0:10;
filename = 'Monetary.png';

figure('position',[10,10,1000,500])
sgtitle('Monetary Shock')

subplot(2,4,1);
for n = 1:N
    plot(T,Y_EPS_M(n,T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,C1_EPS_M(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (non RT)')

subplot(2,4,3);
for n = 1:N
    plot(T,C2_EPS_M(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (RT)')

subplot(2,4,4);
for n = 1:N
    plot(T,PI_H_EPS_M(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,PI_EPS_M(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,6);
for n = 1:N
    plot(T,TOT_EPS_M(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,7);
for n = 1:N
    plot(T,M2_EPS_M(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Cash')


subplot(2,4,8);
for n = 1:N
    plot(T,CBDC2_EPS_M(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC')

exportgraphics(gcf,filename)

% ===============================================
T = 0:100;
filename = 'Liquidity.png';

figure('position',[10,10,1000,500])
sgtitle('Liquidity Shock')

subplot(2,4,1);
for n = 1:N
    plot(T,Y_EPS_Z(n,T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,C1_EPS_Z(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (non RT)')

subplot(2,4,3);
for n = 1:N
    plot(T,C2_EPS_Z(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (RT)')

subplot(2,4,4);
for n = 1:N
    plot(T,PI_H_EPS_Z(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,PI_EPS_Z(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,6);
for n = 1:N
    plot(T,TOT_EPS_Z(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,7);
for n = 1:N
    plot(T,M2_EPS_Z(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Cash')


subplot(2,4,8);
for n = 1:N
    plot(T,CBDC2_EPS_Z(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC')

exportgraphics(gcf,filename)
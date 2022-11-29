
%% Dynare
clear; close all; clc;
addpath /Applications/Dynare/5.1/matlab

N = 4; T = 101;
V = zeros(N,3);

Y_EPS_M = zeros(N,T); Y_EPS_A = zeros(N,T); Y_EPS_Z = zeros(N,T); Y_EPS_Y = zeros(N,T);Y_EPS_R = zeros(N,T);
C_EPS_M = zeros(N,T); C_EPS_A = zeros(N,T); C_EPS_Z = zeros(N,T); C_EPS_Y = zeros(N,T); C_EPS_R = zeros(N,T);
C1_EPS_M = zeros(N,T); C1_EPS_A = zeros(N,T); C1_EPS_Z = zeros(N,T); C1_EPS_Y = zeros(N,T); C1_EPS_R = zeros(N,T);
C2_EPS_M = zeros(N,T); C2_EPS_A = zeros(N,T); C2_EPS_Z = zeros(N,T); C2_EPS_Y = zeros(N,T); C2_EPS_R = zeros(N,T);
R_EPS_M = zeros(N,T); R_EPS_A = zeros(N,T); R_EPS_Z = zeros(N,T); R_EPS_Y = zeros(N,T); R_EPS_R = zeros(N,T);
R_D_EPS_M = zeros(N,T); R_D_EPS_A = zeros(N,T); R_D_EPS_Z = zeros(N,T); R_D_EPS_Y = zeros(N,T); R_D_EPS_R = zeros(N,T);
W_EPS_M = zeros(N,T); W_EPS_A = zeros(N,T); W_EPS_Z = zeros(N,T); W_EPS_Y = zeros(N,T); W_EPS_R = zeros(N,T);
PI_H_EPS_M = zeros(N,T); PI_H_EPS_A = zeros(N,T); PI_H_EPS_Z = zeros(N,T); PI_H_EPS_Y = zeros(N,T); PI_H_EPS_R = zeros(N,T);
PI_EPS_M = zeros(N,T); PI_EPS_A = zeros(N,T); PI_EPS_Z = zeros(N,T); PI_EPS_Y = zeros(N,T); PI_EPS_R = zeros(N,T);
TOT_EPS_M = zeros(N,T); TOT_EPS_A = zeros(N,T); TOT_EPS_Z = zeros(N,T); TOT_EPS_Y = zeros(N,T); TOT_EPS_R = zeros(N,T);
D1_EPS_M = zeros(N,T); D1_EPS_A = zeros(N,T); D1_EPS_Z = zeros(N,T); D1_EPS_Y = zeros(N,T); D1_EPS_R = zeros(N,T);
M2_EPS_M = zeros(N,T); M2_EPS_A = zeros(N,T); M2_EPS_Z = zeros(N,T); M2_EPS_Y = zeros(N,T); M2_EPS_R = zeros(N,T);
M_F2_EPS_M = zeros(N,T); M_F2_EPS_A = zeros(N,T); M_F2_EPS_Z = zeros(N,T); M_F2_EPS_Y = zeros(N,T); M_F2_EPS_R = zeros(N,T);
CBDC2_EPS_M = zeros(N,T);CBDC2_EPS_A = zeros(N,T); CBDC2_EPS_Z = zeros(N,T); CBDC2_EPS_Y = zeros(N,T); CBDC2_EPS_R = zeros(N,T);

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
    
    Y_EPS_M(n,:) = 100*log_y_eps_m; Y_EPS_A(n,:) = 100*log_y_eps_a; Y_EPS_Z(n,:) = 100*log_y_eps_z; Y_EPS_R(n,:) = 100*log_y_eps_r_star; Y_EPS_Y(n,:) = 100*log_y_eps_y_star;
    C_EPS_M(n,:) = 100*log_c_eps_m; C_EPS_A(n,:) = 100*log_c_eps_a; C_EPS_Z(n,:) = 100*log_c_eps_z; C_EPS_R(n,:) = 100*log_c_eps_r_star; C_EPS_Y(n,:) = 100*log_c_eps_y_star;
    C1_EPS_M(n,:) = 100*log_c1_eps_m; C1_EPS_A(n,:) = 100*log_c1_eps_a; C1_EPS_Z(n,:) = 100*log_c1_eps_z; C1_EPS_R(n,:) = 100*log_c1_eps_r_star; C1_EPS_Y(n,:) = 100*log_c1_eps_y_star;
    C2_EPS_M(n,:) = 100*log_c2_eps_m; C2_EPS_A(n,:) = 100*log_c2_eps_a; C2_EPS_Z(n,:) = 100*log_c2_eps_z; C2_EPS_R(n,:) = 100*log_c2_eps_r_star; C2_EPS_Y(n,:) = 100*log_c2_eps_y_star;
    R_EPS_M(n,:) = 100*log_r_eps_m; R_EPS_A(n,:) = 100*log_r_eps_a; C2_EPS_Z(n,:) = 100*log_r_eps_z; C2_EPS_R(n,:) = 100*log_r_eps_r_star; C2_EPS_Y(n,:) = 100*log_r_eps_y_star;
    R_D_EPS_M(n,:) = 100*log_r_d_eps_m; R_D_EPS_A(n,:) = 100*log_r_d_eps_a; R_D_EPS_Z(n,:) = 100*log_r_d_eps_z; R_D_EPS_R(n,:) = 100*log_r_d_eps_r_star; R_D_EPS_Y(n,:) = 100*log_r_d_eps_y_star;
    W_EPS_M(n,:) = 100*log_w_eps_m;  W_EPS_A(n,:) = 100*log_w_eps_a; W_EPS_Z(n,:) = 100*log_w_eps_z; W_EPS_R(n,:) = 100*log_w_eps_r_star; W_EPS_Y(n,:) = 100*log_w_eps_y_star;
    PI_H_EPS_M(n,:) = 100*log_pi_h_eps_m; PI_H_EPS_A(n,:) = 100*log_pi_h_eps_a; PI_H_EPS_Z(n,:) = 100*log_pi_h_eps_z; PI_H_EPS_R(n,:) = 100*log_pi_h_eps_r_star; PI_H_EPS_Y(n,:) = 100*log_pi_h_eps_y_star;
    PI_EPS_M(n,:) = 100*log_pi_eps_m; PI_EPS_A(n,:) = 100*log_pi_eps_a; PI_EPS_Z(n,:) = 100*log_pi_eps_z; PI_EPS_R(n,:) = 100*log_pi_eps_r_star; PI_EPS_Y(n,:) = 100*log_pi_eps_y_star;
    TOT_EPS_M(n,:) = 100*log_tot_eps_m; TOT_EPS_A(n,:) = 100*log_tot_eps_a; TOT_EPS_Z(n,:) = 100*log_tot_eps_z; TOT_EPS_R(n,:) = 100*log_tot_eps_r_star; TOT_EPS_Y(n,:) = 100*log_tot_eps_y_star;
    D1_EPS_M(n,:) = 100*log_d1_eps_m;  D1_EPS_A(n,:) = 100*log_d1_eps_a; D1_EPS_Z(n,:) = 100*log_d1_eps_z; D1_EPS_R(n,:) = 100*log_d1_eps_r_star; D1_EPS_Y(n,:) = 100*log_d1_eps_y_star;
    M2_EPS_M(n,:) = 100*log_m2_eps_m;  M2_EPS_A(n,:) = 100*log_m2_eps_a; M2_EPS_Z(n,:) = 100*log_m2_eps_z; M2_EPS_R(n,:) = 100*log_m2_eps_r_star; M2_EPS_Y(n,:) = 100*log_m2_eps_y_star;
    CBDC2_EPS_M(n,:) = 100*log_cbdc2_eps_m; CBDC2_EPS_A(n,:) = 100*log_cbdc2_eps_a; CBDC2_EPS_Z(n,:) = 100*log_cbdc2_eps_z; CBDC2_EPS_R(n,:) = 100*log_cbdc2_eps_r_star; CBDC2_EPS_Y(n,:) = 100*log_cbdc2_eps_y_star;
    
    if n>2
        M_F2_EPS_M(n,:) = 100*log_m_f2_eps_m; M_F2_EPS_A(n,:) = 100*log_m_f2_eps_a; M_F2_EPS_Z(n,:) = 100*log_m_f2_eps_z; M_F2_EPS_R(n,:) = 100*log_m_f2_eps_r_star; M_F2_EPS_Y(n,:) = 100*log_m_f2_eps_y_star;
    end
    
end

%% Welfare analysis 

sigma = 2;
dV1 = zeros(3,3);
dV(1,:) = (Welfare3./Welfare1).^(1/(1-sigma))-1;
dV(2,:) = (Welfare2./Welfare1).^(1/(1-sigma))-1;
dV(3,:) = (Welfare4./Welfare3).^(1/(1-sigma))-1;

delta_M = 0.1;
SS = zeros(21,4);
SS(1:5,1) = SS1(6:10)'; SS(1:5,2) = SS2(6:10)';
SS(6:8,1) = SS1(13:15)'; SS(6:8,2) = SS2(13:15)';
SS(10:12,1) = SS1(23:25)'; SS(10:12,2) = SS2(23:25)';
SS(14,1) = SS1(26); SS(14,2) = SS2(26);
SS(15,1) = SS1(28); SS(15,2) = SS2(28);
SS(16,1) = SS1(25)*delta_M; SS(16,2) = SS2(25)*delta_M;
SS(17:18,1) = SS1(32:33)'; SS(17:18,2) = SS2(32:33)';
SS(19:20,1) = SS1(38:39)'; SS(19:20,2) = SS2(38:39)';
SS(21,1) = SS1(42); SS(21,2) = SS2(42);

SS(1:5,3) = SS3(6:10)'; SS(1:5,4) = SS4(6:10)';
SS(6:9,3) = SS3(13:16)'; SS(6:9,4) = SS4(13:16)';
SS(10:14,3) = SS3(24:28)'; SS(10:14,4) = SS4(24:28)';
SS(15,3) = SS3(30); SS(15,4) = SS4(30);
SS(16,3) = SS3(26)*delta_M; SS(16,4) = SS4(26)*delta_M;
SS(17:18,3) = SS3(35:36)'; SS(17:18,4) = SS4(35:36)';
SS(19:20,3) = SS3(41:42)'; SS(19:20,4) = SS4(41:42)';
SS(21,3) = SS3(45); SS(21,4) = SS4(45);


%% Variance decomposition
Variance = {Variance1,Variance2,Variance3,Variance4};     
varexo_name = {'TFP','Liquidity','Government purchase',...
               'Foreign output','Foreign interest rate','Monetary'};
var_list = {'v','v1','v2','log_y','log_c','log_c1','log_c2','log_z',...
            'log_z_d','log_w','log_pi_h','log_pi','log_tot','log_d1','log_m2','log_cbdc2'};
var_list_name = {'Social welfare','Welfare (unconstrained)','Welfare (constrained)','Output',...
                 'Consumption','Consumption (unconstrained)','Consumption (constrained)',...
                 'Interest rate','Deposit rate','Wage','Domestic inflation',...
                 'CPI inflation','TOT','Deposit','Cash','CBDC'};  
Model = categorical({'Benchmark no CBDC','Benchmark with CBDC',...
                     'Dollarization no CBDC','Dollarization with CBDC'});
Model = reordercats(Model,{'Benchmark no CBDC','Benchmark with CBDC',...
                           'Dollarization no CBDC','Dollarization with CBDC'});

variance = zeros(4,4);          
for i = 1:15
    for n = 1:N
        variance(n,1) = Variance{n}(i,1);
        variance(n,2) = Variance{n}(i,2);
        variance(n,3) = Variance{n}(i,4)+Variance{n}(i,5);
        variance(n,4) = Variance{n}(i,6);
    end
    filename = append(var_list{i},'.png');
    figure('Position',[100 100 700 300]);
    bar(Model,variance)
    ylim([0 100])
    legend('Technology shock','Liquidity shock','International shock','Monetary shock','Location','SouthOutside','Orientation','horizontal','Box','off')
    title(var_list_name{i})
    exportgraphics(gcf,filename)
end

%% SOE: friction
Model = {'Benchmark no CBDC','Benchmark with CBDC',...
         'Dollarization no CBDC','Dollarization with CBDC'};

T = 0:6;
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
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,C2_EPS_A(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')


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
T = 0:3;
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
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,C2_EPS_M(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')

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
T = 0:3;
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
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,C2_EPS_Z(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')

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

% ===============================================
T = 0:3;
filename = 'R_star.png';

figure('position',[10,10,1000,500])
sgtitle('Foreign Interest Rate')

subplot(2,4,1);
for n = 1:N
    plot(T,Y_EPS_R(n,T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,C1_EPS_R(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,C2_EPS_R(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')

subplot(2,4,4);
for n = 1:N
    plot(T,PI_H_EPS_R(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,PI_EPS_R(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,6);
for n = 1:N
    plot(T,TOT_EPS_R(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,7);
for n = 1:N
    plot(T,M2_EPS_R(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Cash')


subplot(2,4,8);
for n = 1:N
    plot(T,CBDC2_EPS_R(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC')

exportgraphics(gcf,filename)


% ===============================================
T = 0:3;
filename = 'Y_star.png';

figure('position',[10,10,1000,500])
sgtitle('Foreign Output')

subplot(2,4,1);
for n = 1:N
    plot(T,Y_EPS_Y(n,T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,C1_EPS_Y(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,C2_EPS_Y(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')

subplot(2,4,4);
for n = 1:N
    plot(T,PI_H_EPS_Y(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,PI_EPS_Y(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,6);
for n = 1:N
    plot(T,TOT_EPS_Y(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,7);
for n = 1:N
    plot(T,M2_EPS_Y(n,T+1),'LineWidth',1); 
    hold on; 
end
title('Cash')


subplot(2,4,8);
for n = 1:N
    plot(T,CBDC2_EPS_Y(n,T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC')

exportgraphics(gcf,filename)
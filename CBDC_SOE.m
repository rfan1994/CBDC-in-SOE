
%% Dynare
clear; close all; clc;
addpath /Applications/Dynare/5.1/matlab

N = 4;
for n = 1:N
    switch n
        case 1
            dynare TANK_SOE.mod
            Welfare(:,n) = oo_.mean(1:3);
            Variance1 = oo_.variance_decomposition;
            IRF(n) = oo_.irfs;
            SS(:,n) = oo_.steady_state;
        case 2
            dynare TANK_SOE_CBDC.mod
            Welfare(:,n)= oo_.mean(1:3);
            Variance2 = oo_.variance_decomposition;
            IRF(n) = oo_.irfs;
            SS(:,n) = oo_.steady_state;
        case 3
            dynare TANK_SOE_Dollarization.mod
            Welfare(:,n) = oo_.mean(1:3);
            Variance3 = oo_.variance_decomposition;
            IRF(n) = oo_.irfs;
            SS(:,n) = oo_.steady_state;
        case 4
            dynare TANK_SOE_Dollarization_CBDC.mod 
            Welfare(:,n) = oo_.mean(1:3);
            Variance4 = oo_.variance_decomposition;
            IRF(n) = oo_.irfs;
            SS(:,n) = oo_.steady_state;      
    end
end

%% Welfare analysis 

sigma = 2;
dV1 = zeros(3,3);
dV(1,:) = (Welfare(:,3)./Welfare(:,1)).^(1/(1-sigma))-1;
dV(2,:) = (Welfare(:,2)./Welfare(:,1)).^(1/(1-sigma))-1;
dV(3,:) = (Welfare(:,4)./Welfare(:,3)).^(1/(1-sigma))-1;

delta_M = 0.1;
SS0(1:4,:) = SS(6:9,:);
SS0(5,:) = SS(10,:).*SS(41,:);
SS0(6:9,:) = SS(13:16,:);
SS0(10:14,:) = SS(24:28,:);
SS0(15,:) = SS(30,:);
SS0(16,:) = SS(26,:)*delta_M; 
SS0(17:18,:) = SS(35:36,:);
SS0(19:20,:) = SS(41:42,:);
SS0(21,:) = SS(45,:); 

%% Variance decomposition
Variance = {Variance1,Variance2,Variance3,Variance4};     
varexo_name = {'TFP','Liquidity','Government purchase',...
               'Foreign output','Foreign interest rate','Monetary'};
var_list = {'log_y','log_c','log_c1','log_c2','log_r',...
            'log_r_d','log_w','log_pi_h','log_pi','log_tot','log_l2','log_m2','log_cbdc2'};
var_list_name = {'Output','Consumption','Consumption (unconstrained)','Consumption (constrained)',...
                 'Interest rate','Deposit rate','Wage','Domestic inflation',...
                 'CPI inflation','TOT','Liquidity','Cash/Liquidity','CBDC/Liquidity'};  
Model = categorical({'Benchmark no CBDC','Benchmark with CBDC',...
                     'Dollarization no CBDC','Dollarization with CBDC'});
Model = reordercats(Model,{'Benchmark no CBDC','Benchmark with CBDC',...
                           'Dollarization no CBDC','Dollarization with CBDC'});

variance = zeros(4,4);          
for i = 1:13
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

T = 0:20;
filename = 'TFP.png';

figure('position',[10,10,1000,500])
sgtitle('TFP Shock')

subplot(2,4,1);
for n = 1:N
    plot(T,100*IRF(n).log_y_eps_a(T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,100*IRF(n).log_c1_eps_a(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,100*IRF(n).log_c2_eps_a(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')

subplot(2,4,4);
for n = 1:N
    plot(T,100*IRF(n).log_pi_eps_a(T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,100*IRF(n).log_tot_eps_a(T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,6);
for n = 1:N
    plot(T,100*IRF(n).log_l2_eps_a(T+1),'LineWidth',1); 
    hold on; 
end
title('Liquidity')

subplot(2,4,7);
for n = 1:N
    plot(T,100*IRF(n).log_m2_eps_a(T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Currency Ratio')

subplot(2,4,8);
for n = 1:N
    plot(T,100*IRF(n).log_cbdc2_eps_a(T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC Ratio')

exportgraphics(gcf,filename)

% ===============================================
T = 0:10;
filename = 'Monetary.png';

figure('position',[10,10,1000,500])
sgtitle('Monetary Shock')

subplot(2,4,1);
for n = 1:N
    plot(T,100*IRF(n).log_y_eps_m(T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,100*IRF(n).log_c1_eps_m(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,100*IRF(n).log_c2_eps_m(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')

subplot(2,4,4);
for n = 1:N
    plot(T,100*IRF(n).log_pi_eps_m(T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,100*IRF(n).log_tot_eps_m(T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,6);
for n = 1:N
    plot(T,100*IRF(n).log_l2_eps_m(T+1),'LineWidth',1); 
    hold on; 
end
title('Liquidity')

subplot(2,4,7);
for n = 1:N
    plot(T,100*IRF(n).log_m2_eps_m(T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Currency Ratio')

subplot(2,4,8);
for n = 1:N
    plot(T,100*IRF(n).log_cbdc2_eps_m(T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC Ratio')

exportgraphics(gcf,filename)

% ===============================================
T = 0:10;
filename = 'Liquidity.png';

figure('position',[10,10,1000,500])
sgtitle('Liquidity Shock')

subplot(2,4,1);
for n = 1:N
    plot(T,100*IRF(n).log_y_eps_z(T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,100*IRF(n).log_c1_eps_z(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,100*IRF(n).log_c2_eps_z(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')

subplot(2,4,4);
for n = 1:N
    plot(T,100*IRF(n).log_pi_eps_z(T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,100*IRF(n).log_tot_eps_z(T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,6);
for n = 1:N
    plot(T,100*IRF(n).log_l2_eps_z(T+1),'LineWidth',1); 
    hold on; 
end
title('Liquidity')

subplot(2,4,7);
for n = 1:N
    plot(T,100*IRF(n).log_m2_eps_z(T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Currency Ratio')

subplot(2,4,8);
for n = 1:N
    plot(T,100*IRF(n).log_cbdc2_eps_z(T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC Ratio')

exportgraphics(gcf,filename)

% ===============================================
T = 0:10;
filename = 'Y_STAR.png';

figure('position',[10,10,1000,500])
sgtitle('Foreign Output Shock')

subplot(2,4,1);
for n = 1:N
    plot(T,100*IRF(n).log_y_eps_y_star(T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,100*IRF(n).log_c1_eps_y_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,100*IRF(n).log_c2_eps_y_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')

subplot(2,4,4);
for n = 1:N
    plot(T,100*IRF(n).log_pi_eps_y_star(T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,100*IRF(n).log_tot_eps_y_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,6);
for n = 1:N
    plot(T,100*IRF(n).log_l2_eps_y_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Liquidity')

subplot(2,4,7);
for n = 1:N
    plot(T,100*IRF(n).log_m2_eps_y_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Currency Ratio')

subplot(2,4,8);
for n = 1:N
    plot(T,100*IRF(n).log_cbdc2_eps_y_star(T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC Ratio')

exportgraphics(gcf,filename)


% ===============================================
T = 0:10;
filename = 'R_STAR.png';

figure('position',[10,10,1000,500])
sgtitle('Foreign Interest Rate Shock')

subplot(2,4,1);
for n = 1:N
    plot(T,100*IRF(n).log_y_eps_r_star(T+1),'LineWidth',1); 
    hold on; 
end
legend(Model,'Location','best')
title('Output')

subplot(2,4,2);
for n = 1:N
    plot(T,100*IRF(n).log_c1_eps_r_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (unconstrained)')

subplot(2,4,3);
for n = 1:N
    plot(T,100*IRF(n).log_c2_eps_r_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Consumption (constrained)')

subplot(2,4,4);
for n = 1:N
    plot(T,100*IRF(n).log_pi_eps_r_star(T+1),'LineWidth',1); 
    hold on; 
end
title('CPI Inflation')

subplot(2,4,5);
for n = 1:N
    plot(T,100*IRF(n).log_tot_eps_r_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Terms of Trade')

subplot(2,4,6);
for n = 1:N
    plot(T,100*IRF(n).log_l2_eps_r_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Liquidity')

subplot(2,4,7);
for n = 1:N
    plot(T,100*IRF(n).log_m2_eps_r_star(T+1),'LineWidth',1); 
    hold on; 
end
title('Domestic Currency Ratio')

subplot(2,4,8);
for n = 1:N
    plot(T,100*IRF(n).log_cbdc2_eps_r_star(T+1),'LineWidth',1); 
    hold on; 
end
title('CBDC Ratio')

exportgraphics(gcf,filename)


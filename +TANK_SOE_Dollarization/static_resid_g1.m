function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
% function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = TANK_SOE_Dollarization.static_g1_tt(T, y, x, params);
    end
    residual = TANK_SOE_Dollarization.static_resid(T, y, x, params, false);
    g1       = TANK_SOE_Dollarization.static_g1(T, y, x, params, false);

end

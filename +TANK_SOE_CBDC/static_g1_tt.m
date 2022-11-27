function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 36);

T = TANK_SOE_CBDC.static_resid_tt(T, y, x, params);

T(26) = getPowerDeriv(y(10)*y(38)/params(39),params(35),1);
T(27) = getPowerDeriv(T(23),1-params(33),1);
T(28) = getPowerDeriv(y(27)/y(25),T(8),1);
T(29) = getPowerDeriv(T(14),params(12)/(params(12)-1),1);
T(30) = 1/y(37);
T(31) = (-(params(1)*(T(30)-1)));
T(32) = params(25)/y(27);
T(33) = getPowerDeriv(y(27)/y(26),T(8),1);
T(34) = (-(params(25)*y(26)))/(y(27)*y(27));
T(35) = (-((1-params(1))*y(16)*(-y(41))/(y(37)*y(37))+params(1)*((-y(26))/(y(37)*y(37))+(-y(25))/(y(37)*y(37)))));
T(36) = getPowerDeriv(T(1),(-params(6)),1);

end

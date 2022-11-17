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

assert(length(T) >= 35);

T = TANK_SOE_Dollarization_CBDC.static_resid_tt(T, y, x, params);

T(24) = getPowerDeriv(y(29)/y(26),T(8),1);
T(25) = getPowerDeriv(T(17),params(12)/(params(12)-1),1);
T(26) = 1/y(40);
T(27) = (-(params(1)*(T(26)-1)));
T(28) = getPowerDeriv(y(29)/(y(42)*y(27)),T(8),1);
T(29) = getPowerDeriv(y(42)*y(27),T(16),1);
T(30) = params(25)/y(29);
T(31) = getPowerDeriv(y(29)/y(28),T(8),1);
T(32) = (-(params(25)*y(28)))/(y(29)*y(29));
T(33) = (y(31)+T(5))*(-y(24))/(y(29)*y(29))+T(6)*T(32);
T(34) = (-((1-params(1))*y(17)*(-y(44))/(y(40)*y(40))+params(1)*((-y(28))/(y(40)*y(40))+(-y(26))/(y(40)*y(40)))));
T(35) = getPowerDeriv(T(1),(-params(6)),1);

end

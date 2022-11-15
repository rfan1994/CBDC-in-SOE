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

assert(length(T) >= 25);

T = TANK_SOE_Dollarization.static_resid_tt(T, y, x, params);

T(20) = getPowerDeriv(y(29)/y(26),T(5),1);
T(21) = getPowerDeriv(T(13),params(12)/(params(12)-1),1);
T(22) = getPowerDeriv(y(29)/(y(42)*y(27)),T(5),1);
T(23) = getPowerDeriv(y(42)*y(27),T(12),1);
T(24) = (-((1-params(1))*y(17)*(-y(44))/(y(40)*y(40))+params(1)*(-y(26))/(y(40)*y(40))));
T(25) = getPowerDeriv(T(1),(-params(6)),1);

end

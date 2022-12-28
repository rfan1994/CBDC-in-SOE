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

assert(length(T) >= 32);

T = TANK_SOE_Dollarization.static_resid_tt(T, y, x, params);

T(22) = getPowerDeriv(y(10)*y(41)/params(39),params(35),1);
T(23) = getPowerDeriv(T(19),1-params(33),1);
T(24) = 1/y(40);
T(25) = getPowerDeriv(y(29)/(y(26)+y(42)*y(27)),1/params(12),1);
T(26) = y(23)*(-(T(6)*(-y(29))/((y(26)+y(42)*y(27))*(y(26)+y(42)*y(27)))*T(25)));
T(27) = getPowerDeriv(y(26)+y(42)*y(27),(params(12)-1)/params(12),1);
T(28) = getPowerDeriv(T(9),params(12)/(params(12)-1),1);
T(29) = y(23)*(-(T(6)*T(25)*1/(y(26)+y(42)*y(27))+T(5)*y(31)*(-y(24))/(y(29)*y(29))));
T(30) = (-((1-params(1))*y(17)*(-y(44))/(y(40)*y(40))+params(1)*(-y(26))/(y(40)*y(40))));
T(31) = getPowerDeriv(y(41)/y(42),(-params(6)),1);
T(32) = y(23)*(-(T(6)*T(25)*(-(y(27)*y(29)))/((y(26)+y(42)*y(27))*(y(26)+y(42)*y(27)))));

end

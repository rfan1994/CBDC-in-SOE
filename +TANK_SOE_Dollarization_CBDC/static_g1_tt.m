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

assert(length(T) >= 42);

T = TANK_SOE_Dollarization_CBDC.static_resid_tt(T, y, x, params);

T(28) = getPowerDeriv(y(10)*y(41)/params(39),params(35),1);
T(29) = getPowerDeriv(T(25),1-params(33),1);
T(30) = 1/y(29);
T(31) = 1/y(40);
T(32) = getPowerDeriv(y(29)/(y(26)+y(42)*y(27)),T(8),1);
T(33) = y(23)*(-(T(7)*(-y(29))/((y(26)+y(42)*y(27))*(y(26)+y(42)*y(27)))*T(32)));
T(34) = getPowerDeriv(y(26)+y(42)*y(27),T(14),1);
T(35) = getPowerDeriv(T(15),params(12)/(params(12)-1),1);
T(36) = params(25)/y(29);
T(37) = getPowerDeriv(y(29)/y(28),T(8),1);
T(38) = (-(params(25)*y(28)))/(y(29)*y(29));
T(39) = y(23)*(-(T(9)*((y(31)+T(5))*(-y(24))/(y(29)*y(29))+T(6)*T(38))+T(7)*T(32)*1/(y(26)+y(42)*y(27))));
T(40) = (-((1-params(1))*y(17)*(-y(44))/(y(40)*y(40))+params(1)*((-y(26))/(y(40)*y(40))+(-y(28))/(y(40)*y(40)))));
T(41) = getPowerDeriv(y(41)/y(42),(-params(6)),1);
T(42) = y(23)*(-(T(7)*T(32)*(-(y(27)*y(29)))/((y(26)+y(42)*y(27))*(y(26)+y(42)*y(27)))));

end

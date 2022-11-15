function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
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

assert(length(T) >= 28);

T(1) = params(7)*y(41)^(-params(6));
T(2) = params(15)/2*(y(39)-params(38))^2;
T(3) = y(41)/y(42);
T(4) = params(8)*T(3)^(-params(6));
T(5) = 1+(1-params(1))*params(19)*((1-params(1))*y(18)-params(22));
T(6) = 2*(params(9)*params(10))^0.5;
T(7) = params(25)*y(28)/y(29);
T(8) = y(24)/y(29);
T(9) = T(8)*(y(31)+T(7));
T(10) = 1/params(12);
T(11) = (y(29)/y(26))^T(10);
T(12) = 1-T(9)*T(11);
T(13) = (y(29)/(y(42)*y(27)))^T(10);
T(14) = 1-T(9)*T(13)+params(1)*params(21)*(params(1)*y(27)-params(24));
T(15) = (y(29)/y(28))^T(10);
T(16) = T(7)+1-T(9)*T(15);
T(17) = (params(1)*y(27)-params(24))^2;
T(18) = (params(12)-1)/params(12);
T(19) = y(26)^T(18)+(y(42)*y(27))^T(18)+y(28)^T(18);
T(20) = params(18)/(params(18)-1);
T(21) = T(20)*(y(12)*params(2)*(y(35)+(1-params(14))*y(37))-y(12)*(y(37)-1));
T(22) = y(12)*params(2)/y(40);
T(23) = 1/(params(18)-1);
T(24) = y(8)^params(13);
T(25) = y(7)^(1-params(13));
T(26) = ((1-params(1))*y(16)-params(23))^2;
T(27) = ((1-params(1))*y(18)-params(22))^2;
T(28) = y(3)-y(45)+(1-params(1))*(y(17)*y(44)/y(40)-y(17))+params(1)*(y(28)/y(40)+y(26)/y(40)-y(26)-y(28));

end

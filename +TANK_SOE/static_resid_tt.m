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

assert(length(T) >= 19);

T(1) = 1-params(15)/2*(y(39)-params(38))^2;
T(2) = params(8)*(y(41)/y(42))^(-params(6));
T(3) = params(7)*y(41)^(-params(6));
T(4) = (y(29)/y(26))^(1/params(12));
T(5) = 1-y(31)*y(24)/y(29)*T(4);
T(6) = y(26)^((params(12)-1)/params(12));
T(7) = (-params(24))^2;
T(8) = y(12)*params(2)/y(40);
T(9) = y(8)^params(13);
T(10) = y(7)^(1-params(13));
T(11) = ((1-params(1))*y(18)-params(22))^2;
T(12) = (-params(23))^2;
T(13) = (y(44)/params(37))^params(33);
T(14) = (y(40)/params(38))^params(34);
T(15) = (y(10)*y(41)/params(39))^params(35);
T(16) = (y(43)/params(40))^params(36);
T(17) = T(14)*T(15)*T(16);
T(18) = T(17)^(1-params(33));
T(19) = y(41)*y(3)-y(45)+(1-params(1))*(y(17)*y(44)/y(40)-y(17))+params(1)*(y(26)/y(40)-y(26));

end

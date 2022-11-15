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

assert(length(T) >= 11);

T(1) = y(38)/y(39);
T(2) = params(8)*T(1)^(-params(6));
T(3) = params(15)/2*(y(36)-params(38))^2;
T(4) = params(7)*y(38)^(-params(6));
T(5) = (y(27)/y(25))^(1/params(12));
T(6) = 1-T(5)*y(29)*y(23)/y(27);
T(7) = y(12)*params(2)/y(37);
T(8) = y(8)^params(13);
T(9) = y(7)^(1-params(13));
T(10) = y(17)-y(17)*y(5)+params(19)/2*((1-params(1))*y(17)-params(22))^2;
T(11) = y(3)-y(42)+(1-params(1))*(y(16)*y(41)/y(37)-y(16))+params(1)*(y(25)/y(37)-y(25));

end

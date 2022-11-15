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

assert(length(T) >= 14);

T(1) = params(7)*y(29)^(-params(6));
T(2) = params(13)/2*(y(27)-params(31))^2;
T(3) = y(29)/y(30);
T(4) = params(8)*T(3)^(-params(6));
T(5) = y(11)*params(2)/y(28);
T(6) = y(7)^params(11);
T(7) = y(6)^(1-params(11));
T(8) = y(16)-y(16)*y(4)+params(17)/2*((1-params(1))*y(16)-params(18))^2;
T(9) = (y(32)/params(30))^params(26);
T(10) = (y(28)/params(31))^params(27);
T(11) = (y(9)*y(29)/params(32))^params(28);
T(12) = (y(31)/params(33))^params(29);
T(13) = T(10)*T(11)*T(12);
T(14) = T(13)^(1-params(26));

end

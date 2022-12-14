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

assert(length(T) >= 17);

T = Benchmark.static_resid_tt(T, y, x, params);

T(15) = getPowerDeriv(y(9)*y(29)/params(39),params(35),1);
T(16) = getPowerDeriv(T(13),1-params(33),1);
T(17) = getPowerDeriv(T(3),(-params(6)),1);

end

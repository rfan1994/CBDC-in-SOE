function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 25);

T = Benchmark.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(21) = (-(params(17)/2*(-y(18))/(y(5)*y(5))*2*(y(18)/y(5)-1)));
T(22) = (-(params(17)/2*2*(y(18)/y(5)-1)*1/y(5)));
T(23) = getPowerDeriv(y(19)*y(39)/params(39),params(35),1);
T(24) = getPowerDeriv(T(18),1-params(33),1);
T(25) = getPowerDeriv(T(3),(-params(6)),1);

end

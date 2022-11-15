function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 72);

T = Benchmark.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(68) = getPowerDeriv(T(3),(-params(6)),2);
T(69) = (-(T(6)*(T(30)*(-((-y(18))*(y(5)+y(5))))/(y(5)*y(5)*y(5)*y(5))+T(29)*2*T(29))));
T(70) = getPowerDeriv(y(19)*y(39)/params(32),params(28),2);
T(71) = getPowerDeriv(T(24),1-params(26),2);
T(72) = (-(y(6)*(1-params(1))*(-((-y(10))*(y(38)+y(38))))/(y(38)*y(38)*y(38)*y(38))));

end

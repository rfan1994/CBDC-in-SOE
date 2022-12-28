function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 20);

T(1) = 1-params(15)/2*(y(37)-params(38))^2;
T(2) = params(7)*y(39)^(-params(6));
T(3) = y(39)/y(40);
T(4) = params(8)*T(3)^(-params(6));
T(5) = params(2)*y(59)/y(65);
T(6) = 1-params(17)/2*(y(18)/y(5)-1)^2;
T(7) = T(6)-y(18)*params(17)*(y(18)/y(5)-1)/y(5);
T(8) = params(17)*y(59)*params(2)*y(63)*(y(57)/y(18)-1);
T(9) = (y(57)/y(18))^2;
T(10) = y(4)^params(13);
T(11) = y(16)^(1-params(13));
T(12) = y(64)*params(2)*y(59)/y(21)*(y(64)-params(38))*y(66)*y(58);
T(13) = y(26)-y(3)*y(7)+params(19)/2*((1-params(1))*y(26)-params(22))^2;
T(14) = (y(10)/params(37))^params(33);
T(15) = (y(38)/params(38))^params(34);
T(16) = (y(19)*y(39)/params(39))^params(35);
T(17) = (y(41)/params(40))^params(36);
T(18) = T(15)*T(16)*T(17);
T(19) = T(18)^(1-params(33));
T(20) = T(14)*T(19)*exp(x(it_, 5));

end

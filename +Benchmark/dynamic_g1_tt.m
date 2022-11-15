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

assert(length(T) >= 67);

T = Benchmark.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(27) = getPowerDeriv(y(16),1-params(11),1);
T(28) = getPowerDeriv(y(4),params(11),1);
T(29) = (-y(18))/(y(5)*y(5));
T(30) = 2*(y(18)/y(5)-1);
T(31) = (-(T(6)*T(29)*T(30)));
T(32) = T(31)-(y(5)*y(18)*params(15)*T(29)-y(18)*params(15)*(y(18)/y(5)-1))/(y(5)*y(5));
T(33) = 1/y(5);
T(34) = (-(T(6)*T(30)*T(33)));
T(35) = params(15)*(y(18)/y(5)-1)+y(18)*params(15)*T(33);
T(36) = (-y(58))/(y(18)*y(18));
T(37) = 2*y(58)/y(18);
T(38) = T(36)*T(37);
T(39) = 1/y(18);
T(40) = params(15)*y(60)*params(2)*y(64)*T(39);
T(41) = T(37)*T(39);
T(42) = y(19)*y(39)*y(19)*y(39);
T(43) = y(39)/params(32);
T(44) = getPowerDeriv(y(19)*y(39)/params(32),params(28),1);
T(45) = T(23)*T(21)*T(43)*T(44);
T(46) = getPowerDeriv(T(24),1-params(26),1);
T(47) = y(59)*y(67)*y(65)*(y(65)-params(31))*(-(params(2)*y(60)))/(y(21)*y(21));
T(48) = params(2)/y(66);
T(49) = T(5)*params(2)*(y(63)+(1-params(12))*y(64))-(params(2)*y(60)*(y(63)+(1-params(12))*y(64))-y(21)*(y(35)-1))*T(48);
T(50) = T(9)*params(15)*params(2)*y(64);
T(51) = y(59)*y(67)*y(65)*(y(65)-params(31))*params(2)/y(21);
T(52) = T(9)*params(2)*y(60)*params(15);
T(53) = y(67)*(T(15)*(y(65)-params(31))+T(15)*y(65));
T(54) = y(59)*T(53);
T(55) = 1/params(31)*getPowerDeriv(y(38)/params(31),params(27),1);
T(56) = (-(exp(x(it_, 5))*T(20)*T(46)*T(23)*T(22)*T(55)));
T(57) = (-(params(2)*y(60)))/(y(66)*y(66));
T(58) = params(7)*getPowerDeriv(y(39),(-params(6)),1);
T(59) = 1/y(40);
T(60) = getPowerDeriv(T(3),(-params(6)),1);
T(61) = T(23)*T(21)*T(44)*y(19)/params(32);
T(62) = (-y(39))/(y(40)*y(40));
T(63) = 1/params(33)*getPowerDeriv(y(41)/params(33),params(29),1);
T(64) = (-(exp(x(it_, 5))*T(20)*T(46)*T(21)*T(22)*T(63)));
T(65) = 1/params(30);
T(66) = T(65)*getPowerDeriv(y(10)/params(30),params(26),1);
T(67) = (-(exp(x(it_, 5))*T(25)*T(66)));

end

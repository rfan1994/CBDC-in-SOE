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

assert(length(T) >= 31);

T(1) = params(7)*y(52)^(-params(6));
T(2) = params(15)/2*(y(50)-params(38))^2;
T(3) = y(52)/y(53);
T(4) = params(8)*T(3)^(-params(6));
T(5) = params(25)*y(40)/y(41);
T(6) = y(37)/y(41);
T(7) = T(6)*(y(43)+T(5));
T(8) = 1/params(12);
T(9) = (y(41)/y(39))^T(8);
T(10) = 1-T(7)*T(9);
T(11) = (y(41)/y(40))^T(8);
T(12) = T(5)+1-T(7)*T(11);
T(13) = (params(12)-1)/params(12);
T(14) = y(39)^T(13)+y(40)^T(13);
T(15) = params(2)*y(74)/y(81);
T(16) = 1-params(17)/2*(y(23)/y(7)-1)^2;
T(17) = T(16)-y(23)*params(17)*(y(23)/y(7)-1)/y(7);
T(18) = params(17)*y(74)*params(2)*y(79)*(y(72)/y(23)-1);
T(19) = (y(72)/y(23))^2;
T(20) = y(6)^params(13);
T(21) = y(21)^(1-params(13));
T(22) = y(80)*params(2)*y(74)/y(26)*(y(80)-params(38))*y(82)*y(73);
T(23) = y(31)-y(5)*y(9)+params(19)/2*((1-params(1))*y(31)-params(22))^2;
T(24) = (y(14)/params(37))^params(33);
T(25) = (y(51)/params(38))^params(34);
T(26) = (y(24)*y(52)/params(39))^params(35);
T(27) = (y(54)/params(40))^params(36);
T(28) = T(25)*T(26)*T(27);
T(29) = T(28)^(1-params(33));
T(30) = T(24)*T(29)*exp(x(it_, 6));
T(31) = y(17)-y(56)+(1-params(1))*(y(14)/y(51)*y(8)-y(30))+params(1)*(y(11)/y(51)+y(10)/y(51)-y(39)-y(40));

end

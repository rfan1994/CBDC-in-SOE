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

assert(length(T) >= 26);

T(1) = params(7)*y(39)^(-params(6));
T(2) = params(13)/2*(y(37)-params(31))^2;
T(3) = y(39)/y(40);
T(4) = params(8)*T(3)^(-params(6));
T(5) = params(2)*y(60)/y(66);
T(6) = params(15)/2;
T(7) = 1-T(6)*(y(18)/y(5)-1)^2;
T(8) = T(7)-y(18)*params(15)*(y(18)/y(5)-1)/y(5);
T(9) = y(58)/y(18)-1;
T(10) = params(15)*y(60)*params(2)*y(64)*T(9);
T(11) = (y(58)/y(18))^2;
T(12) = y(4)^params(11);
T(13) = y(16)^(1-params(11));
T(14) = params(14)/params(13);
T(15) = params(2)*y(60)/y(21);
T(16) = y(65)*T(15)*(y(65)-params(31));
T(17) = T(16)*y(67);
T(18) = T(17)*y(59);
T(19) = y(26)-y(3)*y(7)+params(17)/2*((1-params(1))*y(26)-params(18))^2;
T(20) = (y(10)/params(30))^params(26);
T(21) = (y(38)/params(31))^params(27);
T(22) = (y(19)*y(39)/params(32))^params(28);
T(23) = (y(41)/params(33))^params(29);
T(24) = T(21)*T(22)*T(23);
T(25) = T(24)^(1-params(26));
T(26) = T(20)*T(25)*exp(x(it_, 5));

end

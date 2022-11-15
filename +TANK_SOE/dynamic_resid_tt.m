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

assert(length(T) >= 16);

T(1) = params(7)*y(50)^(-params(6));
T(2) = params(15)/2*(y(48)-params(38))^2;
T(3) = y(50)/y(51);
T(4) = params(8)*T(3)^(-params(6));
T(5) = (y(39)/y(37))^(1/params(12));
T(6) = params(2)*y(72)/y(79);
T(7) = 1-params(17)/2*(y(21)/y(6)-1)^2;
T(8) = T(7)-y(21)*params(17)*(y(21)/y(6)-1)/y(6);
T(9) = params(17)*y(72)*params(2)*y(77)*(y(70)/y(21)-1);
T(10) = (y(70)/y(21))^2;
T(11) = y(5)^params(13);
T(12) = y(19)^(1-params(13));
T(13) = y(78)*params(2)*y(72)/y(24)*(y(78)-params(38))*y(80)*y(71);
T(14) = y(29)-y(4)*y(8)+params(19)/2*((1-params(1))*y(29)-params(22))^2;
T(15) = 1-T(5)*y(41)*y(35)/y(39);
T(16) = y(15)-y(54)+(1-params(1))*(y(12)/y(49)*y(7)-y(28))+params(1)*(y(9)/y(49)-y(37));

end

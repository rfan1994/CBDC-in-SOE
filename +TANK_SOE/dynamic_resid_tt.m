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

assert(length(T) >= 23);

T(1) = params(7)*y(51)^(-params(6));
T(2) = params(15)/2*(y(49)-params(38))^2;
T(3) = y(51)/y(52);
T(4) = params(8)*T(3)^(-params(6));
T(5) = (y(40)/y(38))^(1/params(12));
T(6) = params(2)*y(73)/y(80);
T(7) = 1-params(17)/2*(y(22)/y(7)-1)^2;
T(8) = T(7)-y(22)*params(17)*(y(22)/y(7)-1)/y(7);
T(9) = params(17)*y(73)*params(2)*y(78)*(y(71)/y(22)-1);
T(10) = (y(71)/y(22))^2;
T(11) = y(6)^params(13);
T(12) = y(20)^(1-params(13));
T(13) = y(79)*params(2)*y(73)/y(25)*(y(79)-params(38))*y(81)*y(72);
T(14) = y(30)-y(5)*y(9)+params(19)/2*((1-params(1))*y(30)-params(22))^2;
T(15) = (y(13)/params(37))^params(33);
T(16) = (y(50)/params(38))^params(34);
T(17) = (y(23)*y(51)/params(39))^params(35);
T(18) = (y(53)/params(40))^params(36);
T(19) = T(16)*T(17)*T(18);
T(20) = T(19)^(1-params(33));
T(21) = T(15)*T(20)*exp(x(it_, 6));
T(22) = 1-T(5)*y(42)*y(36)/y(40);
T(23) = y(16)-y(55)+(1-params(1))*(y(13)/y(50)*y(8)-y(29))+params(1)*(y(10)/y(50)-y(38));

end

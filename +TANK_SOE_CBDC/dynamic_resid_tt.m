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

assert(length(T) >= 24);

T(1) = params(7)*y(51)^(-params(6));
T(2) = params(15)/2*(y(49)-params(38))^2;
T(3) = y(51)/y(52);
T(4) = params(8)*T(3)^(-params(6));
T(5) = params(25)*y(39)/y(40);
T(6) = y(36)/y(40);
T(7) = T(6)*(y(42)+T(5));
T(8) = 1/params(12);
T(9) = (y(40)/y(38))^T(8);
T(10) = 1-T(7)*T(9);
T(11) = (y(40)/y(39))^T(8);
T(12) = T(5)+1-T(7)*T(11);
T(13) = (params(12)-1)/params(12);
T(14) = y(38)^T(13)+y(39)^T(13);
T(15) = params(2)*y(73)/y(80);
T(16) = 1-params(17)/2*(y(22)/y(6)-1)^2;
T(17) = T(16)-y(22)*params(17)*(y(22)/y(6)-1)/y(6);
T(18) = params(17)*y(73)*params(2)*y(78)*(y(71)/y(22)-1);
T(19) = (y(71)/y(22))^2;
T(20) = y(5)^params(13);
T(21) = y(20)^(1-params(13));
T(22) = y(79)*params(2)*y(73)/y(25)*(y(79)-params(38))*y(81)*y(72);
T(23) = y(30)-y(4)*y(8)+params(19)/2*((1-params(1))*y(30)-params(22))^2;
T(24) = y(16)-y(55)+(1-params(1))*(y(13)/y(50)*y(7)-y(29))+params(1)*(y(10)/y(50)+y(9)/y(50)-y(38)-y(39));

end

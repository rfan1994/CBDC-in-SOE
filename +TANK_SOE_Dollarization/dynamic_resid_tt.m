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

T(1) = params(7)*y(54)^(-params(6));
T(2) = params(15)/2*(y(52)-params(38))^2;
T(3) = y(54)/y(55);
T(4) = params(8)*T(3)^(-params(6));
T(5) = params(2)*y(77)*y(86)/y(55);
T(6) = 1/params(12);
T(7) = (y(42)/y(39))^T(6);
T(8) = (y(42)/(y(55)*y(40)))^T(6);
T(9) = (params(1)*y(40)-params(24))^2;
T(10) = (params(12)-1)/params(12);
T(11) = y(39)^T(10)+(y(55)*y(40))^T(10);
T(12) = params(2)*y(77)*(y(81)+(1-params(14))*y(82))-y(25)*(y(50)-1);
T(13) = params(2)*y(77)/y(84);
T(14) = 1-params(17)/2*(y(22)/y(6)-1)^2;
T(15) = T(14)-y(22)*params(17)*(y(22)/y(6)-1)/y(6);
T(16) = params(17)*y(77)*params(2)*y(82)*(y(75)/y(22)-1);
T(17) = (y(75)/y(22))^2;
T(18) = y(5)^params(13);
T(19) = y(20)^(1-params(13));
T(20) = y(83)*params(2)*y(77)/y(25)*(y(83)-params(38))*y(85)*y(76);
T(21) = ((1-params(1))*y(31)-params(22))^2;
T(22) = y(44)*y(37)/y(42);
T(23) = 1-T(7)*T(22);
T(24) = params(1)*params(21)*(params(1)*y(40)-params(24))+1-T(8)*T(22);
T(25) = (-params(23))^2;
T(26) = y(16)-y(58)+(1-params(1))*(y(13)/y(53)*y(7)-y(30))+params(1)*(y(9)/y(53)-y(39));

end

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

assert(length(T) >= 30);

T(1) = params(7)*y(55)^(-params(6));
T(2) = params(15)/2*(y(53)-params(38))^2;
T(3) = y(55)/y(56);
T(4) = params(8)*T(3)^(-params(6));
T(5) = params(2)*y(78)*y(87)/y(56);
T(6) = params(25)*y(42)/y(43);
T(7) = y(38)/y(43);
T(8) = T(7)*(y(45)+T(6));
T(9) = 1/params(12);
T(10) = (y(43)/y(40))^T(9);
T(11) = 1-T(8)*T(10);
T(12) = (y(43)/(y(56)*y(41)))^T(9);
T(13) = 1-T(8)*T(12)+params(1)*params(21)*(params(1)*y(41)-params(24));
T(14) = (y(43)/y(42))^T(9);
T(15) = T(6)+1-T(8)*T(14);
T(16) = (params(1)*y(41)-params(24))^2;
T(17) = (params(12)-1)/params(12);
T(18) = y(40)^T(17)+(y(56)*y(41))^T(17)+y(42)^T(17);
T(19) = params(2)*y(78)*(y(82)+(1-params(14))*y(83))-y(26)*(y(51)-1);
T(20) = params(2)*y(78)/y(85);
T(21) = 1-params(17)/2*(y(23)/y(6)-1)^2;
T(22) = T(21)-y(23)*params(17)*(y(23)/y(6)-1)/y(6);
T(23) = params(17)*y(78)*params(2)*y(83)*(y(76)/y(23)-1);
T(24) = (y(76)/y(23))^2;
T(25) = y(5)^params(13);
T(26) = y(21)^(1-params(13));
T(27) = y(84)*params(2)*y(78)/y(26)*(y(84)-params(38))*y(86)*y(77);
T(28) = ((1-params(1))*y(32)-params(22))^2;
T(29) = y(17)-y(59)+(1-params(1))*(y(14)/y(54)*y(7)-y(31))+params(1)*(y(11)/y(54)+y(9)/y(54)-y(40)-y(42));
T(30) = (-params(23))^2;

end

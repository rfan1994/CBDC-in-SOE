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

assert(length(T) >= 34);

T(1) = params(7)*y(55)^(-params(6));
T(2) = params(15)/2*(y(53)-params(38))^2;
T(3) = y(55)/y(56);
T(4) = params(8)*T(3)^(-params(6));
T(5) = params(2)*y(80)*y(89)/y(56);
T(6) = 1+(1-params(1))*params(19)*((1-params(1))*y(32)-params(22));
T(7) = 2*(params(9)*params(10))^0.5;
T(8) = params(25)*y(42)/y(43);
T(9) = y(38)/y(43);
T(10) = T(9)*(y(45)+T(8));
T(11) = 1/params(12);
T(12) = (y(43)/y(40))^T(11);
T(13) = 1-T(10)*T(12);
T(14) = (y(43)/(y(56)*y(41)))^T(11);
T(15) = 1-T(10)*T(14)+params(1)*params(21)*(params(1)*y(41)-params(24));
T(16) = (y(43)/y(42))^T(11);
T(17) = T(8)+1-T(10)*T(16);
T(18) = (params(1)*y(41)-params(24))^2;
T(19) = (params(12)-1)/params(12);
T(20) = y(40)^T(19)+(y(56)*y(41))^T(19)+y(42)^T(19);
T(21) = params(18)/(params(18)-1);
T(22) = T(21)*(params(2)*y(80)*(y(84)+(1-params(14))*y(85))-y(26)*(y(51)-1));
T(23) = params(2)*y(80)/y(87);
T(24) = 1/(params(18)-1);
T(25) = 1-params(17)/2*(y(23)/y(6)-1)^2;
T(26) = T(25)-y(23)*params(17)*(y(23)/y(6)-1)/y(6);
T(27) = params(17)*y(80)*params(2)*y(85)*(y(78)/y(23)-1);
T(28) = (y(78)/y(23))^2;
T(29) = y(5)^params(13);
T(30) = y(21)^(1-params(13));
T(31) = y(86)*params(2)*y(80)/y(26)*(y(86)-params(38))*y(88)*y(79);
T(32) = ((1-params(1))*y(30)-params(23))^2;
T(33) = ((1-params(1))*y(32)-params(22))^2;
T(34) = y(17)-y(59)+(1-params(1))*(y(14)/y(54)*y(7)-y(31))+params(1)*(y(11)/y(54)+y(9)/y(54)-y(40)-y(42));

end

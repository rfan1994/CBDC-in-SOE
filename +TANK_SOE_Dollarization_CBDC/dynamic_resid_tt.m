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

assert(length(T) >= 36);

T(1) = 1-params(15)/2*(y(54)-params(38))^2;
T(2) = params(7)*y(56)^(-params(6));
T(3) = params(8)*(y(56)/y(57))^(-params(6));
T(4) = params(2)*y(79)*y(88)/y(57);
T(5) = params(25)*y(43)/y(44);
T(6) = y(39)/y(44);
T(7) = T(6)*(y(46)+T(5));
T(8) = 1/params(12);
T(9) = (y(44)/y(41))^T(8);
T(10) = 1-T(7)*T(9);
T(11) = (y(44)/(y(57)*y(42)))^T(8);
T(12) = 1-T(7)*T(11)+params(1)*params(21)*(params(1)*y(42)-params(24));
T(13) = (y(44)/y(43))^T(8);
T(14) = T(5)+1-T(7)*T(13);
T(15) = (params(1)*y(42)-params(24))^2;
T(16) = (params(12)-1)/params(12);
T(17) = y(41)^T(16)+(y(57)*y(42))^T(16)+y(43)^T(16);
T(18) = params(2)*y(79)*(y(83)+(1-params(14))*y(84))-y(27)*(y(52)-1);
T(19) = params(2)*y(79)/y(86);
T(20) = 1-params(17)/2*(y(24)/y(7)-1)^2;
T(21) = T(20)-y(24)*params(17)*(y(24)/y(7)-1)/y(7);
T(22) = params(17)*y(79)*params(2)*y(84)*(y(77)/y(24)-1);
T(23) = (y(77)/y(24))^2;
T(24) = y(6)^params(13);
T(25) = y(22)^(1-params(13));
T(26) = y(85)*params(2)*y(79)/y(27)*(y(85)-params(38))*y(87)*y(78);
T(27) = ((1-params(1))*y(33)-params(22))^2;
T(28) = ((1-params(1))*y(31)-params(23))^2;
T(29) = (y(15)/params(37))^params(33);
T(30) = (y(55)/params(38))^params(34);
T(31) = (y(25)*y(56)/params(39))^params(35);
T(32) = (y(58)/params(40))^params(36);
T(33) = T(30)*T(31)*T(32);
T(34) = T(33)^(1-params(33));
T(35) = T(29)*T(34)*exp(x(it_, 6));
T(36) = y(18)-y(60)+(1-params(1))*(y(15)/y(55)*y(8)-y(32))+params(1)*(y(12)/y(55)+y(10)/y(55)-y(41)-y(43));

end

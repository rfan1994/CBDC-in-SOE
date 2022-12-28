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

T(1) = 1-params(15)/2*(y(53)-params(38))^2;
T(2) = params(7)*y(55)^(-params(6));
T(3) = params(8)*(y(55)/y(56))^(-params(6));
T(4) = params(2)*y(77)*y(86)/y(56);
T(5) = params(25)*y(42)/y(43);
T(6) = y(38)/y(43);
T(7) = T(6)*(y(45)+T(5));
T(8) = 1/params(12);
T(9) = (y(43)/y(42))^T(8);
T(10) = T(5)+1-T(7)*T(9);
T(11) = (params(12)-1)/params(12);
T(12) = params(2)*y(77)*(y(81)+(1-params(14))*y(82))-y(26)*(y(51)-1);
T(13) = params(2)*y(77)/y(84);
T(14) = 1-params(17)/2*(y(23)/y(7)-1)^2;
T(15) = T(14)-y(23)*params(17)*(y(23)/y(7)-1)/y(7);
T(16) = params(17)*y(77)*params(2)*y(82)*(y(75)/y(23)-1);
T(17) = (y(75)/y(23))^2;
T(18) = y(6)^params(13);
T(19) = y(21)^(1-params(13));
T(20) = y(83)*params(2)*y(77)/y(26)*(y(83)-params(38))*y(85)*y(76);
T(21) = ((1-params(1))*y(32)-params(22))^2;
T(22) = (y(14)/params(37))^params(33);
T(23) = (y(54)/params(38))^params(34);
T(24) = (y(24)*y(55)/params(39))^params(35);
T(25) = (y(57)/params(40))^params(36);
T(26) = T(23)*T(24)*T(25);
T(27) = T(26)^(1-params(33));
T(28) = T(22)*T(27)*exp(x(it_, 6));
T(29) = y(55)*y(17)-y(59)+(1-params(1))*(y(14)/y(54)*y(8)-y(31))+params(1)*(y(11)/y(54)+y(10)/y(54)-y(40)-y(42));
T(30) = (y(43)/y(40))^T(8);
T(31) = 1-T(7)*T(30);
T(32) = y(40)^T(11)+y(42)^T(11);
T(33) = (-params(24))^2;
T(34) = (-params(23))^2;

end

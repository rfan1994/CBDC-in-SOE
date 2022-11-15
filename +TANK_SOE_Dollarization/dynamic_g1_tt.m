function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 86);

T = TANK_SOE_Dollarization.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(37) = getPowerDeriv(y(20),1-params(13),1);
T(38) = getPowerDeriv(y(5),params(13),1);
T(39) = (-y(22))/(y(6)*y(6));
T(40) = 2*(y(22)/y(6)-1);
T(41) = (-(T(17)*T(39)*T(40)));
T(42) = T(41)-(y(6)*y(22)*params(17)*T(39)-y(22)*params(17)*(y(22)/y(6)-1))/(y(6)*y(6));
T(43) = 1/y(6);
T(44) = (-(T(17)*T(40)*T(43)));
T(45) = params(17)*(y(22)/y(6)-1)+y(22)*params(17)*T(43);
T(46) = (-y(75))/(y(22)*y(22));
T(47) = 2*y(75)/y(22);
T(48) = T(46)*T(47);
T(49) = 1/y(22);
T(50) = params(17)*y(77)*params(2)*y(82)*T(49);
T(51) = T(47)*T(49);
T(52) = y(23)*y(54)*y(23)*y(54);
T(53) = y(76)*y(85)*y(83)*(y(83)-params(38))*(-(params(2)*y(77)))/(y(25)*y(25));
T(54) = params(2)*y(86)/y(55);
T(55) = params(2)/y(84);
T(56) = T(20)*params(17)*params(2)*y(82);
T(57) = y(76)*y(85)*y(83)*(y(83)-params(38))*params(2)/y(25);
T(58) = y(44)*1/y(42);
T(59) = 1/y(53);
T(60) = (-y(42))/(y(39)*y(39));
T(61) = getPowerDeriv(y(42)/y(39),T(7),1);
T(62) = T(60)*T(61);
T(63) = getPowerDeriv(y(39),T(13),1);
T(64) = getPowerDeriv(T(14),params(12)/(params(12)-1),1);
T(65) = 1/y(39);
T(66) = (-(y(55)*y(42)))/(y(55)*y(40)*y(55)*y(40));
T(67) = getPowerDeriv(y(42)/(y(55)*y(40)),T(7),1);
T(68) = params(1)*params(1)*params(21)-T(32)*T(66)*T(67);
T(69) = getPowerDeriv(y(55)*y(40),T(13),1);
T(70) = y(44)*(-y(37))/(y(42)*y(42));
T(71) = (-(T(32)*T(61)*T(65)+T(8)*T(70)));
T(72) = 1/(y(55)*y(40));
T(73) = T(67)*T(72);
T(74) = T(20)*params(2)*y(77)*params(17);
T(75) = y(85)*(T(26)*(y(83)-params(38))+T(26)*y(83));
T(76) = y(76)*T(75);
T(77) = (-((1-params(1))*y(7)*(-y(13))/(y(53)*y(53))+params(1)*(-y(9))/(y(53)*y(53))));
T(78) = (-(params(2)*y(77)))/(y(84)*y(84));
T(79) = 1/y(55);
T(80) = getPowerDeriv(T(3),(-params(6)),1);
T(81) = params(7)*getPowerDeriv(y(54),(-params(6)),1);
T(82) = (-y(54))/(y(55)*y(55));
T(83) = (-(params(2)*y(77)*y(86)))/(y(55)*y(55));
T(84) = (-(y(42)*y(40)))/(y(55)*y(40)*y(55)*y(40));
T(85) = T(67)*T(84);
T(86) = params(2)*y(77)/y(55);

end

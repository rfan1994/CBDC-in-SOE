function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = TANK_SOE_CBDC.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(61, 1);
lhs = log(y(15));
rhs = (1-params(41))*log(params(46))+params(41)*log(y(1))-x(it_, 1);
residual(1) = lhs - rhs;
lhs = log(y(16));
rhs = (1-params(42))*log(params(47))+params(42)*log(y(2))-x(it_, 2);
residual(2) = lhs - rhs;
lhs = y(20);
rhs = (1-params(1))*y(27)+params(1)*y(38);
residual(3) = lhs - rhs;
lhs = y(21);
rhs = (1-params(1))*y(28)+params(1)*y(39);
residual(4) = lhs - rhs;
lhs = y(22);
rhs = (1-params(1))*y(29);
residual(5) = lhs - rhs;
lhs = y(24)*T(1);
rhs = T(3)*y(18)+y(17)+T(2)*(y(23)+(1-params(1))*y(27)+y(38)*params(1)*(1+y(44)));
residual(6) = lhs - rhs;
lhs = y(25);
rhs = (1-params(1))*y(36)+params(1)*y(46);
residual(7) = lhs - rhs;
lhs = y(27)^(-params(3));
rhs = y(26)*(1+params(25));
residual(8) = lhs - rhs;
lhs = y(28)^params(5);
rhs = y(26)*y(50)/params(4);
residual(9) = lhs - rhs;
lhs = y(26);
rhs = params(2)*y(78)*y(47)/y(85);
residual(10) = lhs - rhs;
residual(11) = y(30);
lhs = y(26);
rhs = params(2)*y(78)*y(58)/y(85);
residual(12) = lhs - rhs;
lhs = y(26)*(1+(1-params(1))*params(19)*((1-params(1))*y(32)-params(22)));
rhs = T(4)*y(19);
residual(13) = lhs - rhs;
lhs = y(33);
rhs = y(29);
residual(14) = lhs - rhs;
residual(15) = y(34);
residual(16) = y(35);
lhs = y(36);
rhs = y(27)^(1-params(3))/(1-params(3))-params(4)*y(28)^(1+params(5))/(1+params(5))+params(2)*y(79);
residual(17) = lhs - rhs;
lhs = y(38)^(-params(3));
rhs = y(37)*(1+y(44)+y(45)+T(5));
residual(18) = lhs - rhs;
lhs = y(39)^params(5);
rhs = y(50)*y(37)/params(4);
residual(19) = lhs - rhs;
lhs = y(37)*T(10);
rhs = params(2)*y(80)*(1-params(11))/y(85);
residual(20) = lhs - rhs;
residual(21) = y(41);
lhs = y(37)*T(12);
rhs = params(2)*y(80)/y(85);
residual(22) = lhs - rhs;
lhs = y(43);
rhs = T(32)^(params(12)/(params(12)-1));
residual(23) = lhs - rhs;
lhs = y(44);
rhs = y(38)*y(16)*params(9)/y(43)+y(43)*params(10)/y(38)-2*(params(9)*params(10))^0.5;
residual(24) = lhs - rhs;
lhs = y(45);
rhs = y(38)*y(16)*params(9)/y(43)-y(43)*params(10)/y(38);
residual(25) = lhs - rhs;
lhs = y(38)*(1+y(44)+T(5))+y(40)-(1-params(11))*y(10)/y(54)+y(42)-y(11)/y(54);
rhs = y(39)*y(50)-y(61);
residual(26) = lhs - rhs;
lhs = y(46);
rhs = y(38)^(1-params(3))/(1-params(3))-params(4)*y(39)^(1+params(5))/(1+params(5))+params(2)*y(81);
residual(27) = lhs - rhs;
lhs = y(47);
rhs = T(14)/T(15);
residual(28) = lhs - rhs;
lhs = y(48);
rhs = T(14)/T(4);
residual(29) = lhs - rhs;
lhs = y(26);
rhs = y(26)*y(51)*T(17)+T(18)*T(19);
residual(30) = lhs - rhs;
lhs = y(22);
rhs = (1-params(14))*y(6)+y(23)*T(16);
residual(31) = lhs - rhs;
lhs = y(24);
rhs = y(15)*T(20)*T(21);
residual(32) = lhs - rhs;
lhs = y(49);
rhs = y(24)*params(13)*y(52)/y(6);
residual(33) = lhs - rhs;
lhs = y(50);
rhs = y(24)*(1-params(13))*y(52)/y(21);
residual(34) = lhs - rhs;
lhs = params(16)/params(15)*(y(52)/y(55)-(params(16)-1)/params(16));
rhs = y(53)*(y(53)-params(38))-T(22)/(y(24)*y(55));
residual(35) = lhs - rhs;
lhs = y(53);
rhs = y(54)*y(55)/y(12);
residual(36) = lhs - rhs;
lhs = T(1)*y(24)*y(55);
rhs = params(19)*(1-params(1))*y(56)/2*T(23)+y(10)*params(1)*params(11)/y(54)+(1-params(1))*y(56)*(y(32)-y(5)*y(9))+y(55)*y(17)+y(23)+(1-params(1))*y(27)+y(38)*params(1)*(1+y(44));
residual(37) = lhs - rhs;
lhs = 1;
rhs = params(7)*y(55)^(1-params(6))+(1-params(7))*y(56)^(1-params(6));
residual(38) = lhs - rhs;
lhs = y(57);
rhs = y(54)*y(56)/y(13);
residual(39) = lhs - rhs;
lhs = log(y(18));
rhs = (1-params(44))*log(params(49))+params(44)*log(y(4))+x(it_, 4);
residual(40) = lhs - rhs;
lhs = log(y(19));
rhs = (1-params(45))*log(params(50))+params(45)*log(y(5))+x(it_, 5);
residual(41) = lhs - rhs;
lhs = y(58)/params(37);
rhs = T(30);
residual(42) = lhs - rhs;
lhs = y(31);
rhs = params(29)/(1-params(1));
residual(43) = lhs - rhs;
lhs = log(y(17));
rhs = (1-params(43))*log(params(48))+params(43)*log(y(3))+x(it_, 3);
residual(44) = lhs - rhs;
lhs = y(59);
rhs = y(27)*(1-params(1))*params(25)+y(38)*y(42)*params(1)*params(25)/y(43);
residual(45) = lhs - rhs;
lhs = y(60);
rhs = T(31);
residual(46) = lhs - rhs;
lhs = y(61);
rhs = T(31);
residual(47) = lhs - rhs;
lhs = y(62);
rhs = log(y(24)*y(55));
residual(48) = lhs - rhs;
lhs = y(63);
rhs = log(y(20));
residual(49) = lhs - rhs;
lhs = y(64);
rhs = log(y(27));
residual(50) = lhs - rhs;
lhs = y(65);
rhs = log(y(38));
residual(51) = lhs - rhs;
lhs = y(66);
rhs = log(y(58));
residual(52) = lhs - rhs;
lhs = y(67);
rhs = log(y(47));
residual(53) = lhs - rhs;
lhs = y(68);
rhs = log(y(50));
residual(54) = lhs - rhs;
lhs = y(69);
rhs = log(y(53));
residual(55) = lhs - rhs;
lhs = y(70);
rhs = log(y(54));
residual(56) = lhs - rhs;
lhs = y(71);
rhs = log(y(56)/y(55));
residual(57) = lhs - rhs;
lhs = y(72);
rhs = log(y(29));
residual(58) = lhs - rhs;
lhs = y(73);
rhs = log(y(40));
residual(59) = lhs - rhs;
lhs = y(74);
rhs = log(y(42));
residual(60) = lhs - rhs;
residual(61) = y(75);

end

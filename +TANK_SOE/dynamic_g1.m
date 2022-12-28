function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = TANK_SOE.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(60, 91);
g1(1,1)=(-(params(41)*1/y(1)));
g1(1,14)=1/y(14);
g1(1,86)=1;
g1(2,2)=(-(params(42)*1/y(2)));
g1(2,15)=1/y(15);
g1(2,87)=1;
g1(3,19)=1;
g1(3,26)=(-(1-params(1)));
g1(3,37)=(-params(1));
g1(4,20)=1;
g1(4,27)=(-(1-params(1)));
g1(4,38)=(-params(1));
g1(5,21)=1;
g1(5,28)=(-(1-params(1)));
g1(6,16)=(-1);
g1(6,17)=(-T(3));
g1(6,22)=(-T(2));
g1(6,23)=T(1);
g1(6,26)=(-((1-params(1))*T(2)));
g1(6,37)=(-(T(2)*params(1)*(1+y(43))));
g1(6,10)=(-(T(2)*params(1)*params(11)*T(32)));
g1(6,43)=(-(params(1)*y(37)*T(2)));
g1(6,52)=y(23)*(-(params(15)/2*2*(y(52)-params(38))));
g1(6,53)=(-(T(2)*params(1)*params(11)*(-y(10))/(y(53)*y(53))));
g1(6,54)=(-(y(17)*params(8)*1/y(55)*T(35)+(y(22)+(1-params(1))*y(26)+params(1)*(y(37)*(1+y(43))+params(11)*y(10)/y(53)))*params(7)*getPowerDeriv(y(54),(-params(6)),1)));
g1(6,55)=(-(y(17)*params(8)*T(35)*(-y(54))/(y(55)*y(55))));
g1(7,24)=1;
g1(7,35)=(-(1-params(1)));
g1(7,45)=(-params(1));
g1(8,25)=(-(1+params(25)));
g1(8,26)=getPowerDeriv(y(26),(-params(3)),1);
g1(9,25)=(-(y(49)/params(4)));
g1(9,27)=getPowerDeriv(y(27),params(5),1);
g1(9,49)=(-(y(25)/params(4)));
g1(10,25)=1;
g1(10,76)=(-(params(2)*y(46)/y(83)));
g1(10,46)=(-T(7));
g1(10,83)=(-((-(params(2)*y(76)*y(46)))/(y(83)*y(83))));
g1(11,29)=1;
g1(12,25)=1;
g1(12,76)=(-(params(2)*y(57)/y(83)));
g1(12,83)=(-((-(params(2)*y(76)*y(57)))/(y(83)*y(83))));
g1(12,57)=(-T(7));
g1(13,18)=(-T(4));
g1(13,25)=1+(1-params(1))*params(19)*((1-params(1))*y(31)-params(22));
g1(13,76)=(-(y(18)*params(2)*y(85)/y(55)));
g1(13,31)=y(25)*(1-params(1))*(1-params(1))*params(19);
g1(13,55)=(-(y(18)*(-(params(2)*y(76)*y(85)))/(y(55)*y(55))));
g1(13,85)=(-(y(18)*params(2)*y(76)/y(55)));
g1(14,28)=(-1);
g1(14,32)=1;
g1(15,33)=1;
g1(16,34)=1;
g1(17,26)=(-(getPowerDeriv(y(26),1-params(3),1)/(1-params(3))));
g1(17,27)=params(4)*getPowerDeriv(y(27),1+params(5),1)/(1+params(5));
g1(17,35)=1;
g1(17,77)=(-params(2));
g1(18,36)=(-(1+y(43)+y(44)));
g1(18,37)=getPowerDeriv(y(37),(-params(3)),1);
g1(18,43)=(-y(36));
g1(18,44)=(-y(36));
g1(19,36)=(-(y(49)/params(4)));
g1(19,38)=getPowerDeriv(y(38),params(5),1);
g1(19,49)=(-(y(36)/params(4)));
g1(20,36)=T(24);
g1(20,78)=(-(params(2)*(1-params(11))/y(83)));
g1(20,37)=y(36)*(-(T(23)*y(44)*1/y(42)));
g1(20,39)=y(36)*(-(y(44)*y(37)/y(42)*(-y(42))/(y(39)*y(39))*T(33)));
g1(20,42)=y(36)*(-(T(23)*y(44)*(-y(37))/(y(42)*y(42))+y(44)*y(37)/y(42)*T(33)*1/y(39)));
g1(20,44)=y(36)*(-(y(37)/y(42)*T(23)));
g1(20,83)=(-((-(params(2)*y(78)*(1-params(11))))/(y(83)*y(83))));
g1(21,40)=1;
g1(22,41)=1;
g1(23,39)=(-(getPowerDeriv(y(39),(params(12)-1)/params(12),1)*getPowerDeriv(T(5),params(12)/(params(12)-1),1)));
g1(23,42)=1;
g1(24,15)=(-(y(37)*params(9)/y(42)));
g1(24,37)=(-(y(15)*params(9)/y(42)+(-(y(42)*params(10)))/(y(37)*y(37))));
g1(24,42)=(-((-(y(37)*y(15)*params(9)))/(y(42)*y(42))+params(10)/y(37)));
g1(24,43)=1;
g1(25,15)=(-(y(37)*params(9)/y(42)));
g1(25,37)=(-(y(15)*params(9)/y(42)-(-(y(42)*params(10)))/(y(37)*y(37))));
g1(25,42)=(-((-(y(37)*y(15)*params(9)))/(y(42)*y(42))-params(10)/y(37)));
g1(25,44)=1;
g1(26,37)=1+y(43);
g1(26,38)=(-y(49));
g1(26,10)=(-((1-params(11))/y(53)));
g1(26,39)=1;
g1(26,43)=y(37);
g1(26,49)=(-y(38));
g1(26,53)=(-((-(y(10)*(1-params(11))))/(y(53)*y(53))));
g1(26,55)=params(21)/2*T(25);
g1(26,60)=1;
g1(27,37)=(-(getPowerDeriv(y(37),1-params(3),1)/(1-params(3))));
g1(27,38)=params(4)*getPowerDeriv(y(38),1+params(5),1)/(1+params(5));
g1(27,45)=1;
g1(27,79)=(-params(2));
g1(28,25)=(-((-(y(50)-1))/T(7)));
g1(28,76)=(-((T(7)*params(2)*(y(80)+(1-params(14))*y(81))-T(6)*params(2)/y(83))/(T(7)*T(7))));
g1(28,46)=1;
g1(28,80)=(-(params(2)*y(76)/T(7)));
g1(28,50)=(-((-y(25))/T(7)));
g1(28,81)=(-(params(2)*y(76)*(1-params(14))/T(7)));
g1(28,83)=(-((-(T(6)*(-(params(2)*y(76)))/(y(83)*y(83))))/(T(7)*T(7))));
g1(29,25)=(-((-(y(50)-1))/T(4)));
g1(29,76)=(-((T(4)*params(2)*(y(80)+(1-params(14))*y(81))-T(6)*params(2)*y(85)/y(55))/(T(4)*T(4))));
g1(29,47)=1;
g1(29,80)=(-(params(2)*y(76)/T(4)));
g1(29,50)=(-((-y(25))/T(4)));
g1(29,81)=(-(params(2)*y(76)*(1-params(14))/T(4)));
g1(29,55)=(-((-(T(6)*(-(params(2)*y(76)*y(85)))/(y(55)*y(55))))/(T(4)*T(4))));
g1(29,85)=(-((-(T(6)*params(2)*y(76)/y(55)))/(T(4)*T(4))));
g1(30,7)=(-(y(25)*y(50)*(T(28)-(y(7)*y(22)*params(17)*(-y(22))/(y(7)*y(7))-y(22)*params(17)*(y(22)/y(7)-1))/(y(7)*y(7)))));
g1(30,22)=(-(y(25)*y(50)*(T(29)-(params(17)*(y(22)/y(7)-1)+y(22)*params(17)*1/y(7))/y(7))+T(11)*params(17)*y(76)*params(2)*y(81)*(-y(74))/(y(22)*y(22))+T(10)*(-y(74))/(y(22)*y(22))*2*y(74)/y(22)));
g1(30,74)=(-(T(11)*params(17)*y(76)*params(2)*y(81)*1/y(22)+T(10)*2*y(74)/y(22)*1/y(22)));
g1(30,25)=1-y(50)*T(9);
g1(30,76)=(-(T(11)*(y(74)/y(22)-1)*params(17)*params(2)*y(81)));
g1(30,50)=(-(y(25)*T(9)));
g1(30,81)=(-(T(11)*(y(74)/y(22)-1)*params(2)*y(76)*params(17)));
g1(31,6)=(-(1-params(14)));
g1(31,21)=1;
g1(31,7)=(-(y(22)*T(28)));
g1(31,22)=(-(T(8)+y(22)*T(29)));
g1(32,14)=(-(T(12)*T(13)));
g1(32,20)=(-(y(14)*T(12)*getPowerDeriv(y(20),1-params(13),1)));
g1(32,6)=(-(T(13)*y(14)*getPowerDeriv(y(6),params(13),1)));
g1(32,23)=1;
g1(33,6)=(-((-(y(23)*params(13)*y(51)))/(y(6)*y(6))));
g1(33,23)=(-(params(13)*y(51)/y(6)));
g1(33,48)=1;
g1(33,51)=(-(y(23)*params(13)/y(6)));
g1(34,20)=(-((-(y(23)*(1-params(13))*y(51)))/(y(20)*y(20))));
g1(34,23)=(-((1-params(13))*y(51)/y(20)));
g1(34,49)=1;
g1(34,51)=(-(y(23)*(1-params(13))/y(20)));
g1(35,23)=(-(y(54)*T(14)))/(y(23)*y(54)*y(23)*y(54));
g1(35,75)=y(82)*params(2)*y(76)/y(25)*(y(82)-params(38))*y(84)/(y(23)*y(54));
g1(35,25)=y(75)*y(84)*y(82)*(y(82)-params(38))*(-(params(2)*y(76)))/(y(25)*y(25))/(y(23)*y(54));
g1(35,76)=y(75)*y(84)*y(82)*(y(82)-params(38))*params(2)/y(25)/(y(23)*y(54));
g1(35,51)=params(16)/params(15)*1/y(54);
g1(35,52)=(-(y(52)+y(52)-params(38)));
g1(35,82)=y(75)*y(84)*(params(2)*y(76)/y(25)*(y(82)-params(38))+params(2)*y(76)/y(25)*y(82))/(y(23)*y(54));
g1(35,54)=params(16)/params(15)*(-y(51))/(y(54)*y(54))+(-(y(23)*T(14)))/(y(23)*y(54)*y(23)*y(54));
g1(35,84)=y(82)*params(2)*y(76)/y(25)*(y(82)-params(38))*y(75)/(y(23)*y(54));
g1(36,52)=1;
g1(36,53)=(-(y(54)/y(11)));
g1(36,11)=(-(y(53)*(-y(54))/(y(11)*y(11))));
g1(36,54)=(-(y(53)*1/y(11)));
g1(37,16)=(-y(54));
g1(37,5)=(-((1-params(1))*y(55)*(-y(9))));
g1(37,22)=(-1);
g1(37,23)=T(1)*y(54);
g1(37,26)=(-(1-params(1)));
g1(37,9)=(-((1-params(1))*y(55)*(-y(5))));
g1(37,31)=(-((1-params(1))*y(55)+(1-params(1))*y(55)*params(19)/2*(1-params(1))*2*((1-params(1))*y(31)-params(22))));
g1(37,37)=(-(params(1)*(1+y(43))));
g1(37,10)=(-(params(1)*params(11)*T(32)));
g1(37,43)=(-(params(1)*y(37)));
g1(37,52)=y(23)*y(54)*(-(params(15)/2*2*(y(52)-params(38))));
g1(37,53)=(-(params(1)*params(11)*(-y(10))/(y(53)*y(53))));
g1(37,54)=y(23)*T(1)-y(16);
g1(37,55)=(-(T(15)*(1-params(1))*params(19)/2+(1-params(1))*(y(31)-y(5)*y(9))+T(26)*(1-params(1))*params(20)/2+T(25)*params(1)*params(21)/2));
g1(38,54)=(-(params(7)*getPowerDeriv(y(54),1-params(6),1)));
g1(38,55)=(-((1-params(7))*getPowerDeriv(y(55),1-params(6),1)));
g1(39,53)=(-(y(55)/y(12)));
g1(39,12)=(-(y(53)*(-y(55))/(y(12)*y(12))));
g1(39,55)=(-(y(53)*1/y(12)));
g1(39,56)=1;
g1(40,4)=(-(params(44)*1/y(4)));
g1(40,17)=1/y(17);
g1(40,89)=(-1);
g1(41,5)=(-(params(45)*1/y(5)));
g1(41,18)=1/y(18);
g1(41,90)=(-1);
g1(42,91)=(-T(22));
g1(42,23)=(-(exp(x(it_, 6))*T(16)*T(19)*T(17)*y(54)/params(39)*T(30)*T(31)));
g1(42,53)=(-(exp(x(it_, 6))*T(16)*T(31)*T(19)*T(18)*1/params(38)*getPowerDeriv(y(53)/params(38),params(34),1)));
g1(42,54)=(-(exp(x(it_, 6))*T(16)*T(31)*T(19)*T(17)*T(30)*y(23)/params(39)));
g1(42,56)=(-(exp(x(it_, 6))*T(16)*T(31)*T(17)*T(18)*1/params(40)*getPowerDeriv(y(56)/params(40),params(36),1)));
g1(42,13)=(-(exp(x(it_, 6))*T(21)*1/params(37)*getPowerDeriv(y(13)/params(37),params(33),1)));
g1(42,57)=1/params(37);
g1(43,30)=1;
g1(44,3)=(-(params(43)*1/y(3)));
g1(44,16)=1/y(16);
g1(44,88)=(-1);
g1(45,26)=(-((1-params(1))*params(25)));
g1(45,58)=1;
g1(46,16)=(-y(54));
g1(46,8)=(-((1-params(1))*y(13)/y(53)));
g1(46,30)=1-params(1);
g1(46,10)=(-(params(1)*T(32)));
g1(46,39)=params(1);
g1(46,53)=T(34);
g1(46,54)=(-y(16));
g1(46,13)=(-((1-params(1))*y(8)*T(32)));
g1(46,58)=1;
g1(46,59)=1;
g1(47,16)=(-y(54));
g1(47,8)=(-((1-params(1))*y(13)/y(53)));
g1(47,30)=1-params(1);
g1(47,10)=(-(params(1)*T(32)));
g1(47,39)=params(1);
g1(47,53)=T(34);
g1(47,54)=(-y(16));
g1(47,13)=(-((1-params(1))*y(8)*T(32)));
g1(47,58)=1;
g1(47,60)=1;
g1(48,23)=(-(1/y(23)));
g1(48,61)=1;
g1(49,19)=(-(1/y(19)));
g1(49,62)=1;
g1(50,26)=(-(1/y(26)));
g1(50,63)=1;
g1(51,37)=(-(1/y(37)));
g1(51,64)=1;
g1(52,57)=(-(1/y(57)));
g1(52,65)=1;
g1(53,46)=(-(1/y(46)));
g1(53,66)=1;
g1(54,49)=(-(1/y(49)));
g1(54,67)=1;
g1(55,52)=(-(1/y(52)));
g1(55,68)=1;
g1(56,53)=(-T(32));
g1(56,69)=1;
g1(57,54)=(-((-y(55))/(y(54)*y(54))/(y(55)/y(54))));
g1(57,55)=(-(1/y(54)/(y(55)/y(54))));
g1(57,70)=1;
g1(58,42)=(-(1/y(42)));
g1(58,71)=1;
g1(59,39)=(-(1/y(42)/(y(39)/y(42))));
g1(59,42)=(-((-y(39))/(y(42)*y(42))/(y(39)/y(42))));
g1(59,72)=1;
g1(60,73)=1;

end

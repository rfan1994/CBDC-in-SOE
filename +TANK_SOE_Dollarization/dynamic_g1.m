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
    T = TANK_SOE_Dollarization.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(61, 93);
g1(1,1)=(-(params(41)*1/y(1)));
g1(1,15)=1/y(15);
g1(1,88)=1;
g1(2,2)=(-(params(42)*1/y(2)));
g1(2,16)=1/y(16);
g1(2,89)=1;
g1(3,20)=1;
g1(3,27)=(-(1-params(1)));
g1(3,38)=(-params(1));
g1(4,21)=1;
g1(4,28)=(-(1-params(1)));
g1(4,39)=(-params(1));
g1(5,22)=1;
g1(5,29)=(-(1-params(1)));
g1(5,30)=(-((1-params(1))*y(56)));
g1(5,56)=(-((1-params(1))*y(30)));
g1(6,17)=(-1);
g1(6,18)=(-T(3));
g1(6,23)=(-T(2));
g1(6,24)=T(1);
g1(6,27)=(-((1-params(1))*T(2)));
g1(6,38)=(-(T(2)*params(1)*(1+y(44))));
g1(6,44)=(-(params(1)*y(38)*T(2)));
g1(6,53)=y(24)*(-(params(15)/2*2*(y(53)-params(38))));
g1(6,55)=(-(y(18)*params(8)*1/y(56)*T(43)+(y(23)+(1-params(1))*y(27)+y(38)*params(1)*(1+y(44)))*params(7)*getPowerDeriv(y(55),(-params(6)),1)));
g1(6,56)=(-(y(18)*params(8)*T(43)*(-y(55))/(y(56)*y(56))));
g1(7,25)=1;
g1(7,36)=(-(1-params(1)));
g1(7,46)=(-params(1));
g1(8,26)=(-(1+params(25)));
g1(8,27)=getPowerDeriv(y(27),(-params(3)),1);
g1(9,26)=(-(y(50)/params(4)));
g1(9,28)=getPowerDeriv(y(28),params(5),1);
g1(9,50)=(-(y(26)/params(4)));
g1(10,26)=1;
g1(10,78)=(-(params(2)*y(47)/y(85)));
g1(10,47)=(-T(12));
g1(10,85)=(-((-(params(2)*y(78)*y(47)))/(y(85)*y(85))));
g1(11,26)=1+(1-params(1))*params(20)*((1-params(1))*y(30)-params(23));
g1(11,78)=(-(y(48)*params(2)*y(87)/y(56)));
g1(11,30)=y(26)*(1-params(1))*(1-params(1))*params(20);
g1(11,48)=(-T(4));
g1(11,56)=(-(y(48)*T(44)));
g1(11,87)=(-(y(48)*params(2)*y(78)/y(56)));
g1(12,26)=1;
g1(12,78)=(-(params(2)*y(58)/y(85)));
g1(12,85)=(-((-(params(2)*y(78)*y(58)))/(y(85)*y(85))));
g1(12,58)=(-T(12));
g1(13,19)=(-T(4));
g1(13,26)=1+(1-params(1))*params(19)*((1-params(1))*y(32)-params(22));
g1(13,78)=(-(y(19)*params(2)*y(87)/y(56)));
g1(13,32)=y(26)*(1-params(1))*(1-params(1))*params(19);
g1(13,56)=(-(y(19)*T(44)));
g1(13,87)=(-(y(19)*params(2)*y(78)/y(56)));
g1(14,29)=(-1);
g1(14,30)=(-y(56));
g1(14,33)=1;
g1(14,56)=(-y(30));
g1(15,34)=1;
g1(16,35)=1;
g1(17,27)=(-(getPowerDeriv(y(27),1-params(3),1)/(1-params(3))));
g1(17,28)=params(4)*getPowerDeriv(y(28),1+params(5),1)/(1+params(5));
g1(17,36)=1;
g1(17,79)=(-params(2));
g1(18,37)=(-(1+y(44)+y(45)));
g1(18,38)=getPowerDeriv(y(38),(-params(3)),1);
g1(18,44)=(-y(37));
g1(18,45)=(-y(37));
g1(19,37)=(-(y(50)/params(4)));
g1(19,39)=getPowerDeriv(y(39),params(5),1);
g1(19,50)=(-(y(37)/params(4)));
g1(20,37)=T(30);
g1(20,80)=(-(params(2)*(1-params(11))/y(85)));
g1(20,38)=y(37)*(-(T(6)*y(45)*1/y(43)));
g1(20,40)=y(37)*(-(T(29)*(-y(43))/(y(40)*y(40))*T(38)));
g1(20,43)=y(37)*(-(T(29)*T(38)*1/y(40)+T(6)*y(45)*(-y(38))/(y(43)*y(43))));
g1(20,45)=y(37)*(-(y(38)/y(43)*T(6)));
g1(20,85)=(-((-(params(2)*y(80)*(1-params(11))))/(y(85)*y(85))));
g1(21,37)=T(31);
g1(21,80)=(-(y(87)*params(2)*(1-params(11))/y(56)));
g1(21,38)=y(37)*(-(T(7)*y(45)*1/y(43)));
g1(21,41)=y(37)*(params(1)*params(1)*params(21)-T(29)*(-(y(56)*y(43)))/(y(56)*y(41)*y(56)*y(41))*T(40));
g1(21,43)=y(37)*(-(T(29)*T(40)*1/(y(56)*y(41))+T(7)*y(45)*(-y(38))/(y(43)*y(43))));
g1(21,45)=y(37)*(-(y(38)/y(43)*T(7)));
g1(21,56)=y(37)*(-(T(29)*T(40)*(-(y(43)*y(41)))/(y(56)*y(41)*y(56)*y(41))))-(-(y(87)*params(2)*y(80)*(1-params(11))))/(y(56)*y(56));
g1(21,87)=(-(params(2)*y(80)*(1-params(11))/y(56)));
g1(22,42)=1;
g1(23,38)=1+y(44);
g1(23,39)=(-y(50));
g1(23,10)=(-((1-params(11))/y(54)));
g1(23,40)=1;
g1(23,11)=y(56)*(-((1-params(11))/y(13)));
g1(23,41)=y(56)+y(56)*params(21)/2*params(1)*2*(params(1)*y(41)-params(24));
g1(23,44)=y(38);
g1(23,50)=(-y(39));
g1(23,54)=(-((-((1-params(11))*y(10)))/(y(54)*y(54))));
g1(23,13)=y(56)*(-((-((1-params(11))*y(11)))/(y(13)*y(13))));
g1(23,56)=y(41)-(1-params(11))*y(11)/y(13)+params(21)/2*T(8);
g1(23,61)=1;
g1(24,40)=(-(getPowerDeriv(y(40),T(9),1)*T(39)));
g1(24,41)=(-(T(39)*y(56)*T(41)));
g1(24,43)=1;
g1(24,56)=(-(T(39)*y(41)*T(41)));
g1(25,16)=(-(y(38)*params(9)/y(43)));
g1(25,38)=(-(y(16)*params(9)/y(43)+(-(y(43)*params(10)))/(y(38)*y(38))));
g1(25,43)=(-((-(y(38)*y(16)*params(9)))/(y(43)*y(43))+params(10)/y(38)));
g1(25,44)=1;
g1(26,16)=(-(y(38)*params(9)/y(43)));
g1(26,38)=(-(y(16)*params(9)/y(43)-(-(y(43)*params(10)))/(y(38)*y(38))));
g1(26,43)=(-((-(y(38)*y(16)*params(9)))/(y(43)*y(43))-params(10)/y(38)));
g1(26,45)=1;
g1(27,38)=(-(getPowerDeriv(y(38),1-params(3),1)/(1-params(3))));
g1(27,39)=params(4)*getPowerDeriv(y(39),1+params(5),1)/(1+params(5));
g1(27,46)=1;
g1(27,81)=(-params(2));
g1(28,26)=(-((-(y(51)-1))/T(12)));
g1(28,78)=(-((T(12)*params(2)*(y(82)+(1-params(14))*y(83))-T(11)*params(2)/y(85))/(T(12)*T(12))));
g1(28,47)=1;
g1(28,82)=(-(params(2)*y(78)/T(12)));
g1(28,51)=(-((-y(26))/T(12)));
g1(28,83)=(-(params(2)*y(78)*(1-params(14))/T(12)));
g1(28,85)=(-((-(T(11)*(-(params(2)*y(78)))/(y(85)*y(85))))/(T(12)*T(12))));
g1(29,26)=(-((-(y(51)-1))/T(4)));
g1(29,78)=(-((T(4)*params(2)*(y(82)+(1-params(14))*y(83))-T(11)*params(2)*y(87)/y(56))/(T(4)*T(4))));
g1(29,48)=1;
g1(29,82)=(-(params(2)*y(78)/T(4)));
g1(29,51)=(-((-y(26))/T(4)));
g1(29,83)=(-(params(2)*y(78)*(1-params(14))/T(4)));
g1(29,56)=(-((-(T(11)*T(44)))/(T(4)*T(4))));
g1(29,87)=(-((-(T(11)*params(2)*y(78)/y(56)))/(T(4)*T(4))));
g1(30,7)=(-(y(26)*y(51)*(T(33)-(y(7)*y(23)*params(17)*(-y(23))/(y(7)*y(7))-y(23)*params(17)*(y(23)/y(7)-1))/(y(7)*y(7)))));
g1(30,23)=(-(y(26)*y(51)*(T(34)-(params(17)*(y(23)/y(7)-1)+y(23)*params(17)*1/y(7))/y(7))+T(16)*params(17)*y(78)*params(2)*y(83)*(-y(76))/(y(23)*y(23))+T(15)*(-y(76))/(y(23)*y(23))*2*y(76)/y(23)));
g1(30,76)=(-(T(16)*params(17)*y(78)*params(2)*y(83)*1/y(23)+T(15)*2*y(76)/y(23)*1/y(23)));
g1(30,26)=1-y(51)*T(14);
g1(30,78)=(-(T(16)*(y(76)/y(23)-1)*params(17)*params(2)*y(83)));
g1(30,51)=(-(y(26)*T(14)));
g1(30,83)=(-(T(16)*(y(76)/y(23)-1)*params(2)*y(78)*params(17)));
g1(31,6)=(-(1-params(14)));
g1(31,22)=1;
g1(31,7)=(-(y(23)*T(33)));
g1(31,23)=(-(T(13)+y(23)*T(34)));
g1(32,15)=(-(T(17)*T(18)));
g1(32,21)=(-(y(15)*T(17)*getPowerDeriv(y(21),1-params(13),1)));
g1(32,6)=(-(T(18)*y(15)*getPowerDeriv(y(6),params(13),1)));
g1(32,24)=1;
g1(33,6)=(-((-(y(24)*params(13)*y(52)))/(y(6)*y(6))));
g1(33,24)=(-(params(13)*y(52)/y(6)));
g1(33,49)=1;
g1(33,52)=(-(y(24)*params(13)/y(6)));
g1(34,21)=(-((-(y(24)*(1-params(13))*y(52)))/(y(21)*y(21))));
g1(34,24)=(-((1-params(13))*y(52)/y(21)));
g1(34,50)=1;
g1(34,52)=(-(y(24)*(1-params(13))/y(21)));
g1(35,24)=(-(y(55)*T(19)))/(y(24)*y(55)*y(24)*y(55));
g1(35,77)=y(84)*params(2)*y(78)/y(26)*(y(84)-params(38))*y(86)/(y(24)*y(55));
g1(35,26)=y(77)*y(86)*y(84)*(y(84)-params(38))*(-(params(2)*y(78)))/(y(26)*y(26))/(y(24)*y(55));
g1(35,78)=y(77)*y(86)*y(84)*(y(84)-params(38))*params(2)/y(26)/(y(24)*y(55));
g1(35,52)=params(16)/params(15)*1/y(55);
g1(35,53)=(-(y(53)+y(53)-params(38)));
g1(35,84)=y(77)*y(86)*(params(2)*y(78)/y(26)*(y(84)-params(38))+params(2)*y(78)/y(26)*y(84))/(y(24)*y(55));
g1(35,55)=params(16)/params(15)*(-y(52))/(y(55)*y(55))+(-(y(24)*T(19)))/(y(24)*y(55)*y(24)*y(55));
g1(35,86)=y(84)*params(2)*y(78)/y(26)*(y(84)-params(38))*y(77)/(y(24)*y(55));
g1(36,53)=1;
g1(36,54)=(-(y(55)/y(12)));
g1(36,12)=(-(y(54)*(-y(55))/(y(12)*y(12))));
g1(36,55)=(-(y(54)*1/y(12)));
g1(37,17)=(-y(55));
g1(37,5)=(-((1-params(1))*y(56)*(-y(9))));
g1(37,23)=(-1);
g1(37,24)=T(1)*y(55);
g1(37,27)=(-(1-params(1)));
g1(37,30)=(-((1-params(1))*y(56)*params(20)/2*(1-params(1))*2*((1-params(1))*y(30)-params(23))));
g1(37,9)=(-((1-params(1))*y(56)*(-y(5))));
g1(37,32)=(-((1-params(1))*y(56)+(1-params(1))*y(56)*params(19)/2*(1-params(1))*2*((1-params(1))*y(32)-params(22))));
g1(37,38)=(-(params(1)*(1+y(44))));
g1(37,10)=(-(params(1)*params(11)*T(37)));
g1(37,11)=(-(params(1)*params(11)*y(56)/y(13)-params(1)*y(56)));
g1(37,41)=(-(params(1)*y(56)+params(1)*y(56)*params(21)/2*params(1)*2*(params(1)*y(41)-params(24))));
g1(37,44)=(-(params(1)*y(38)));
g1(37,53)=y(24)*y(55)*(-(params(15)/2*2*(y(53)-params(38))));
g1(37,54)=(-(params(1)*params(11)*(-y(10))/(y(54)*y(54))));
g1(37,55)=y(24)*T(1)-y(17);
g1(37,13)=(-(params(1)*params(11)*(-(y(56)*y(11)))/(y(13)*y(13))));
g1(37,56)=(-(T(8)*params(1)*params(21)/2+T(21)*(1-params(1))*params(20)/2+T(20)*(1-params(1))*params(19)/2+params(1)*params(11)*y(11)/y(13)+params(1)*(y(41)-y(11))+(1-params(1))*(y(32)-y(5)*y(9))));
g1(38,55)=(-(params(7)*getPowerDeriv(y(55),1-params(6),1)));
g1(38,56)=(-((1-params(7))*getPowerDeriv(y(56),1-params(6),1)));
g1(39,54)=(-(y(56)/y(13)));
g1(39,13)=(-(y(54)*(-y(56))/(y(13)*y(13))));
g1(39,56)=(-(y(54)*1/y(13)));
g1(39,57)=1;
g1(40,4)=(-(params(44)*1/y(4)));
g1(40,18)=1/y(18);
g1(40,91)=(-1);
g1(41,5)=(-(params(45)*1/y(5)));
g1(41,19)=1/y(19);
g1(41,92)=(-1);
g1(42,93)=(-T(28));
g1(42,24)=(-(exp(x(it_, 6))*T(22)*T(25)*T(23)*y(55)/params(39)*T(35)*T(36)));
g1(42,54)=(-(exp(x(it_, 6))*T(22)*T(36)*T(25)*T(24)*1/params(38)*getPowerDeriv(y(54)/params(38),params(34),1)));
g1(42,55)=(-(exp(x(it_, 6))*T(22)*T(36)*T(25)*T(23)*T(35)*y(24)/params(39)));
g1(42,57)=(-(exp(x(it_, 6))*T(22)*T(36)*T(23)*T(24)*1/params(40)*getPowerDeriv(y(57)/params(40),params(36),1)));
g1(42,14)=(-(exp(x(it_, 6))*T(27)*1/params(37)*getPowerDeriv(y(14)/params(37),params(33),1)));
g1(42,58)=1/params(37);
g1(43,31)=1;
g1(44,3)=(-(params(43)*1/y(3)));
g1(44,17)=1/y(17);
g1(44,90)=(-1);
g1(45,27)=(-((1-params(1))*params(25)));
g1(45,59)=1;
g1(46,17)=(-y(55));
g1(46,8)=(-((1-params(1))*y(14)/y(54)));
g1(46,31)=1-params(1);
g1(46,10)=(-(params(1)*T(37)));
g1(46,40)=params(1);
g1(46,54)=T(42);
g1(46,55)=(-y(17));
g1(46,14)=(-((1-params(1))*y(8)*T(37)));
g1(46,59)=1;
g1(46,60)=1;
g1(47,17)=(-y(55));
g1(47,8)=(-((1-params(1))*y(14)/y(54)));
g1(47,31)=1-params(1);
g1(47,10)=(-(params(1)*T(37)));
g1(47,40)=params(1);
g1(47,54)=T(42);
g1(47,55)=(-y(17));
g1(47,14)=(-((1-params(1))*y(8)*T(37)));
g1(47,59)=1;
g1(47,61)=1;
g1(48,24)=(-(y(55)/(y(24)*y(55))));
g1(48,55)=(-(y(24)/(y(24)*y(55))));
g1(48,62)=1;
g1(49,20)=(-(1/y(20)));
g1(49,63)=1;
g1(50,27)=(-(1/y(27)));
g1(50,64)=1;
g1(51,38)=(-(1/y(38)));
g1(51,65)=1;
g1(52,58)=(-(1/y(58)));
g1(52,66)=1;
g1(53,47)=(-(1/y(47)));
g1(53,67)=1;
g1(54,50)=(-(1/y(50)));
g1(54,68)=1;
g1(55,53)=(-(1/y(53)));
g1(55,69)=1;
g1(56,54)=(-T(37));
g1(56,70)=1;
g1(57,55)=(-((-y(56))/(y(55)*y(55))/(y(56)/y(55))));
g1(57,56)=(-(1/y(55)/(y(56)/y(55))));
g1(57,71)=1;
g1(58,29)=(-(1/y(29)));
g1(58,72)=1;
g1(59,40)=(-(1/y(40)));
g1(59,73)=1;
g1(60,74)=1;
g1(61,41)=(-(1/y(41)));
g1(61,75)=1;

end

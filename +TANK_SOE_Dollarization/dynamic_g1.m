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
g1 = zeros(61, 92);
g1(1,1)=(-(params(41)*1/y(1)));
g1(1,14)=1/y(14);
g1(1,87)=1;
g1(2,2)=(-(params(42)*1/y(2)));
g1(2,15)=1/y(15);
g1(2,88)=1;
g1(3,19)=1;
g1(3,26)=(-(1-params(1)));
g1(3,37)=(-params(1));
g1(4,20)=1;
g1(4,27)=(-(1-params(1)));
g1(4,38)=(-params(1));
g1(5,21)=1;
g1(5,28)=(-(1-params(1)));
g1(6,16)=(-1);
g1(6,17)=(-T(4));
g1(6,22)=(-T(1));
g1(6,23)=1-T(2);
g1(6,26)=(-((1-params(1))*T(1)));
g1(6,37)=(-(T(1)*params(1)*(1+y(43))));
g1(6,9)=(-(params(1)*params(11)/y(53)));
g1(6,43)=(-(params(1)*y(37)*T(1)));
g1(6,52)=(-(y(23)*params(15)/2*2*(y(52)-params(38))));
g1(6,53)=(-((-(params(1)*params(11)*y(9)))/(y(53)*y(53))));
g1(6,54)=(-(y(17)*params(8)*1/y(55)*T(34)+(y(22)+(1-params(1))*y(26)+y(37)*params(1)*(1+y(43)))*params(7)*getPowerDeriv(y(54),(-params(6)),1)));
g1(6,55)=(-(y(17)*params(8)*T(34)*(-y(54))/(y(55)*y(55))));
g1(7,24)=1;
g1(7,35)=(-(1-params(1)));
g1(7,45)=(-params(1));
g1(8,25)=(-(1+params(25)));
g1(8,26)=getPowerDeriv(y(26),(-params(3)),1);
g1(9,25)=(-(y(49)/params(4)));
g1(9,27)=getPowerDeriv(y(27),params(5),1);
g1(9,49)=(-(y(25)/params(4)));
g1(10,25)=1;
g1(10,77)=(-(params(2)*y(46)/y(84)));
g1(10,46)=(-T(13));
g1(10,84)=(-((-(params(2)*y(77)*y(46)))/(y(84)*y(84))));
g1(11,29)=1;
g1(12,25)=1;
g1(12,77)=(-(params(2)*y(57)/y(84)));
g1(12,84)=(-((-(params(2)*y(77)*y(57)))/(y(84)*y(84))));
g1(12,57)=(-T(13));
g1(13,18)=(-T(5));
g1(13,25)=1+(1-params(1))*params(19)*((1-params(1))*y(31)-params(22));
g1(13,77)=(-(y(18)*params(2)*y(86)/y(55)));
g1(13,31)=y(25)*(1-params(1))*(1-params(1))*params(19);
g1(13,55)=(-(y(18)*(-(params(2)*y(77)*y(86)))/(y(55)*y(55))));
g1(13,86)=(-(y(18)*params(2)*y(77)/y(55)));
g1(14,28)=(-1);
g1(14,32)=1;
g1(15,33)=1;
g1(16,34)=1;
g1(17,26)=(-(getPowerDeriv(y(26),1-params(3),1)/(1-params(3))));
g1(17,27)=params(4)*getPowerDeriv(y(27),1+params(5),1)/(1+params(5));
g1(17,35)=1;
g1(17,78)=(-params(2));
g1(18,36)=(-(1+y(43)+y(44)));
g1(18,37)=getPowerDeriv(y(37),(-params(3)),1);
g1(18,43)=(-y(36));
g1(18,44)=(-y(36));
g1(19,36)=(-(y(49)/params(4)));
g1(19,38)=getPowerDeriv(y(38),params(5),1);
g1(19,49)=(-(y(36)/params(4)));
g1(20,36)=T(23);
g1(20,79)=(-(params(2)*(1-params(11))/y(84)));
g1(20,37)=y(36)*(-(T(7)*y(44)*1/y(42)));
g1(20,39)=y(36)*(-(T(22)*(-y(42))/(y(39)*y(39))*T(29)));
g1(20,42)=y(36)*(-(T(22)*T(29)*1/y(39)+T(7)*y(44)*(-y(37))/(y(42)*y(42))));
g1(20,44)=y(36)*(-(y(37)/y(42)*T(7)));
g1(20,84)=(-((-(params(2)*y(79)*(1-params(11))))/(y(84)*y(84))));
g1(21,36)=T(24);
g1(21,79)=(-(params(2)*y(86)/y(55)));
g1(21,37)=y(36)*(-(T(8)*y(44)*1/y(42)));
g1(21,40)=y(36)*(params(1)*params(1)*params(21)-T(22)*(-(y(55)*y(42)))/(y(55)*y(40)*y(55)*y(40))*T(31));
g1(21,42)=y(36)*(-(T(22)*T(31)*1/(y(55)*y(40))+T(8)*y(44)*(-y(37))/(y(42)*y(42))));
g1(21,44)=y(36)*(-(y(37)/y(42)*T(8)));
g1(21,55)=y(36)*(-(T(22)*T(31)*(-(y(42)*y(40)))/(y(55)*y(40)*y(55)*y(40))))-(-(y(86)*params(2)*y(79)))/(y(55)*y(55));
g1(21,86)=(-(params(2)*y(79)/y(55)));
g1(22,41)=1;
g1(23,37)=1+y(43);
g1(23,38)=(-y(49));
g1(23,9)=(-((1-params(11))/y(53)));
g1(23,39)=1;
g1(23,10)=y(55)*(-(1/y(12)));
g1(23,40)=y(55)+y(55)*params(21)/2*params(1)*2*(params(1)*y(40)-params(24));
g1(23,43)=y(37);
g1(23,49)=(-y(38));
g1(23,53)=(-((-(y(9)*(1-params(11))))/(y(53)*y(53))));
g1(23,12)=y(55)*(-((-y(10))/(y(12)*y(12))));
g1(23,55)=y(40)-y(10)/y(12)+params(21)/2*T(9);
g1(23,60)=1;
g1(24,39)=(-(getPowerDeriv(y(39),T(10),1)*T(30)));
g1(24,40)=(-(T(30)*y(55)*T(32)));
g1(24,42)=1;
g1(24,55)=(-(T(30)*y(40)*T(32)));
g1(25,15)=(-(y(37)*params(9)/y(42)));
g1(25,37)=(-(y(15)*params(9)/y(42)+(-(y(42)*params(10)))/(y(37)*y(37))));
g1(25,42)=(-((-(y(37)*y(15)*params(9)))/(y(42)*y(42))+params(10)/y(37)));
g1(25,43)=1;
g1(26,15)=(-(y(37)*params(9)/y(42)));
g1(26,37)=(-(y(15)*params(9)/y(42)-(-(y(42)*params(10)))/(y(37)*y(37))));
g1(26,42)=(-((-(y(37)*y(15)*params(9)))/(y(42)*y(42))-params(10)/y(37)));
g1(26,44)=1;
g1(27,37)=(-(getPowerDeriv(y(37),1-params(3),1)/(1-params(3))));
g1(27,38)=params(4)*getPowerDeriv(y(38),1+params(5),1)/(1+params(5));
g1(27,45)=1;
g1(27,80)=(-params(2));
g1(28,25)=(-((-(y(50)-1))/T(13)));
g1(28,77)=(-((T(13)*params(2)*(y(81)+(1-params(14))*y(82))-T(12)*params(2)/y(84))/(T(13)*T(13))));
g1(28,46)=1;
g1(28,81)=(-(params(2)*y(77)/T(13)));
g1(28,50)=(-((-y(25))/T(13)));
g1(28,82)=(-(params(2)*y(77)*(1-params(14))/T(13)));
g1(28,84)=(-((-(T(12)*(-(params(2)*y(77)))/(y(84)*y(84))))/(T(13)*T(13))));
g1(29,25)=(-((-(y(50)-1))/T(5)));
g1(29,77)=(-((T(5)*params(2)*(y(81)+(1-params(14))*y(82))-T(12)*params(2)*y(86)/y(55))/(T(5)*T(5))));
g1(29,47)=1;
g1(29,81)=(-(params(2)*y(77)/T(5)));
g1(29,50)=(-((-y(25))/T(5)));
g1(29,82)=(-(params(2)*y(77)*(1-params(14))/T(5)));
g1(29,55)=(-((-(T(12)*(-(params(2)*y(77)*y(86)))/(y(55)*y(55))))/(T(5)*T(5))));
g1(29,86)=(-((-(T(12)*params(2)*y(77)/y(55)))/(T(5)*T(5))));
g1(30,6)=(-(y(25)*y(50)*(T(27)-(y(6)*y(22)*params(17)*(-y(22))/(y(6)*y(6))-y(22)*params(17)*(y(22)/y(6)-1))/(y(6)*y(6)))));
g1(30,22)=(-(y(25)*y(50)*(T(28)-(params(17)*(y(22)/y(6)-1)+y(22)*params(17)*1/y(6))/y(6))+T(17)*params(17)*y(77)*params(2)*y(82)*(-y(75))/(y(22)*y(22))+T(16)*(-y(75))/(y(22)*y(22))*2*y(75)/y(22)));
g1(30,75)=(-(T(17)*params(17)*y(77)*params(2)*y(82)*1/y(22)+T(16)*2*y(75)/y(22)*1/y(22)));
g1(30,25)=1-y(50)*T(15);
g1(30,77)=(-(T(17)*(y(75)/y(22)-1)*params(17)*params(2)*y(82)));
g1(30,50)=(-(y(25)*T(15)));
g1(30,82)=(-(T(17)*(y(75)/y(22)-1)*params(2)*y(77)*params(17)));
g1(31,5)=(-(1-params(14)));
g1(31,21)=1;
g1(31,6)=(-(y(22)*T(27)));
g1(31,22)=(-(T(14)+y(22)*T(28)));
g1(32,14)=(-(T(18)*T(19)));
g1(32,20)=(-(y(14)*T(18)*getPowerDeriv(y(20),1-params(13),1)));
g1(32,5)=(-(T(19)*y(14)*getPowerDeriv(y(5),params(13),1)));
g1(32,23)=1;
g1(33,5)=(-((-(y(23)*params(13)*y(51)))/(y(5)*y(5))));
g1(33,23)=(-(params(13)*y(51)/y(5)));
g1(33,48)=1;
g1(33,51)=(-(y(23)*params(13)/y(5)));
g1(34,20)=(-((-(y(23)*(1-params(13))*y(51)))/(y(20)*y(20))));
g1(34,23)=(-((1-params(13))*y(51)/y(20)));
g1(34,49)=1;
g1(34,51)=(-(y(23)*(1-params(13))/y(20)));
g1(35,23)=(-(y(54)*T(20)))/(y(23)*y(54)*y(23)*y(54));
g1(35,76)=y(83)*params(2)*y(77)/y(25)*(y(83)-params(38))*y(85)/(y(23)*y(54));
g1(35,25)=y(76)*y(85)*y(83)*(y(83)-params(38))*(-(params(2)*y(77)))/(y(25)*y(25))/(y(23)*y(54));
g1(35,77)=y(76)*y(85)*y(83)*(y(83)-params(38))*params(2)/y(25)/(y(23)*y(54));
g1(35,51)=params(16)/params(15)*1/y(54);
g1(35,52)=(-(y(52)+y(52)-params(38)));
g1(35,83)=y(76)*y(85)*(params(2)*y(77)/y(25)*(y(83)-params(38))+params(2)*y(77)/y(25)*y(83))/(y(23)*y(54));
g1(35,54)=params(16)/params(15)*(-y(51))/(y(54)*y(54))+(-(y(23)*T(20)))/(y(23)*y(54)*y(23)*y(54));
g1(35,85)=y(83)*params(2)*y(77)/y(25)*(y(83)-params(38))*y(76)/(y(23)*y(54));
g1(36,52)=1;
g1(36,53)=(-(y(54)/y(11)));
g1(36,11)=(-(y(53)*(-y(54))/(y(11)*y(11))));
g1(36,54)=(-(y(53)*1/y(11)));
g1(37,16)=(-y(54));
g1(37,4)=(-((1-params(1))*y(55)*(-y(8))));
g1(37,19)=(-1);
g1(37,22)=(-1);
g1(37,23)=y(54);
g1(37,8)=(-((1-params(1))*y(55)*(-y(4))));
g1(37,31)=(-((1-params(1))*y(55)+(1-params(1))*y(55)*params(19)/2*(1-params(1))*2*((1-params(1))*y(31)-params(22))));
g1(37,10)=params(1)*y(55);
g1(37,40)=(-(params(1)*y(55)+params(1)*y(55)*params(21)/2*params(1)*2*(params(1)*y(40)-params(24))));
g1(37,52)=(-(params(15)/2*2*(y(52)-params(38))));
g1(37,54)=y(23)-y(16);
g1(37,55)=(-(T(9)*params(1)*params(21)/2+T(21)*(1-params(1))*params(19)/2+(1-params(1))*(y(31)-y(4)*y(8))+params(1)*(y(40)-y(10))+T(25)*(1-params(1))*params(20)/2));
g1(38,54)=(-(params(7)*getPowerDeriv(y(54),1-params(6),1)));
g1(38,55)=(-((1-params(7))*getPowerDeriv(y(55),1-params(6),1)));
g1(39,53)=(-(y(55)/y(12)));
g1(39,12)=(-(y(53)*(-y(55))/(y(12)*y(12))));
g1(39,55)=(-(y(53)*1/y(12)));
g1(39,56)=1;
g1(40,3)=(-(params(44)*1/y(3)));
g1(40,17)=1/y(17);
g1(40,90)=(-1);
g1(41,4)=(-(params(45)*1/y(4)));
g1(41,18)=1/y(18);
g1(41,91)=(-1);
g1(42,92)=(-(params(37)*exp(x(it_, 6))));
g1(42,57)=1;
g1(43,30)=1;
g1(44,16)=1;
g1(44,89)=(-(params(48)*exp(x(it_, 3))));
g1(45,26)=(-((1-params(1))*params(25)));
g1(45,58)=1;
g1(46,16)=(-1);
g1(46,7)=(-((1-params(1))*y(13)/y(53)));
g1(46,30)=1-params(1);
g1(46,9)=(-(params(1)*1/y(53)));
g1(46,39)=params(1);
g1(46,53)=T(33);
g1(46,13)=(-((1-params(1))*y(7)*1/y(53)));
g1(46,58)=1;
g1(46,59)=1;
g1(47,16)=(-1);
g1(47,7)=(-((1-params(1))*y(13)/y(53)));
g1(47,30)=1-params(1);
g1(47,9)=(-(params(1)*1/y(53)));
g1(47,39)=params(1);
g1(47,53)=T(33);
g1(47,13)=(-((1-params(1))*y(7)*1/y(53)));
g1(47,58)=1;
g1(47,60)=1;
g1(48,23)=(-(y(54)/(y(23)*y(54))));
g1(48,54)=(-(y(23)/(y(23)*y(54))));
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
g1(56,53)=(-(1/y(53)));
g1(56,69)=1;
g1(57,54)=(-(1/y(55)/T(3)));
g1(57,55)=(-((-y(54))/(y(55)*y(55))/T(3)));
g1(57,70)=1;
g1(58,28)=(-(1/y(28)));
g1(58,71)=1;
g1(59,39)=(-(1/y(39)));
g1(59,72)=1;
g1(60,73)=1;
g1(61,40)=(-(1/y(40)));
g1(61,74)=1;

end

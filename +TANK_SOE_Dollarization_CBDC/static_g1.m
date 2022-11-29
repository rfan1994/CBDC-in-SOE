function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = TANK_SOE_Dollarization_CBDC.static_g1_tt(T, y, x, params);
end
g1 = zeros(61, 61);
g1(1,1)=1/y(1)-params(41)*1/y(1);
g1(2,2)=1/y(2)-params(42)*1/y(2);
g1(3,6)=1;
g1(3,13)=(-(1-params(1)));
g1(3,24)=(-params(1));
g1(4,7)=1;
g1(4,14)=(-(1-params(1)));
g1(4,25)=(-params(1));
g1(5,8)=1;
g1(5,15)=(-(1-params(1)));
g1(5,16)=(-((1-params(1))*y(42)));
g1(5,42)=(-((1-params(1))*y(16)));
g1(6,3)=(-1);
g1(6,4)=(-T(2));
g1(6,9)=(-T(4));
g1(6,10)=1-T(3);
g1(6,13)=(-((1-params(1))*T(4)));
g1(6,24)=(-(T(4)*params(1)*(1+y(30))));
g1(6,26)=(-(params(1)*params(11)*T(32)));
g1(6,27)=(-(params(1)*params(11)));
g1(6,30)=(-(params(1)*y(24)*T(4)));
g1(6,39)=(-(y(10)*params(15)/2*2*(y(39)-params(38))));
g1(6,40)=(-(params(1)*params(11)*(-y(26))/(y(40)*y(40))));
g1(6,41)=(-(y(4)*params(8)*1/y(42)*T(42)+(y(9)+(1-params(1))*y(13)+y(24)*params(1)*(1+y(30)))*params(7)*getPowerDeriv(y(41),(-params(6)),1)));
g1(6,42)=(-(y(4)*params(8)*T(42)*(-y(41))/(y(42)*y(42))));
g1(7,11)=1;
g1(7,22)=(-(1-params(1)));
g1(7,32)=(-params(1));
g1(8,12)=(-(1+params(25)));
g1(8,13)=getPowerDeriv(y(13),(-params(3)),1);
g1(9,12)=(-(y(36)/params(4)));
g1(9,14)=getPowerDeriv(y(14),params(5),1);
g1(9,36)=(-(y(12)/params(4)));
g1(10,12)=1-params(2)*y(33)/y(40);
g1(10,33)=(-T(18));
g1(10,40)=(-((-(y(12)*params(2)*y(33)))/(y(40)*y(40))));
g1(11,12)=1+(1-params(1))*params(20)*((1-params(1))*y(16)-params(23))-params(2)*y(34);
g1(11,16)=y(12)*(1-params(1))*(1-params(1))*params(20);
g1(11,34)=(-(y(12)*params(2)));
g1(12,12)=1-params(2)*y(44)/y(40);
g1(12,40)=(-((-(y(12)*params(2)*y(44)))/(y(40)*y(40))));
g1(12,44)=(-T(18));
g1(13,5)=(-(y(12)*params(2)));
g1(13,12)=1+(1-params(1))*params(19)*((1-params(1))*y(18)-params(22))-params(2)*y(5);
g1(13,18)=y(12)*(1-params(1))*(1-params(1))*params(19);
g1(14,15)=(-1);
g1(14,16)=(-y(42));
g1(14,19)=1;
g1(14,42)=(-y(16));
g1(15,20)=1;
g1(16,21)=1;
g1(17,13)=(-(getPowerDeriv(y(13),1-params(3),1)/(1-params(3))));
g1(17,14)=params(4)*getPowerDeriv(y(14),1+params(5),1)/(1+params(5));
g1(17,22)=1-params(2);
g1(18,23)=(-(1+y(30)+y(31)+T(5)));
g1(18,24)=getPowerDeriv(y(24),(-params(3)),1);
g1(18,28)=(-(y(23)*T(37)));
g1(18,29)=(-(y(23)*T(39)));
g1(18,30)=(-y(23));
g1(18,31)=(-y(23));
g1(19,23)=(-(y(36)/params(4)));
g1(19,25)=getPowerDeriv(y(25),params(5),1);
g1(19,36)=(-(y(23)/params(4)));
g1(20,23)=T(10)-params(2)*(1-params(11))/y(40);
g1(20,24)=y(23)*(-(T(9)*(y(31)+T(5))*1/y(29)));
g1(20,26)=y(23)*(-(T(7)*(-y(29))/(y(26)*y(26))*T(33)));
g1(20,28)=y(23)*(-(T(9)*T(6)*T(37)));
g1(20,29)=y(23)*(-(T(9)*T(40)+T(7)*T(33)*1/y(26)));
g1(20,31)=y(23)*(-(T(6)*T(9)));
g1(20,40)=(-((-(params(2)*y(23)*(1-params(11))))/(y(40)*y(40))));
g1(21,23)=T(12)-params(2)*(1-params(11));
g1(21,24)=y(23)*(-(T(11)*(y(31)+T(5))*1/y(29)));
g1(21,27)=y(23)*(params(1)*params(1)*params(21)-T(7)*(-(y(42)*y(29)))/(y(42)*y(27)*y(42)*y(27))*T(35));
g1(21,28)=y(23)*(-(T(11)*T(6)*T(37)));
g1(21,29)=y(23)*(-(T(11)*T(40)+T(7)*T(35)*1/(y(42)*y(27))));
g1(21,31)=y(23)*(-(T(6)*T(11)));
g1(21,42)=y(23)*(-(T(7)*T(35)*(-(y(27)*y(29)))/(y(42)*y(27)*y(42)*y(27))));
g1(22,23)=T(14)-params(2)/y(40);
g1(22,24)=y(23)*(-(T(13)*(y(31)+T(5))*1/y(29)));
g1(22,28)=y(23)*(T(37)-(T(13)*T(6)*T(37)+T(7)*(-y(29))/(y(28)*y(28))*T(38)));
g1(22,29)=y(23)*(T(39)-(T(13)*T(40)+T(7)*T(38)*1/y(28)));
g1(22,31)=y(23)*(-(T(6)*T(13)));
g1(22,40)=(-((-(params(2)*y(23)))/(y(40)*y(40))));
g1(23,24)=1+y(30)+T(5);
g1(23,25)=(-y(36));
g1(23,26)=1-(1-params(11))/y(40);
g1(23,27)=y(42)*(1-(1-params(11))/y(42))+y(42)*params(21)/2*params(1)*2*(params(1)*y(27)-params(24));
g1(23,28)=y(24)*T(37)+1-T(32);
g1(23,29)=y(24)*T(39);
g1(23,30)=y(24);
g1(23,36)=(-y(25));
g1(23,40)=(-((-(y(26)*(1-params(11))))/(y(40)*y(40))))-(-y(28))/(y(40)*y(40));
g1(23,42)=y(27)-y(27)*(1-params(11))/y(42)+y(42)*(-((-(y(27)*(1-params(11))))/(y(42)*y(42))))+params(21)/2*T(15);
g1(23,47)=1;
g1(24,26)=(-(getPowerDeriv(y(26),T(16),1)*T(34)));
g1(24,27)=(-(T(34)*y(42)*T(36)));
g1(24,28)=(-(T(34)*getPowerDeriv(y(28),T(16),1)));
g1(24,29)=1;
g1(24,42)=(-(T(34)*y(27)*T(36)));
g1(25,2)=(-(y(24)*params(9)/y(29)));
g1(25,24)=(-(y(2)*params(9)/y(29)+(-(y(29)*params(10)))/(y(24)*y(24))));
g1(25,29)=(-((-(y(24)*y(2)*params(9)))/(y(29)*y(29))+params(10)/y(24)));
g1(25,30)=1;
g1(26,2)=(-(y(24)*params(9)/y(29)));
g1(26,24)=(-(y(2)*params(9)/y(29)-(-(y(29)*params(10)))/(y(24)*y(24))));
g1(26,29)=(-((-(y(24)*y(2)*params(9)))/(y(29)*y(29))-params(10)/y(24)));
g1(26,31)=1;
g1(27,24)=(-(getPowerDeriv(y(24),1-params(3),1)/(1-params(3))));
g1(27,25)=params(4)*getPowerDeriv(y(25),1+params(5),1)/(1+params(5));
g1(27,32)=1-params(2);
g1(28,12)=(-((T(18)*(params(2)*(y(35)+(1-params(14))*y(37))-(y(37)-1))-(y(12)*params(2)*(y(35)+(1-params(14))*y(37))-y(12)*(y(37)-1))*params(2)/y(40))/(T(18)*T(18))));
g1(28,33)=1;
g1(28,35)=(-(y(12)*params(2)/T(18)));
g1(28,37)=(-((y(12)*params(2)*(1-params(14))-y(12))/T(18)));
g1(28,40)=(-((-((y(12)*params(2)*(y(35)+(1-params(14))*y(37))-y(12)*(y(37)-1))*(-(y(12)*params(2)))/(y(40)*y(40))))/(T(18)*T(18))));
g1(29,12)=(-((y(12)*params(2)*(params(2)*(y(35)+(1-params(14))*y(37))-(y(37)-1))-params(2)*(y(12)*params(2)*(y(35)+(1-params(14))*y(37))-y(12)*(y(37)-1)))/(y(12)*params(2)*y(12)*params(2))));
g1(29,34)=1;
g1(29,35)=(-1);
g1(29,37)=(-((y(12)*params(2)*(1-params(14))-y(12))/(y(12)*params(2))));
g1(30,12)=1-y(37);
g1(30,37)=(-y(12));
g1(31,8)=1-(1-params(14));
g1(31,9)=(-1);
g1(32,1)=(-(T(19)*T(20)));
g1(32,7)=(-(y(1)*T(19)*getPowerDeriv(y(7),1-params(13),1)));
g1(32,8)=(-(T(20)*y(1)*getPowerDeriv(y(8),params(13),1)));
g1(32,10)=1;
g1(33,8)=(-((-(y(10)*params(13)*y(38)))/(y(8)*y(8))));
g1(33,10)=(-(params(13)*y(38)/y(8)));
g1(33,35)=1;
g1(33,38)=(-(y(10)*params(13)/y(8)));
g1(34,7)=(-((-(y(10)*(1-params(13))*y(38)))/(y(7)*y(7))));
g1(34,10)=(-((1-params(13))*y(38)/y(7)));
g1(34,36)=1;
g1(34,38)=(-(y(10)*(1-params(13))/y(7)));
g1(35,10)=(y(41)*y(39)*(y(39)-params(38))*params(2)*y(10)*y(41)-y(41)*y(10)*y(41)*y(39)*(y(39)-params(38))*params(2))/(y(10)*y(41)*y(10)*y(41));
g1(35,38)=params(16)/params(15)*1/y(41);
g1(35,39)=(-(y(39)+y(39)-params(38)-y(10)*y(41)*((y(39)-params(38))*params(2)+y(39)*params(2))/(y(10)*y(41))));
g1(35,41)=params(16)/params(15)*(-y(38))/(y(41)*y(41))+(y(10)*y(41)*y(10)*y(39)*(y(39)-params(38))*params(2)-y(10)*y(10)*y(41)*y(39)*(y(39)-params(38))*params(2))/(y(10)*y(41)*y(10)*y(41));
g1(36,39)=1;
g1(36,40)=(-1);
g1(37,3)=(-y(41));
g1(37,5)=(-((1-params(1))*y(42)*(-y(18))));
g1(37,6)=(-1);
g1(37,9)=(-1);
g1(37,10)=y(41);
g1(37,16)=(-((1-params(1))*y(42)*params(20)/2*(1-params(1))*2*((1-params(1))*y(16)-params(23))));
g1(37,18)=(-((1-params(1))*y(42)*(1-y(5))+(1-params(1))*y(42)*params(19)/2*(1-params(1))*2*((1-params(1))*y(18)-params(22))));
g1(37,27)=(-(params(1)*y(42)*params(21)/2*params(1)*2*(params(1)*y(27)-params(24))));
g1(37,39)=(-(params(15)/2*2*(y(39)-params(38))));
g1(37,41)=y(10)-y(3);
g1(37,42)=(-((1-params(1))*(y(18)-y(18)*y(5))+T(21)*(1-params(1))*params(20)/2+T(22)*(1-params(1))*params(19)/2+T(15)*params(1)*params(21)/2));
g1(38,41)=(-(params(7)*getPowerDeriv(y(41),1-params(6),1)));
g1(38,42)=(-((1-params(7))*getPowerDeriv(y(42),1-params(6),1)));
g1(39,40)=(-1);
g1(39,43)=1;
g1(40,4)=1/y(4)-params(44)*1/y(4);
g1(41,5)=1/y(5)-params(45)*1/y(5);
g1(42,10)=(-(exp(x(6))*T(23)*T(26)*T(24)*y(41)/params(39)*T(30)*T(31)));
g1(42,40)=(-(exp(x(6))*T(23)*T(31)*T(26)*T(25)*1/params(38)*getPowerDeriv(y(40)/params(38),params(34),1)));
g1(42,41)=(-(exp(x(6))*T(23)*T(31)*T(26)*T(24)*T(30)*y(10)/params(39)));
g1(42,43)=(-(exp(x(6))*T(23)*T(31)*T(24)*T(25)*1/params(40)*getPowerDeriv(y(43)/params(40),params(36),1)));
g1(42,44)=1/params(37)-exp(x(6))*T(28)*1/params(37)*getPowerDeriv(y(44)/params(37),params(33),1);
g1(43,17)=1;
g1(44,3)=1/y(3)-params(43)*1/y(3);
g1(45,13)=(-((1-params(1))*params(25)));
g1(45,24)=(-(y(28)*params(1)*params(25)/y(29)));
g1(45,28)=(-(y(24)*params(1)*params(25)/y(29)));
g1(45,29)=(-(y(24)*(-(y(28)*params(1)*params(25)))/(y(29)*y(29))));
g1(45,45)=1;
g1(46,3)=(-1);
g1(46,17)=(-((1-params(1))*(y(44)/y(40)-1)));
g1(46,26)=(-(params(1)*(T(32)-1)));
g1(46,28)=(-(params(1)*(T(32)-1)));
g1(46,40)=T(41);
g1(46,44)=(-((1-params(1))*y(17)*T(32)));
g1(46,45)=1;
g1(46,46)=1;
g1(47,3)=(-1);
g1(47,17)=(-((1-params(1))*(y(44)/y(40)-1)));
g1(47,26)=(-(params(1)*(T(32)-1)));
g1(47,28)=(-(params(1)*(T(32)-1)));
g1(47,40)=T(41);
g1(47,44)=(-((1-params(1))*y(17)*T(32)));
g1(47,45)=1;
g1(47,47)=1;
g1(48,10)=(-(y(41)/(y(10)*y(41))));
g1(48,41)=(-(y(10)/(y(10)*y(41))));
g1(48,48)=1;
g1(49,6)=(-(1/y(6)));
g1(49,49)=1;
g1(50,13)=(-(1/y(13)));
g1(50,50)=1;
g1(51,24)=(-(1/y(24)));
g1(51,51)=1;
g1(52,44)=(-(1/y(44)));
g1(52,52)=1;
g1(53,33)=(-(1/y(33)));
g1(53,53)=1;
g1(54,36)=(-(1/y(36)));
g1(54,54)=1;
g1(55,39)=(-(1/y(39)));
g1(55,55)=1;
g1(56,40)=(-T(32));
g1(56,56)=1;
g1(57,41)=(-(1/y(42)/T(1)));
g1(57,42)=(-((-y(41))/(y(42)*y(42))/T(1)));
g1(57,57)=1;
g1(58,15)=(-(1/y(15)));
g1(58,58)=1;
g1(59,26)=(-(1/y(26)));
g1(59,59)=1;
g1(60,28)=(-(1/y(28)));
g1(60,60)=1;
g1(61,27)=(-(1/y(27)));
g1(61,61)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end

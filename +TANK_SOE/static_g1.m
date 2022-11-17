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
    T = TANK_SOE.static_g1_tt(T, y, x, params);
end
g1 = zeros(57, 57);
g1(1,1)=1/y(1)-params(41)*1/y(1);
g1(2,2)=1/y(2)-params(42)*1/y(2);
g1(3,6)=1;
g1(3,13)=(-(1-params(1)));
g1(3,23)=(-params(1));
g1(4,7)=1;
g1(4,14)=(-(1-params(1)));
g1(4,24)=(-params(1));
g1(5,8)=1;
g1(5,15)=(-(1-params(1)));
g1(6,3)=(-1);
g1(6,4)=(-T(2));
g1(6,9)=(-T(4));
g1(6,10)=1-T(3);
g1(6,13)=(-((1-params(1))*T(4)));
g1(6,23)=(-(T(4)*params(1)*(1+y(28))));
g1(6,25)=(-(params(1)*params(11)/y(37)));
g1(6,28)=(-(params(1)*y(23)*T(4)));
g1(6,36)=(-(y(10)*params(15)/2*2*(y(36)-params(38))));
g1(6,37)=(-((-(params(1)*params(11)*y(25)))/(y(37)*y(37))));
g1(6,38)=(-(y(4)*params(8)*1/y(39)*T(14)+(y(9)+(1-params(1))*y(13)+y(23)*params(1)*(1+y(28)))*params(7)*getPowerDeriv(y(38),(-params(6)),1)));
g1(6,39)=(-(y(4)*params(8)*T(14)*(-y(38))/(y(39)*y(39))));
g1(7,11)=1;
g1(7,21)=(-(1-params(1)));
g1(7,30)=(-params(1));
g1(8,12)=(-(1+params(25)));
g1(8,13)=getPowerDeriv(y(13),(-params(3)),1);
g1(9,12)=(-(y(33)/params(4)));
g1(9,14)=getPowerDeriv(y(14),params(5),1);
g1(9,33)=(-(y(12)/params(4)));
g1(10,12)=1-params(2)*y(31)/y(37);
g1(10,31)=(-T(7));
g1(10,37)=(-((-(y(12)*params(2)*y(31)))/(y(37)*y(37))));
g1(11,12)=1-params(2)*y(41)/y(37);
g1(11,37)=(-((-(y(12)*params(2)*y(41)))/(y(37)*y(37))));
g1(11,41)=(-T(7));
g1(12,5)=(-(y(12)*params(2)));
g1(12,12)=1+(1-params(1))*params(19)*((1-params(1))*y(17)-params(22))-params(2)*y(5);
g1(12,17)=y(12)*(1-params(1))*(1-params(1))*params(19);
g1(13,15)=(-1);
g1(13,18)=1;
g1(14,19)=1;
g1(15,20)=1;
g1(16,13)=(-(getPowerDeriv(y(13),1-params(3),1)/(1-params(3))));
g1(16,14)=params(4)*getPowerDeriv(y(14),1+params(5),1)/(1+params(5));
g1(16,21)=1-params(2);
g1(17,22)=(-(1+y(28)+y(29)));
g1(17,23)=getPowerDeriv(y(23),(-params(3)),1);
g1(17,28)=(-y(22));
g1(17,29)=(-y(22));
g1(18,22)=(-(y(33)/params(4)));
g1(18,24)=getPowerDeriv(y(24),params(5),1);
g1(18,33)=(-(y(22)/params(4)));
g1(19,22)=T(6)-params(2)*(1-params(11))/y(37);
g1(19,23)=y(22)*(-(T(5)*y(29)*1/y(27)));
g1(19,25)=y(22)*(-(y(29)*y(23)/y(27)*(-y(27))/(y(25)*y(25))*T(12)));
g1(19,27)=y(22)*(-(y(29)*y(23)/y(27)*T(12)*1/y(25)+T(5)*y(29)*(-y(23))/(y(27)*y(27))));
g1(19,29)=y(22)*(-(T(5)*y(23)/y(27)));
g1(19,37)=(-((-(params(2)*y(22)*(1-params(11))))/(y(37)*y(37))));
g1(20,26)=1;
g1(21,25)=(-1);
g1(21,27)=1;
g1(22,2)=(-(y(23)*params(9)/y(27)));
g1(22,23)=(-(y(2)*params(9)/y(27)+(-(y(27)*params(10)))/(y(23)*y(23))));
g1(22,27)=(-((-(y(23)*y(2)*params(9)))/(y(27)*y(27))+params(10)/y(23)));
g1(22,28)=1;
g1(23,2)=(-(y(23)*params(9)/y(27)));
g1(23,23)=(-(y(2)*params(9)/y(27)-(-(y(27)*params(10)))/(y(23)*y(23))));
g1(23,27)=(-((-(y(23)*y(2)*params(9)))/(y(27)*y(27))-params(10)/y(23)));
g1(23,29)=1;
g1(24,23)=1+y(28);
g1(24,24)=(-y(33));
g1(24,25)=1-(1-params(11))/y(37);
g1(24,28)=y(23);
g1(24,33)=(-y(24));
g1(24,37)=(-((-(y(25)*(1-params(11))))/(y(37)*y(37))));
g1(24,44)=1;
g1(25,23)=(-(getPowerDeriv(y(23),1-params(3),1)/(1-params(3))));
g1(25,24)=params(4)*getPowerDeriv(y(24),1+params(5),1)/(1+params(5));
g1(25,30)=1-params(2);
g1(26,12)=(-((T(7)*(params(2)*(y(32)+(1-params(14))*y(34))-(y(34)-1))-(y(12)*params(2)*(y(32)+(1-params(14))*y(34))-y(12)*(y(34)-1))*params(2)/y(37))/(T(7)*T(7))));
g1(26,31)=1;
g1(26,32)=(-(y(12)*params(2)/T(7)));
g1(26,34)=(-((y(12)*params(2)*(1-params(14))-y(12))/T(7)));
g1(26,37)=(-((-((y(12)*params(2)*(y(32)+(1-params(14))*y(34))-y(12)*(y(34)-1))*(-(y(12)*params(2)))/(y(37)*y(37))))/(T(7)*T(7))));
g1(27,12)=1-y(34);
g1(27,34)=(-y(12));
g1(28,8)=1-(1-params(14));
g1(28,9)=(-1);
g1(29,1)=(-(T(8)*T(9)));
g1(29,7)=(-(y(1)*T(8)*getPowerDeriv(y(7),1-params(13),1)));
g1(29,8)=(-(T(9)*y(1)*getPowerDeriv(y(8),params(13),1)));
g1(29,10)=1;
g1(30,8)=(-((-(y(10)*params(13)*y(35)))/(y(8)*y(8))));
g1(30,10)=(-(params(13)*y(35)/y(8)));
g1(30,32)=1;
g1(30,35)=(-(y(10)*params(13)/y(8)));
g1(31,7)=(-((-(y(10)*(1-params(13))*y(35)))/(y(7)*y(7))));
g1(31,10)=(-((1-params(13))*y(35)/y(7)));
g1(31,33)=1;
g1(31,35)=(-(y(10)*(1-params(13))/y(7)));
g1(32,10)=(y(38)*y(36)*(y(36)-params(38))*params(2)*y(10)*y(38)-y(38)*y(10)*y(38)*y(36)*(y(36)-params(38))*params(2))/(y(10)*y(38)*y(10)*y(38));
g1(32,35)=params(16)/params(15)*1/y(38);
g1(32,36)=(-(y(36)+y(36)-params(38)-y(10)*y(38)*((y(36)-params(38))*params(2)+y(36)*params(2))/(y(10)*y(38))));
g1(32,38)=params(16)/params(15)*(-y(35))/(y(38)*y(38))+(y(10)*y(38)*y(10)*y(36)*(y(36)-params(38))*params(2)-y(10)*y(10)*y(38)*y(36)*(y(36)-params(38))*params(2))/(y(10)*y(38)*y(10)*y(38));
g1(33,36)=1;
g1(33,37)=(-1);
g1(34,3)=(-y(38));
g1(34,5)=(-((1-params(1))*y(39)*(-y(17))));
g1(34,6)=(-1);
g1(34,9)=(-1);
g1(34,10)=y(38);
g1(34,17)=(-((1-params(1))*y(39)*(1-y(5)+params(19)/2*(1-params(1))*2*((1-params(1))*y(17)-params(22)))));
g1(34,36)=(-(params(15)/2*2*(y(36)-params(38))));
g1(34,38)=y(10)-y(3);
g1(34,39)=(-((1-params(1))*T(10)));
g1(35,38)=(-(params(7)*getPowerDeriv(y(38),1-params(6),1)));
g1(35,39)=(-((1-params(7))*getPowerDeriv(y(39),1-params(6),1)));
g1(36,37)=(-1);
g1(36,40)=1;
g1(37,4)=1/y(4)-params(44)*1/y(4);
g1(38,5)=1/y(5)-params(45)*1/y(5);
g1(39,41)=1;
g1(40,16)=1;
g1(41,3)=1;
g1(42,13)=(-((1-params(1))*params(25)));
g1(42,42)=1;
g1(43,3)=(-1);
g1(43,16)=(-((1-params(1))*(y(41)/y(37)-1)));
g1(43,25)=(-(params(1)*(1/y(37)-1)));
g1(43,37)=T(13);
g1(43,41)=(-((1-params(1))*y(16)*1/y(37)));
g1(43,42)=1;
g1(43,43)=1;
g1(44,3)=(-1);
g1(44,16)=(-((1-params(1))*(y(41)/y(37)-1)));
g1(44,25)=(-(params(1)*(1/y(37)-1)));
g1(44,37)=T(13);
g1(44,41)=(-((1-params(1))*y(16)*1/y(37)));
g1(44,42)=1;
g1(44,44)=1;
g1(45,10)=(-(y(38)/(y(10)*y(38))));
g1(45,38)=(-(y(10)/(y(10)*y(38))));
g1(45,45)=1;
g1(46,6)=(-(1/y(6)));
g1(46,46)=1;
g1(47,13)=(-(1/y(13)));
g1(47,47)=1;
g1(48,23)=(-(1/y(23)));
g1(48,48)=1;
g1(49,41)=(-(1/y(41)));
g1(49,49)=1;
g1(50,31)=(-(1/y(31)));
g1(50,50)=1;
g1(51,33)=(-(1/y(33)));
g1(51,51)=1;
g1(52,36)=(-(1/y(36)));
g1(52,52)=1;
g1(53,37)=(-(1/y(37)));
g1(53,53)=1;
g1(54,38)=(-(1/y(39)/T(1)));
g1(54,39)=(-((-y(38))/(y(39)*y(39))/T(1)));
g1(54,54)=1;
g1(55,15)=(-(1/y(15)));
g1(55,55)=1;
g1(56,25)=(-(1/y(25)));
g1(56,56)=1;
g1(57,57)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end

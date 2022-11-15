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
    T = Benchmark.static_g1_tt(T, y, x, params);
end
g1 = zeros(47, 47);
g1(1,1)=1/y(1)-params(35)*1/y(1);
g1(2,5)=1;
g1(2,12)=(-(1-params(1)));
g1(2,19)=(-params(1));
g1(3,6)=1;
g1(3,13)=(-(1-params(1)));
g1(3,20)=(-params(1));
g1(4,7)=1;
g1(4,14)=(-(1-params(1)));
g1(5,2)=(-1);
g1(5,3)=(-T(4));
g1(5,5)=(-T(1));
g1(5,8)=(-T(1));
g1(5,9)=1-T(2);
g1(5,27)=(-(y(9)*params(13)/2*2*(y(27)-params(31))));
g1(5,29)=(-((y(5)+y(8))*params(7)*getPowerDeriv(y(29),(-params(6)),1)+y(3)*params(8)*1/y(30)*T(17)));
g1(5,30)=(-(y(3)*params(8)*T(17)*(-y(29))/(y(30)*y(30))));
g1(6,10)=1;
g1(6,17)=(-(1-params(1)));
g1(6,21)=(-params(1));
g1(7,11)=(-1);
g1(7,12)=getPowerDeriv(y(12),(-params(3)),1);
g1(8,11)=(-(y(24)/params(4)));
g1(8,13)=getPowerDeriv(y(13),params(5),1);
g1(8,24)=(-(y(11)/params(4)));
g1(9,11)=1-params(2)*y(22)/y(28);
g1(9,22)=(-T(5));
g1(9,28)=(-((-(y(11)*params(2)*y(22)))/(y(28)*y(28))));
g1(10,11)=1-params(2)*y(32)/y(28);
g1(10,28)=(-((-(y(11)*params(2)*y(32)))/(y(28)*y(28))));
g1(10,32)=(-T(5));
g1(11,4)=(-(y(11)*params(2)));
g1(11,11)=1+(1-params(1))*params(17)*((1-params(1))*y(16)-params(18))-params(2)*y(4);
g1(11,16)=y(11)*(1-params(1))*(1-params(1))*params(17);
g1(12,12)=(-(getPowerDeriv(y(12),1-params(3),1)/(1-params(3))));
g1(12,13)=params(4)*getPowerDeriv(y(13),1+params(5),1)/(1+params(5));
g1(12,17)=1-params(2);
g1(13,18)=(-1);
g1(13,19)=getPowerDeriv(y(19),(-params(3)),1);
g1(14,18)=(-(y(24)/params(4)));
g1(14,20)=getPowerDeriv(y(20),params(5),1);
g1(14,24)=(-(y(18)/params(4)));
g1(15,19)=1;
g1(15,20)=(-y(24));
g1(15,24)=(-y(20));
g1(15,34)=1;
g1(16,19)=(-(getPowerDeriv(y(19),1-params(3),1)/(1-params(3))));
g1(16,20)=params(4)*getPowerDeriv(y(20),1+params(5),1)/(1+params(5));
g1(16,21)=1-params(2);
g1(17,11)=(-((T(5)*(params(2)*(y(23)+(1-params(12))*y(25))-(y(25)-1))-(y(11)*params(2)*(y(23)+(1-params(12))*y(25))-y(11)*(y(25)-1))*params(2)/y(28))/(T(5)*T(5))));
g1(17,22)=1;
g1(17,23)=(-(y(11)*params(2)/T(5)));
g1(17,25)=(-((y(11)*params(2)*(1-params(12))-y(11))/T(5)));
g1(17,28)=(-((-((y(11)*params(2)*(y(23)+(1-params(12))*y(25))-y(11)*(y(25)-1))*(-(y(11)*params(2)))/(y(28)*y(28))))/(T(5)*T(5))));
g1(18,11)=1-y(25);
g1(18,25)=(-y(11));
g1(19,7)=1-(1-params(12));
g1(19,8)=(-1);
g1(20,1)=(-(T(6)*T(7)));
g1(20,6)=(-(y(1)*T(6)*getPowerDeriv(y(6),1-params(11),1)));
g1(20,7)=(-(T(7)*y(1)*getPowerDeriv(y(7),params(11),1)));
g1(20,9)=1;
g1(21,7)=(-((-(y(9)*params(11)*y(26)))/(y(7)*y(7))));
g1(21,9)=(-(params(11)*y(26)/y(7)));
g1(21,23)=1;
g1(21,26)=(-(y(9)*params(11)/y(7)));
g1(22,6)=(-((-(y(9)*(1-params(11))*y(26)))/(y(6)*y(6))));
g1(22,9)=(-((1-params(11))*y(26)/y(6)));
g1(22,24)=1;
g1(22,26)=(-(y(9)*(1-params(11))/y(6)));
g1(23,9)=(y(29)*y(27)*(y(27)-params(31))*params(2)*y(9)*y(29)-y(29)*y(9)*y(29)*y(27)*(y(27)-params(31))*params(2))/(y(9)*y(29)*y(9)*y(29));
g1(23,26)=params(14)/params(13)*1/y(29);
g1(23,27)=(-(y(27)+y(27)-params(31)-y(9)*y(29)*((y(27)-params(31))*params(2)+y(27)*params(2))/(y(9)*y(29))));
g1(23,29)=params(14)/params(13)*(-y(26))/(y(29)*y(29))+(y(9)*y(29)*y(9)*y(27)*(y(27)-params(31))*params(2)-y(9)*y(9)*y(29)*y(27)*(y(27)-params(31))*params(2))/(y(9)*y(29)*y(9)*y(29));
g1(24,27)=1;
g1(24,28)=(-1);
g1(25,2)=(-y(29));
g1(25,4)=(-((1-params(1))*y(30)*(-y(16))));
g1(25,5)=(-1);
g1(25,8)=(-1);
g1(25,9)=y(29);
g1(25,16)=(-((1-params(1))*y(30)*(1-y(4)+params(17)/2*(1-params(1))*2*((1-params(1))*y(16)-params(18)))));
g1(25,27)=(-(params(13)/2*2*(y(27)-params(31))));
g1(25,29)=y(9)-y(2);
g1(25,30)=(-((1-params(1))*T(8)));
g1(26,29)=(-(params(7)*getPowerDeriv(y(29),1-params(6),1)));
g1(26,30)=(-((1-params(7))*getPowerDeriv(y(30),1-params(6),1)));
g1(27,28)=(-1);
g1(27,31)=1;
g1(28,3)=1/y(3)-params(38)*1/y(3);
g1(29,4)=1/y(4)-params(39)*1/y(4);
g1(30,9)=(-(exp(x(5))*T(9)*T(12)*T(10)*y(29)/params(32)*T(15)*T(16)));
g1(30,28)=(-(exp(x(5))*T(9)*T(16)*T(12)*T(11)*1/params(31)*getPowerDeriv(y(28)/params(31),params(27),1)));
g1(30,29)=(-(exp(x(5))*T(9)*T(16)*T(12)*T(10)*T(15)*y(9)/params(32)));
g1(30,31)=(-(exp(x(5))*T(9)*T(16)*T(10)*T(11)*1/params(33)*getPowerDeriv(y(31)/params(33),params(29),1)));
g1(30,32)=1/params(30)-exp(x(5))*T(14)*1/params(30)*getPowerDeriv(y(32)/params(30),params(26),1);
g1(31,15)=1;
g1(32,2)=1;
g1(33,2)=(-1);
g1(33,15)=(-((1-params(1))*y(32)/y(28)-(1-params(1))));
g1(33,28)=(-(y(15)*(1-params(1))*(-y(32))/(y(28)*y(28))));
g1(33,32)=(-(y(15)*(1-params(1))*1/y(28)));
g1(33,33)=1;
g1(34,2)=(-1);
g1(34,15)=(-((1-params(1))*y(32)/y(28)-(1-params(1))));
g1(34,28)=(-(y(15)*(1-params(1))*(-y(32))/(y(28)*y(28))));
g1(34,32)=(-(y(15)*(1-params(1))*1/y(28)));
g1(34,34)=1;
g1(35,9)=(-(y(29)/(y(9)*y(29))));
g1(35,29)=(-(y(9)/(y(9)*y(29))));
g1(35,35)=1;
g1(36,5)=(-(1/y(5)));
g1(36,36)=1;
g1(37,12)=(-(1/y(12)));
g1(37,37)=1;
g1(38,19)=(-(1/y(19)));
g1(38,38)=1;
g1(39,32)=(-(1/y(32)));
g1(39,39)=1;
g1(40,22)=(-(1/y(22)));
g1(40,40)=1;
g1(41,27)=(-(1/y(27)));
g1(41,41)=1;
g1(42,29)=(-(1/y(29)));
g1(42,42)=1;
g1(43,30)=(-(1/y(30)));
g1(43,43)=1;
g1(44,29)=(-(1/y(30)/T(3)));
g1(44,30)=(-((-y(29))/(y(30)*y(30))/T(3)));
g1(44,44)=1;
g1(45,28)=(-(1/y(28)));
g1(45,45)=1;
g1(46,24)=(-(1/y(24)));
g1(46,46)=1;
g1(47,14)=(-(1/y(14)));
g1(47,47)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end

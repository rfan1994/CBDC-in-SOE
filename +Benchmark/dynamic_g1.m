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
    T = Benchmark.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(46, 72);
g1(1,1)=(-(params(41)*1/y(1)));
g1(1,11)=1/y(11);
g1(1,68)=1;
g1(2,15)=1;
g1(2,22)=(-(1-params(1)));
g1(2,29)=(-params(1));
g1(3,16)=1;
g1(3,23)=(-(1-params(1)));
g1(3,30)=(-params(1));
g1(4,17)=1;
g1(4,24)=(-(1-params(1)));
g1(5,12)=(-1);
g1(5,13)=(-T(4));
g1(5,15)=(-T(2));
g1(5,18)=(-T(2));
g1(5,19)=T(1);
g1(5,37)=y(19)*(-(params(15)/2*2*(y(37)-params(38))));
g1(5,39)=(-((y(15)+y(18))*params(7)*getPowerDeriv(y(39),(-params(6)),1)+y(13)*params(8)*1/y(40)*T(25)));
g1(5,40)=(-(y(13)*params(8)*T(25)*(-y(39))/(y(40)*y(40))));
g1(6,20)=1;
g1(6,27)=(-(1-params(1)));
g1(6,31)=(-params(1));
g1(7,21)=(-1);
g1(7,22)=getPowerDeriv(y(22),(-params(3)),1);
g1(8,21)=(-(y(34)/params(4)));
g1(8,23)=getPowerDeriv(y(23),params(5),1);
g1(8,34)=(-(y(21)/params(4)));
g1(9,21)=1;
g1(9,59)=(-(params(2)*y(32)/y(65)));
g1(9,32)=(-T(5));
g1(9,65)=(-((-(params(2)*y(59)*y(32)))/(y(65)*y(65))));
g1(10,21)=1;
g1(10,59)=(-(params(2)*y(42)/y(65)));
g1(10,65)=(-((-(params(2)*y(59)*y(42)))/(y(65)*y(65))));
g1(10,42)=(-T(5));
g1(11,14)=(-(params(2)*y(59)*y(67)/y(40)));
g1(11,21)=1+(1-params(1))*params(19)*((1-params(1))*y(26)-params(22));
g1(11,59)=(-(y(14)*params(2)*y(67)/y(40)));
g1(11,26)=y(21)*(1-params(1))*(1-params(1))*params(19);
g1(11,40)=(-(y(14)*(-(params(2)*y(59)*y(67)))/(y(40)*y(40))));
g1(11,67)=(-(y(14)*params(2)*y(59)/y(40)));
g1(12,22)=(-(getPowerDeriv(y(22),1-params(3),1)/(1-params(3))));
g1(12,23)=params(4)*getPowerDeriv(y(23),1+params(5),1)/(1+params(5));
g1(12,27)=1;
g1(12,60)=(-params(2));
g1(13,28)=(-1);
g1(13,29)=getPowerDeriv(y(29),(-params(3)),1);
g1(14,28)=(-(y(34)/params(4)));
g1(14,30)=getPowerDeriv(y(30),params(5),1);
g1(14,34)=(-(y(28)/params(4)));
g1(15,29)=1;
g1(15,30)=(-y(34));
g1(15,34)=(-y(30));
g1(15,44)=1;
g1(16,29)=(-(getPowerDeriv(y(29),1-params(3),1)/(1-params(3))));
g1(16,30)=params(4)*getPowerDeriv(y(30),1+params(5),1)/(1+params(5));
g1(16,31)=1;
g1(16,61)=(-params(2));
g1(17,21)=(-((-(y(35)-1))/T(5)));
g1(17,59)=(-((T(5)*params(2)*(y(62)+(1-params(14))*y(63))-(params(2)*y(59)*(y(62)+(1-params(14))*y(63))-y(21)*(y(35)-1))*params(2)/y(65))/(T(5)*T(5))));
g1(17,32)=1;
g1(17,62)=(-(params(2)*y(59)/T(5)));
g1(17,35)=(-((-y(21))/T(5)));
g1(17,63)=(-(params(2)*y(59)*(1-params(14))/T(5)));
g1(17,65)=(-((-((params(2)*y(59)*(y(62)+(1-params(14))*y(63))-y(21)*(y(35)-1))*(-(params(2)*y(59)))/(y(65)*y(65))))/(T(5)*T(5))));
g1(18,5)=(-(y(21)*y(35)*(T(21)-(y(5)*y(18)*params(17)*(-y(18))/(y(5)*y(5))-y(18)*params(17)*(y(18)/y(5)-1))/(y(5)*y(5)))));
g1(18,18)=(-(y(21)*y(35)*(T(22)-(params(17)*(y(18)/y(5)-1)+y(18)*params(17)*1/y(5))/y(5))+T(9)*params(17)*y(59)*params(2)*y(63)*(-y(57))/(y(18)*y(18))+T(8)*(-y(57))/(y(18)*y(18))*2*y(57)/y(18)));
g1(18,57)=(-(T(9)*params(17)*y(59)*params(2)*y(63)*1/y(18)+T(8)*2*y(57)/y(18)*1/y(18)));
g1(18,21)=1-y(35)*T(7);
g1(18,59)=(-(T(9)*(y(57)/y(18)-1)*params(17)*params(2)*y(63)));
g1(18,35)=(-(y(21)*T(7)));
g1(18,63)=(-(T(9)*(y(57)/y(18)-1)*params(2)*y(59)*params(17)));
g1(19,4)=(-(1-params(14)));
g1(19,17)=1;
g1(19,5)=(-(y(18)*T(21)));
g1(19,18)=(-(T(6)+y(18)*T(22)));
g1(20,11)=(-(T(10)*T(11)));
g1(20,16)=(-(y(11)*T(10)*getPowerDeriv(y(16),1-params(13),1)));
g1(20,4)=(-(T(11)*y(11)*getPowerDeriv(y(4),params(13),1)));
g1(20,19)=1;
g1(21,4)=(-((-(y(19)*params(13)*y(36)))/(y(4)*y(4))));
g1(21,19)=(-(params(13)*y(36)/y(4)));
g1(21,33)=1;
g1(21,36)=(-(y(19)*params(13)/y(4)));
g1(22,16)=(-((-(y(19)*(1-params(13))*y(36)))/(y(16)*y(16))));
g1(22,19)=(-((1-params(13))*y(36)/y(16)));
g1(22,34)=1;
g1(22,36)=(-(y(19)*(1-params(13))/y(16)));
g1(23,19)=(-(y(39)*T(12)))/(y(19)*y(39)*y(19)*y(39));
g1(23,58)=y(64)*params(2)*y(59)/y(21)*(y(64)-params(38))*y(66)/(y(19)*y(39));
g1(23,21)=y(58)*y(66)*y(64)*(y(64)-params(38))*(-(params(2)*y(59)))/(y(21)*y(21))/(y(19)*y(39));
g1(23,59)=y(58)*y(66)*y(64)*(y(64)-params(38))*params(2)/y(21)/(y(19)*y(39));
g1(23,36)=params(16)/params(15)*1/y(39);
g1(23,37)=(-(y(37)+y(37)-params(38)));
g1(23,64)=y(58)*y(66)*(params(2)*y(59)/y(21)*(y(64)-params(38))+params(2)*y(59)/y(21)*y(64))/(y(19)*y(39));
g1(23,39)=params(16)/params(15)*(-y(36))/(y(39)*y(39))+(-(y(19)*T(12)))/(y(19)*y(39)*y(19)*y(39));
g1(23,66)=y(64)*params(2)*y(59)/y(21)*(y(64)-params(38))*y(58)/(y(19)*y(39));
g1(24,37)=1;
g1(24,38)=(-(y(39)/y(8)));
g1(24,8)=(-(y(38)*(-y(39))/(y(8)*y(8))));
g1(24,39)=(-(y(38)*1/y(8)));
g1(25,12)=(-y(39));
g1(25,3)=(-((1-params(1))*y(40)*(-y(7))));
g1(25,15)=(-1);
g1(25,18)=(-1);
g1(25,19)=T(1)*y(39);
g1(25,7)=(-((1-params(1))*y(40)*(-y(3))));
g1(25,26)=(-((1-params(1))*y(40)*(1+params(19)/2*(1-params(1))*2*((1-params(1))*y(26)-params(22)))));
g1(25,37)=y(19)*y(39)*(-(params(15)/2*2*(y(37)-params(38))));
g1(25,39)=y(19)*T(1)-y(12);
g1(25,40)=(-((1-params(1))*T(13)));
g1(26,39)=(-(params(7)*getPowerDeriv(y(39),1-params(6),1)));
g1(26,40)=(-((1-params(7))*getPowerDeriv(y(40),1-params(6),1)));
g1(27,38)=(-(y(40)/y(9)));
g1(27,9)=(-(y(38)*(-y(40))/(y(9)*y(9))));
g1(27,40)=(-(y(38)*1/y(9)));
g1(27,41)=1;
g1(28,2)=(-(params(44)*1/y(2)));
g1(28,13)=1/y(13);
g1(28,70)=(-1);
g1(29,3)=(-(params(45)*1/y(3)));
g1(29,14)=1/y(14);
g1(29,71)=(-1);
g1(30,72)=(-T(20));
g1(30,19)=(-(exp(x(it_, 5))*T(14)*T(17)*T(15)*y(39)/params(39)*T(23)*T(24)));
g1(30,38)=(-(exp(x(it_, 5))*T(14)*T(24)*T(17)*T(16)*1/params(38)*getPowerDeriv(y(38)/params(38),params(34),1)));
g1(30,39)=(-(exp(x(it_, 5))*T(14)*T(24)*T(17)*T(15)*T(23)*y(19)/params(39)));
g1(30,41)=(-(exp(x(it_, 5))*T(14)*T(24)*T(15)*T(16)*1/params(40)*getPowerDeriv(y(41)/params(40),params(36),1)));
g1(30,10)=(-(exp(x(it_, 5))*T(19)*1/params(37)*getPowerDeriv(y(10)/params(37),params(33),1)));
g1(30,42)=1/params(37);
g1(31,25)=1;
g1(32,12)=1;
g1(32,69)=(-(params(48)*exp(x(it_, 2))));
g1(33,12)=(-1);
g1(33,6)=(-((1-params(1))*y(10)/y(38)));
g1(33,25)=1-params(1);
g1(33,38)=(-(y(6)*(1-params(1))*(-y(10))/(y(38)*y(38))));
g1(33,10)=(-(y(6)*(1-params(1))*1/y(38)));
g1(33,43)=1;
g1(34,12)=(-1);
g1(34,6)=(-((1-params(1))*y(10)/y(38)));
g1(34,25)=1-params(1);
g1(34,38)=(-(y(6)*(1-params(1))*(-y(10))/(y(38)*y(38))));
g1(34,10)=(-(y(6)*(1-params(1))*1/y(38)));
g1(34,44)=1;
g1(35,19)=(-(y(39)/(y(19)*y(39))));
g1(35,39)=(-(y(19)/(y(19)*y(39))));
g1(35,45)=1;
g1(36,22)=(-(1/y(22)));
g1(36,46)=1;
g1(37,29)=(-(1/y(29)));
g1(37,47)=1;
g1(38,17)=(-(1/y(17)));
g1(38,48)=1;
g1(39,23)=(-(1/y(23)));
g1(39,49)=1;
g1(40,30)=(-(1/y(30)));
g1(40,50)=1;
g1(41,26)=(-(1/y(26)));
g1(41,51)=1;
g1(42,42)=(-(1/y(42)));
g1(42,52)=1;
g1(43,32)=(-(1/y(32)));
g1(43,53)=1;
g1(44,34)=(-(1/y(34)));
g1(44,54)=1;
g1(45,38)=(-(1/y(38)));
g1(45,55)=1;
g1(46,39)=(-(1/y(40)/T(3)));
g1(46,40)=(-((-y(39))/(y(40)*y(40))/T(3)));
g1(46,56)=1;

end

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
g1 = zeros(47, 73);
g1(1,1)=(-(params(35)*1/y(1)));
g1(1,11)=1/y(11);
g1(1,69)=1;
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
g1(5,15)=(-T(1));
g1(5,18)=(-T(1));
g1(5,19)=1-T(2);
g1(5,37)=(-(y(19)*params(13)/2*2*(y(37)-params(31))));
g1(5,39)=(-((y(15)+y(18))*T(58)+y(13)*params(8)*T(59)*T(60)));
g1(5,40)=(-(y(13)*params(8)*T(60)*T(62)));
g1(6,20)=1;
g1(6,27)=(-(1-params(1)));
g1(6,31)=(-params(1));
g1(7,21)=(-1);
g1(7,22)=getPowerDeriv(y(22),(-params(3)),1);
g1(8,21)=(-(y(34)/params(4)));
g1(8,23)=getPowerDeriv(y(23),params(5),1);
g1(8,34)=(-(y(21)/params(4)));
g1(9,21)=1;
g1(9,60)=(-(params(2)*y(32)/y(66)));
g1(9,32)=(-T(5));
g1(9,66)=(-((-(params(2)*y(60)*y(32)))/(y(66)*y(66))));
g1(10,21)=1;
g1(10,60)=(-(params(2)*y(42)/y(66)));
g1(10,66)=(-((-(params(2)*y(60)*y(42)))/(y(66)*y(66))));
g1(10,42)=(-T(5));
g1(11,14)=(-(params(2)*y(60)*y(68)/y(40)));
g1(11,21)=1+(1-params(1))*params(17)*((1-params(1))*y(26)-params(18));
g1(11,60)=(-(y(14)*params(2)*y(68)/y(40)));
g1(11,26)=y(21)*(1-params(1))*(1-params(1))*params(17);
g1(11,40)=(-(y(14)*(-(params(2)*y(60)*y(68)))/(y(40)*y(40))));
g1(11,68)=(-(y(14)*params(2)*y(60)/y(40)));
g1(12,22)=(-(getPowerDeriv(y(22),1-params(3),1)/(1-params(3))));
g1(12,23)=params(4)*getPowerDeriv(y(23),1+params(5),1)/(1+params(5));
g1(12,27)=1;
g1(12,61)=(-params(2));
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
g1(16,62)=(-params(2));
g1(17,21)=(-((-(y(35)-1))/T(5)));
g1(17,60)=(-(T(49)/(T(5)*T(5))));
g1(17,32)=1;
g1(17,63)=(-(params(2)*y(60)/T(5)));
g1(17,35)=(-((-y(21))/T(5)));
g1(17,64)=(-(params(2)*y(60)*(1-params(12))/T(5)));
g1(17,66)=(-((-((params(2)*y(60)*(y(63)+(1-params(12))*y(64))-y(21)*(y(35)-1))*T(57)))/(T(5)*T(5))));
g1(18,5)=(-(y(21)*y(35)*T(32)));
g1(18,18)=(-(y(21)*y(35)*(T(34)-T(35)/y(5))+T(11)*params(15)*y(60)*params(2)*y(64)*T(36)+T(10)*T(38)));
g1(18,58)=(-(T(11)*T(40)+T(10)*T(41)));
g1(18,21)=1-y(35)*T(8);
g1(18,60)=(-(T(11)*T(50)));
g1(18,35)=(-(y(21)*T(8)));
g1(18,64)=(-(T(11)*T(52)));
g1(19,4)=(-(1-params(12)));
g1(19,17)=1;
g1(19,5)=(-(y(18)*T(31)));
g1(19,18)=(-(T(7)+y(18)*T(34)));
g1(20,11)=(-(T(12)*T(13)));
g1(20,16)=(-(y(11)*T(12)*T(27)));
g1(20,4)=(-(T(13)*y(11)*T(28)));
g1(20,19)=1;
g1(21,4)=(-((-(y(19)*params(11)*y(36)))/(y(4)*y(4))));
g1(21,19)=(-(params(11)*y(36)/y(4)));
g1(21,33)=1;
g1(21,36)=(-(y(19)*params(11)/y(4)));
g1(22,16)=(-((-(y(19)*(1-params(11))*y(36)))/(y(16)*y(16))));
g1(22,19)=(-((1-params(11))*y(36)/y(16)));
g1(22,34)=1;
g1(22,36)=(-(y(19)*(1-params(11))/y(16)));
g1(23,19)=(-(y(39)*T(18)))/T(42);
g1(23,59)=T(17)/(y(19)*y(39));
g1(23,21)=T(47)/(y(19)*y(39));
g1(23,60)=T(51)/(y(19)*y(39));
g1(23,36)=T(14)*1/y(39);
g1(23,37)=(-(y(37)+y(37)-params(31)));
g1(23,65)=T(54)/(y(19)*y(39));
g1(23,39)=T(14)*(-y(36))/(y(39)*y(39))+(-(y(19)*T(18)))/T(42);
g1(23,67)=T(16)*y(59)/(y(19)*y(39));
g1(24,37)=1;
g1(24,38)=(-(y(39)/y(8)));
g1(24,8)=(-(y(38)*(-y(39))/(y(8)*y(8))));
g1(24,39)=(-(y(38)*1/y(8)));
g1(25,12)=(-y(39));
g1(25,3)=(-((1-params(1))*y(40)*(-y(7))));
g1(25,15)=(-1);
g1(25,18)=(-1);
g1(25,19)=y(39);
g1(25,7)=(-((1-params(1))*y(40)*(-y(3))));
g1(25,26)=(-((1-params(1))*y(40)*(1+params(17)/2*(1-params(1))*2*((1-params(1))*y(26)-params(18)))));
g1(25,37)=(-(params(13)/2*2*(y(37)-params(31))));
g1(25,39)=y(19)-y(12);
g1(25,40)=(-((1-params(1))*T(19)));
g1(26,39)=(-(params(7)*getPowerDeriv(y(39),1-params(6),1)));
g1(26,40)=(-((1-params(7))*getPowerDeriv(y(40),1-params(6),1)));
g1(27,38)=(-(y(40)/y(9)));
g1(27,9)=(-(y(38)*(-y(40))/(y(9)*y(9))));
g1(27,40)=(-(y(38)*1/y(9)));
g1(27,41)=1;
g1(28,2)=(-(params(38)*1/y(2)));
g1(28,13)=1/y(13);
g1(28,71)=(-1);
g1(29,3)=(-(params(39)*1/y(3)));
g1(29,14)=1/y(14);
g1(29,72)=(-1);
g1(30,73)=(-T(26));
g1(30,19)=(-(exp(x(it_, 5))*T(20)*T(45)*T(46)));
g1(30,38)=T(56);
g1(30,39)=(-(exp(x(it_, 5))*T(20)*T(46)*T(61)));
g1(30,41)=T(64);
g1(30,10)=T(67);
g1(30,42)=T(65);
g1(31,25)=1;
g1(32,12)=1;
g1(32,70)=(-(params(42)*exp(x(it_, 2))));
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
g1(36,15)=(-(1/y(15)));
g1(36,46)=1;
g1(37,22)=(-(1/y(22)));
g1(37,47)=1;
g1(38,29)=(-(1/y(29)));
g1(38,48)=1;
g1(39,42)=(-(1/y(42)));
g1(39,49)=1;
g1(40,32)=(-(1/y(32)));
g1(40,50)=1;
g1(41,37)=(-(1/y(37)));
g1(41,51)=1;
g1(42,39)=(-(1/y(39)));
g1(42,52)=1;
g1(43,40)=(-T(59));
g1(43,53)=1;
g1(44,39)=(-(T(59)/T(3)));
g1(44,40)=(-(T(62)/T(3)));
g1(44,54)=1;
g1(45,38)=(-(1/y(38)));
g1(45,55)=1;
g1(46,34)=(-(1/y(34)));
g1(46,56)=1;
g1(47,24)=(-(1/y(24)));
g1(47,57)=1;

end

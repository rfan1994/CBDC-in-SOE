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
    T = TANK_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(61, 1);
lhs = log(y(14));
rhs = (1-params(41))*log(params(46))+params(41)*log(y(1))-x(it_, 1);
residual(1) = lhs - rhs;
lhs = log(y(15));
rhs = (1-params(42))*log(params(47))+params(42)*log(y(2))-x(it_, 2);
residual(2) = lhs - rhs;
lhs = y(19);
rhs = (1-params(1))*y(26)+params(1)*y(37);
residual(3) = lhs - rhs;
lhs = y(20);
rhs = (1-params(1))*y(27)+params(1)*y(38);
residual(4) = lhs - rhs;
lhs = y(21);
rhs = (1-params(1))*y(28);
residual(5) = lhs - rhs;
lhs = y(23)*T(1);
rhs = T(3)*y(17)+y(16)+T(2)*(y(22)+(1-params(1))*y(26)+y(37)*params(1)*(1+y(43)));
residual(6) = lhs - rhs;
lhs = y(24);
rhs = (1-params(1))*y(35)+params(1)*y(45);
residual(7) = lhs - rhs;
lhs = y(26)^(-params(3));
rhs = y(25)*(1+params(25));
residual(8) = lhs - rhs;
lhs = y(27)^params(5);
rhs = y(25)*y(49)/params(4);
residual(9) = lhs - rhs;
lhs = y(25);
rhs = params(2)*y(77)*y(46)/y(84);
residual(10) = lhs - rhs;
residual(11) = y(29);
lhs = y(25);
rhs = params(2)*y(77)*y(57)/y(84);
residual(12) = lhs - rhs;
lhs = y(25)*(1+(1-params(1))*params(19)*((1-params(1))*y(31)-params(22)));
rhs = T(4)*y(18);
residual(13) = lhs - rhs;
lhs = y(32);
rhs = y(28);
residual(14) = lhs - rhs;
residual(15) = y(33);
residual(16) = y(34);
lhs = y(35);
rhs = y(26)^(1-params(3))/(1-params(3))-params(4)*y(27)^(1+params(5))/(1+params(5))+params(2)*y(78);
residual(17) = lhs - rhs;
lhs = y(37)^(-params(3));
rhs = y(36)*(1+y(43)+y(44));
residual(18) = lhs - rhs;
lhs = y(38)^params(5);
rhs = y(49)*y(36)/params(4);
residual(19) = lhs - rhs;
lhs = y(36)*T(24);
rhs = params(2)*y(79)*(1-params(11))/y(84);
residual(20) = lhs - rhs;
residual(21) = y(40);
residual(22) = y(41);
lhs = y(42);
rhs = (T(6))^(params(12)/(params(12)-1));
residual(23) = lhs - rhs;
lhs = y(43);
rhs = y(37)*y(15)*params(9)/y(42)+y(42)*params(10)/y(37)-2*(params(9)*params(10))^0.5;
residual(24) = lhs - rhs;
lhs = y(44);
rhs = y(37)*y(15)*params(9)/y(42)-y(42)*params(10)/y(37);
residual(25) = lhs - rhs;
lhs = y(39)-(1-params(11))*y(10)/y(53)+y(37)*(1+y(43));
rhs = y(38)*y(49)-y(60);
residual(26) = lhs - rhs;
lhs = y(45);
rhs = y(37)^(1-params(3))/(1-params(3))-params(4)*y(38)^(1+params(5))/(1+params(5))+params(2)*y(80);
residual(27) = lhs - rhs;
lhs = y(46);
rhs = T(7)/T(8);
residual(28) = lhs - rhs;
lhs = y(47);
rhs = T(7)/T(4);
residual(29) = lhs - rhs;
lhs = y(25);
rhs = y(25)*y(50)*T(10)+T(11)*T(12);
residual(30) = lhs - rhs;
lhs = y(21);
rhs = (1-params(14))*y(6)+y(22)*T(9);
residual(31) = lhs - rhs;
lhs = y(23);
rhs = y(14)*T(13)*T(14);
residual(32) = lhs - rhs;
lhs = y(48);
rhs = y(23)*params(13)*y(51)/y(6);
residual(33) = lhs - rhs;
lhs = y(49);
rhs = y(23)*(1-params(13))*y(51)/y(20);
residual(34) = lhs - rhs;
lhs = params(16)/params(15)*(y(51)/y(54)-(params(16)-1)/params(16));
rhs = y(52)*(y(52)-params(38))-T(15)/(y(23)*y(54));
residual(35) = lhs - rhs;
lhs = y(52);
rhs = y(53)*y(54)/y(11);
residual(36) = lhs - rhs;
lhs = T(1)*y(23)*y(54);
rhs = params(19)*(1-params(1))*y(55)/2*T(16)+y(10)*params(1)*params(11)/y(53)+(1-params(1))*y(55)*(y(31)-y(5)*y(9))+y(54)*y(16)+y(22)+(1-params(1))*y(26)+y(37)*params(1)*(1+y(43));
residual(37) = lhs - rhs;
lhs = 1;
rhs = params(7)*y(54)^(1-params(6))+(1-params(7))*y(55)^(1-params(6));
residual(38) = lhs - rhs;
lhs = y(56);
rhs = y(53)*y(55)/y(12);
residual(39) = lhs - rhs;
lhs = log(y(17));
rhs = (1-params(44))*log(params(49))+params(44)*log(y(4))+x(it_, 4);
residual(40) = lhs - rhs;
lhs = log(y(18));
rhs = (1-params(45))*log(params(50))+params(45)*log(y(5))+x(it_, 5);
residual(41) = lhs - rhs;
lhs = y(57)/params(37);
rhs = T(23);
residual(42) = lhs - rhs;
lhs = y(30);
rhs = params(29)/(1-params(1));
residual(43) = lhs - rhs;
lhs = log(y(16));
rhs = (1-params(43))*log(params(48))+params(43)*log(y(3))+x(it_, 3);
residual(44) = lhs - rhs;
lhs = y(58);
rhs = y(26)*(1-params(1))*params(25);
residual(45) = lhs - rhs;
lhs = y(59);
rhs = T(25);
residual(46) = lhs - rhs;
lhs = y(60);
rhs = T(25);
residual(47) = lhs - rhs;
lhs = y(61);
rhs = log(y(23)*y(54));
residual(48) = lhs - rhs;
lhs = y(62);
rhs = log(y(19));
residual(49) = lhs - rhs;
lhs = y(63);
rhs = log(y(26));
residual(50) = lhs - rhs;
lhs = y(64);
rhs = log(y(37));
residual(51) = lhs - rhs;
lhs = y(65);
rhs = log(y(57));
residual(52) = lhs - rhs;
lhs = y(66);
rhs = log(y(46));
residual(53) = lhs - rhs;
lhs = y(67);
rhs = log(y(49));
residual(54) = lhs - rhs;
lhs = y(68);
rhs = log(y(52));
residual(55) = lhs - rhs;
lhs = y(69);
rhs = log(y(53));
residual(56) = lhs - rhs;
lhs = y(70);
rhs = log(y(55)/y(54));
residual(57) = lhs - rhs;
lhs = y(71);
rhs = log(y(28));
residual(58) = lhs - rhs;
lhs = y(72);
rhs = log(y(39));
residual(59) = lhs - rhs;
residual(60) = y(73);
residual(61) = y(74);

end

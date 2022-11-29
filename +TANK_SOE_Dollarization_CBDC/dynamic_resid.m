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
    T = TANK_SOE_Dollarization_CBDC.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(61, 1);
lhs = log(y(16));
rhs = (1-params(41))*log(params(46))+params(41)*log(y(1))-x(it_, 1);
residual(1) = lhs - rhs;
lhs = log(y(17));
rhs = (1-params(42))*log(params(47))+params(42)*log(y(2))-x(it_, 2);
residual(2) = lhs - rhs;
lhs = y(21);
rhs = (1-params(1))*y(28)+params(1)*y(39);
residual(3) = lhs - rhs;
lhs = y(22);
rhs = (1-params(1))*y(29)+params(1)*y(40);
residual(4) = lhs - rhs;
lhs = y(23);
rhs = (1-params(1))*(y(30)+y(57)*y(31));
residual(5) = lhs - rhs;
lhs = y(25)*T(1);
rhs = T(3)*y(19)+y(18)+T(2)*(y(24)+(1-params(1))*y(28)+y(39)*params(1)*(1+y(45)));
residual(6) = lhs - rhs;
lhs = y(26);
rhs = (1-params(1))*y(37)+params(1)*y(47);
residual(7) = lhs - rhs;
lhs = y(28)^(-params(3));
rhs = y(27)*(1+params(25));
residual(8) = lhs - rhs;
lhs = y(29)^params(5);
rhs = y(27)*y(51)/params(4);
residual(9) = lhs - rhs;
lhs = y(27);
rhs = params(2)*y(79)*y(48)/y(86);
residual(10) = lhs - rhs;
lhs = y(27)*(1+(1-params(1))*params(20)*((1-params(1))*y(31)-params(23)));
rhs = T(4)*y(49);
residual(11) = lhs - rhs;
lhs = y(27);
rhs = params(2)*y(79)*y(59)/y(86);
residual(12) = lhs - rhs;
lhs = y(27)*(1+(1-params(1))*params(19)*((1-params(1))*y(33)-params(22)));
rhs = T(4)*y(20);
residual(13) = lhs - rhs;
lhs = y(34);
rhs = y(30)+y(57)*y(31);
residual(14) = lhs - rhs;
residual(15) = y(35);
residual(16) = y(36);
lhs = y(37);
rhs = y(28)^(1-params(3))/(1-params(3))-params(4)*y(29)^(1+params(5))/(1+params(5))+params(2)*y(80);
residual(17) = lhs - rhs;
lhs = y(39)^(-params(3));
rhs = y(38)*(1+y(45)+y(46)+T(5));
residual(18) = lhs - rhs;
lhs = y(40)^params(5);
rhs = y(51)*y(38)/params(4);
residual(19) = lhs - rhs;
lhs = y(38)*T(10);
rhs = params(2)*y(81)*(1-params(11))/y(86);
residual(20) = lhs - rhs;
lhs = y(38)*T(12);
rhs = y(88)*params(2)*y(81)*(1-params(11))/y(57);
residual(21) = lhs - rhs;
lhs = y(38)*T(14);
rhs = params(2)*y(81)/y(86);
residual(22) = lhs - rhs;
lhs = y(39)*(1+y(45)+T(5))+y(41)-(1-params(11))*y(10)/y(55)+y(57)*(y(42)-(1-params(11))*y(11)/y(14))+y(43)-y(12)/y(55);
rhs = y(40)*y(51)-y(62)-y(57)*params(21)/2*T(15);
residual(23) = lhs - rhs;
lhs = y(44);
rhs = T(17)^(params(12)/(params(12)-1));
residual(24) = lhs - rhs;
lhs = y(45);
rhs = y(39)*y(17)*params(9)/y(44)+y(44)*params(10)/y(39)-2*(params(9)*params(10))^0.5;
residual(25) = lhs - rhs;
lhs = y(46);
rhs = y(39)*y(17)*params(9)/y(44)-y(44)*params(10)/y(39);
residual(26) = lhs - rhs;
lhs = y(47);
rhs = y(39)^(1-params(3))/(1-params(3))-params(4)*y(40)^(1+params(5))/(1+params(5))+params(2)*y(82);
residual(27) = lhs - rhs;
lhs = y(48);
rhs = T(18)/T(19);
residual(28) = lhs - rhs;
lhs = y(49);
rhs = T(18)/T(4);
residual(29) = lhs - rhs;
lhs = y(27);
rhs = y(27)*y(52)*T(21)+T(22)*T(23);
residual(30) = lhs - rhs;
lhs = y(23);
rhs = (1-params(14))*y(6)+y(24)*T(20);
residual(31) = lhs - rhs;
lhs = y(25);
rhs = y(16)*T(24)*T(25);
residual(32) = lhs - rhs;
lhs = y(50);
rhs = y(25)*params(13)*y(53)/y(6);
residual(33) = lhs - rhs;
lhs = y(51);
rhs = y(25)*(1-params(13))*y(53)/y(22);
residual(34) = lhs - rhs;
lhs = params(16)/params(15)*(y(53)/y(56)-(params(16)-1)/params(16));
rhs = y(54)*(y(54)-params(38))-T(26)/(y(25)*y(56));
residual(35) = lhs - rhs;
lhs = y(54);
rhs = y(55)*y(56)/y(13);
residual(36) = lhs - rhs;
lhs = T(1)*y(25)*y(56);
rhs = T(15)*params(1)*y(57)*params(21)/2+(1-params(1))*y(57)*params(20)/2*T(28)+(1-params(1))*y(57)*params(19)/2*T(27)+params(1)*params(11)*(y(10)/y(55)+y(57)*y(11)/y(14))+params(1)*y(57)*(y(42)-y(11))+(1-params(1))*y(57)*(y(33)-y(5)*y(9))+y(56)*y(18)+y(24)+(1-params(1))*y(28)+y(39)*params(1)*(1+y(45));
residual(37) = lhs - rhs;
lhs = 1;
rhs = params(7)*y(56)^(1-params(6))+(1-params(7))*y(57)^(1-params(6));
residual(38) = lhs - rhs;
lhs = y(58);
rhs = y(55)*y(57)/y(14);
residual(39) = lhs - rhs;
lhs = log(y(19));
rhs = (1-params(44))*log(params(49))+params(44)*log(y(4))+x(it_, 4);
residual(40) = lhs - rhs;
lhs = log(y(20));
rhs = (1-params(45))*log(params(50))+params(45)*log(y(5))+x(it_, 5);
residual(41) = lhs - rhs;
lhs = y(59)/params(37);
rhs = T(35);
residual(42) = lhs - rhs;
lhs = y(32);
rhs = params(29)/(1-params(1));
residual(43) = lhs - rhs;
lhs = log(y(18));
rhs = (1-params(43))*log(params(48))+params(43)*log(y(3))+x(it_, 3);
residual(44) = lhs - rhs;
lhs = y(60);
rhs = y(28)*(1-params(1))*params(25)+y(39)*y(43)*params(1)*params(25)/y(44);
residual(45) = lhs - rhs;
lhs = y(61);
rhs = T(36);
residual(46) = lhs - rhs;
lhs = y(62);
rhs = T(36);
residual(47) = lhs - rhs;
lhs = y(63);
rhs = log(y(25)*y(56));
residual(48) = lhs - rhs;
lhs = y(64);
rhs = log(y(21));
residual(49) = lhs - rhs;
lhs = y(65);
rhs = log(y(28));
residual(50) = lhs - rhs;
lhs = y(66);
rhs = log(y(39));
residual(51) = lhs - rhs;
lhs = y(67);
rhs = log(y(59));
residual(52) = lhs - rhs;
lhs = y(68);
rhs = log(y(48));
residual(53) = lhs - rhs;
lhs = y(69);
rhs = log(y(51));
residual(54) = lhs - rhs;
lhs = y(70);
rhs = log(y(54));
residual(55) = lhs - rhs;
lhs = y(71);
rhs = log(y(55));
residual(56) = lhs - rhs;
lhs = y(72);
rhs = log(y(57)/y(56));
residual(57) = lhs - rhs;
lhs = y(73);
rhs = log(y(30));
residual(58) = lhs - rhs;
lhs = y(74);
rhs = log(y(41));
residual(59) = lhs - rhs;
lhs = y(75);
rhs = log(y(43));
residual(60) = lhs - rhs;
lhs = y(76);
rhs = log(y(42));
residual(61) = lhs - rhs;

end

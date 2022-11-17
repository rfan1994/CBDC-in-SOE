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
residual = zeros(57, 1);
lhs = log(y(13));
rhs = (1-params(41))*log(params(46))+params(41)*log(y(1))-x(it_, 1);
residual(1) = lhs - rhs;
lhs = log(y(14));
rhs = (1-params(42))*log(params(47))+params(42)*log(y(2))-x(it_, 2);
residual(2) = lhs - rhs;
lhs = y(18);
rhs = (1-params(1))*y(25)+params(1)*y(35);
residual(3) = lhs - rhs;
lhs = y(19);
rhs = (1-params(1))*y(26)+params(1)*y(36);
residual(4) = lhs - rhs;
lhs = y(20);
rhs = (1-params(1))*y(27);
residual(5) = lhs - rhs;
lhs = y(22);
rhs = T(4)*y(16)+y(22)*T(2)+y(15)+params(1)*params(11)*y(9)/y(49)+T(1)*(y(21)+(1-params(1))*y(25)+y(35)*params(1)*(1+y(40)));
residual(6) = lhs - rhs;
lhs = y(23);
rhs = (1-params(1))*y(33)+params(1)*y(42);
residual(7) = lhs - rhs;
lhs = y(25)^(-params(3));
rhs = y(24)*(1+params(25));
residual(8) = lhs - rhs;
lhs = y(26)^params(5);
rhs = y(24)*y(45)/params(4);
residual(9) = lhs - rhs;
lhs = y(24);
rhs = params(2)*y(72)*y(43)/y(79);
residual(10) = lhs - rhs;
lhs = y(24);
rhs = params(2)*y(72)*y(53)/y(79);
residual(11) = lhs - rhs;
lhs = y(24)*(1+(1-params(1))*params(19)*((1-params(1))*y(29)-params(22)));
rhs = params(2)*y(72)*y(81)/y(51)*y(17);
residual(12) = lhs - rhs;
lhs = y(30);
rhs = y(27);
residual(13) = lhs - rhs;
residual(14) = y(31);
residual(15) = y(32);
lhs = y(33);
rhs = y(25)^(1-params(3))/(1-params(3))-params(4)*y(26)^(1+params(5))/(1+params(5))+params(2)*y(73);
residual(16) = lhs - rhs;
lhs = y(35)^(-params(3));
rhs = y(34)*(1+y(40)+y(41));
residual(17) = lhs - rhs;
lhs = y(36)^params(5);
rhs = y(45)*y(34)/params(4);
residual(18) = lhs - rhs;
lhs = y(34)*T(15);
rhs = params(2)*y(74)*(1-params(11))/y(79);
residual(19) = lhs - rhs;
residual(20) = y(38);
lhs = y(39);
rhs = y(37);
residual(21) = lhs - rhs;
lhs = y(40);
rhs = y(35)*y(14)*params(9)/y(39)+y(39)*params(10)/y(35)-2*(params(9)*params(10))^0.5;
residual(22) = lhs - rhs;
lhs = y(41);
rhs = y(35)*y(14)*params(9)/y(39)-y(39)*params(10)/y(35);
residual(23) = lhs - rhs;
lhs = y(37)-y(9)*(1-params(11))/y(49)+y(35)*(1+y(40));
rhs = y(36)*y(45)-y(56);
residual(24) = lhs - rhs;
lhs = y(42);
rhs = y(35)^(1-params(3))/(1-params(3))-params(4)*y(36)^(1+params(5))/(1+params(5))+params(2)*y(75);
residual(25) = lhs - rhs;
lhs = y(43);
rhs = (params(2)*y(72)*(y(76)+(1-params(14))*y(77))-y(24)*(y(46)-1))/T(6);
residual(26) = lhs - rhs;
lhs = y(24);
rhs = y(24)*y(46)*T(8)+T(9)*T(10);
residual(27) = lhs - rhs;
lhs = y(20);
rhs = (1-params(14))*y(5)+y(21)*T(7);
residual(28) = lhs - rhs;
lhs = y(22);
rhs = y(13)*T(11)*T(12);
residual(29) = lhs - rhs;
lhs = y(44);
rhs = y(22)*params(13)*y(47)/y(5);
residual(30) = lhs - rhs;
lhs = y(45);
rhs = y(22)*(1-params(13))*y(47)/y(19);
residual(31) = lhs - rhs;
lhs = params(16)/params(15)*(y(47)/y(50)-(params(16)-1)/params(16));
rhs = y(48)*(y(48)-params(38))-T(13)/(y(22)*y(50));
residual(32) = lhs - rhs;
lhs = y(48);
rhs = y(49)*y(50)/y(10);
residual(33) = lhs - rhs;
lhs = y(22)*y(50);
rhs = T(2)+y(18)+y(21)+y(50)*y(15)+(1-params(1))*y(51)*T(14);
residual(34) = lhs - rhs;
lhs = 1;
rhs = params(7)*y(50)^(1-params(6))+(1-params(7))*y(51)^(1-params(6));
residual(35) = lhs - rhs;
lhs = y(52);
rhs = y(49)*y(51)/y(11);
residual(36) = lhs - rhs;
lhs = log(y(16));
rhs = (1-params(44))*log(params(49))+params(44)*log(y(3))+x(it_, 4);
residual(37) = lhs - rhs;
lhs = log(y(17));
rhs = (1-params(45))*log(params(50))+params(45)*log(y(4))+x(it_, 5);
residual(38) = lhs - rhs;
lhs = y(53);
rhs = params(37)*exp(x(it_, 6));
residual(39) = lhs - rhs;
lhs = y(28);
rhs = params(29)/(1-params(1));
residual(40) = lhs - rhs;
lhs = y(15);
rhs = params(48)*exp(x(it_, 3));
residual(41) = lhs - rhs;
lhs = y(54);
rhs = y(25)*(1-params(1))*params(25);
residual(42) = lhs - rhs;
lhs = y(55);
rhs = T(16);
residual(43) = lhs - rhs;
lhs = y(56);
rhs = T(16);
residual(44) = lhs - rhs;
lhs = y(57);
rhs = log(y(22)*y(50));
residual(45) = lhs - rhs;
lhs = y(58);
rhs = log(y(18));
residual(46) = lhs - rhs;
lhs = y(59);
rhs = log(y(25));
residual(47) = lhs - rhs;
lhs = y(60);
rhs = log(y(35));
residual(48) = lhs - rhs;
lhs = y(61);
rhs = log(y(53));
residual(49) = lhs - rhs;
lhs = y(62);
rhs = log(y(43));
residual(50) = lhs - rhs;
lhs = y(63);
rhs = log(y(45));
residual(51) = lhs - rhs;
lhs = y(64);
rhs = log(y(48));
residual(52) = lhs - rhs;
lhs = y(65);
rhs = log(y(49));
residual(53) = lhs - rhs;
lhs = y(66);
rhs = log(T(3));
residual(54) = lhs - rhs;
lhs = y(67);
rhs = log(y(27));
residual(55) = lhs - rhs;
lhs = y(68);
rhs = log(y(37));
residual(56) = lhs - rhs;
residual(57) = y(69);

end

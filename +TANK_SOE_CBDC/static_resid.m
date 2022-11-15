function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = TANK_SOE_CBDC.static_resid_tt(T, y, x, params);
end
residual = zeros(57, 1);
lhs = log(y(1));
rhs = (1-params(41))*log(params(46))+log(y(1))*params(41)-x(1);
residual(1) = lhs - rhs;
lhs = log(y(2));
rhs = (1-params(42))*log(params(47))+log(y(2))*params(42)-x(2);
residual(2) = lhs - rhs;
lhs = y(6);
rhs = (1-params(1))*y(13)+params(1)*y(23);
residual(3) = lhs - rhs;
lhs = y(7);
rhs = (1-params(1))*y(14)+params(1)*y(24);
residual(4) = lhs - rhs;
lhs = y(8);
rhs = (1-params(1))*y(15);
residual(5) = lhs - rhs;
lhs = y(10);
rhs = T(2)*y(4)+y(10)*T(3)+y(3)+params(11)*y(25)/y(37)+T(4)*(y(9)+(1-params(1))*y(13)+y(23)*params(1)*(1+y(28)));
residual(6) = lhs - rhs;
lhs = y(11);
rhs = (1-params(1))*y(21)+params(1)*y(30);
residual(7) = lhs - rhs;
lhs = y(13)^(-params(3));
rhs = y(12)*(1+params(25));
residual(8) = lhs - rhs;
lhs = y(14)^params(5);
rhs = y(12)*y(33)/params(4);
residual(9) = lhs - rhs;
lhs = y(12);
rhs = y(12)*params(2)*y(31)/y(37);
residual(10) = lhs - rhs;
lhs = y(12);
rhs = y(12)*params(2)*y(41)/y(37);
residual(11) = lhs - rhs;
lhs = y(12)*(1+(1-params(1))*params(19)*((1-params(1))*y(17)-params(22)));
rhs = y(12)*params(2)*y(5);
residual(12) = lhs - rhs;
lhs = y(18);
rhs = y(15);
residual(13) = lhs - rhs;
residual(14) = y(19);
residual(15) = y(20);
lhs = y(21);
rhs = y(13)^(1-params(3))/(1-params(3))-params(4)*y(14)^(1+params(5))/(1+params(5))+y(21)*params(2);
residual(16) = lhs - rhs;
lhs = y(23)^(-params(3));
rhs = y(22)*(1+y(28)+y(29)+T(5));
residual(17) = lhs - rhs;
lhs = y(24)^params(5);
rhs = y(33)*y(22)/params(4);
residual(18) = lhs - rhs;
lhs = y(22)*T(10);
rhs = params(2)*y(22)*(1-params(11))/y(37);
residual(19) = lhs - rhs;
lhs = y(22)*T(12);
rhs = params(2)*y(22)/y(37);
residual(20) = lhs - rhs;
lhs = y(27);
rhs = T(14)^(params(12)/(params(12)-1));
residual(21) = lhs - rhs;
lhs = y(28);
rhs = y(23)*y(2)*params(9)/y(27)+y(27)*params(10)/y(23)-2*(params(9)*params(10))^0.5;
residual(22) = lhs - rhs;
lhs = y(29);
rhs = y(23)*y(2)*params(9)/y(27)-y(27)*params(10)/y(23);
residual(23) = lhs - rhs;
lhs = y(23)*(1+y(28)+T(5))+y(25)-y(25)*(1-params(11))/y(37)+y(26)-y(26)/y(37);
rhs = y(24)*y(33)-y(44);
residual(24) = lhs - rhs;
lhs = y(30);
rhs = y(23)^(1-params(3))/(1-params(3))-params(4)*y(24)^(1+params(5))/(1+params(5))+y(30)*params(2);
residual(25) = lhs - rhs;
lhs = y(31);
rhs = (y(12)*params(2)*(y(32)+(1-params(14))*y(34))-y(12)*(y(34)-1))/T(15);
residual(26) = lhs - rhs;
lhs = y(12);
rhs = y(12)*y(34);
residual(27) = lhs - rhs;
lhs = y(8);
rhs = y(9)+y(8)*(1-params(14));
residual(28) = lhs - rhs;
lhs = y(10);
rhs = y(1)*T(16)*T(17);
residual(29) = lhs - rhs;
lhs = y(32);
rhs = y(10)*params(13)*y(35)/y(8);
residual(30) = lhs - rhs;
lhs = y(33);
rhs = y(10)*(1-params(13))*y(35)/y(7);
residual(31) = lhs - rhs;
lhs = params(16)/params(15)*(y(35)/y(38)-(params(16)-1)/params(16));
rhs = y(36)*(y(36)-params(38))-y(10)*y(38)*y(36)*(y(36)-params(38))*params(2)/(y(10)*y(38));
residual(32) = lhs - rhs;
lhs = y(36);
rhs = y(37);
residual(33) = lhs - rhs;
lhs = y(10)*y(38);
rhs = T(3)+y(6)+y(9)+y(38)*y(3)+(1-params(1))*y(39)*T(18);
residual(34) = lhs - rhs;
lhs = 1;
rhs = params(7)*y(38)^(1-params(6))+(1-params(7))*y(39)^(1-params(6));
residual(35) = lhs - rhs;
lhs = y(40);
rhs = y(37);
residual(36) = lhs - rhs;
lhs = log(y(4));
rhs = (1-params(44))*log(params(49))+log(y(4))*params(44)+x(4);
residual(37) = lhs - rhs;
lhs = log(y(5));
rhs = (1-params(45))*log(params(50))+log(y(5))*params(45)+x(5);
residual(38) = lhs - rhs;
lhs = y(41);
rhs = params(37)*exp(x(6));
residual(39) = lhs - rhs;
lhs = y(16);
rhs = params(29)/(1-params(1));
residual(40) = lhs - rhs;
lhs = y(3);
rhs = params(48)*exp(x(3));
residual(41) = lhs - rhs;
lhs = y(42);
rhs = y(13)*(1-params(1))*params(25)+y(23)*y(26)*params(1)*params(25)/y(27);
residual(42) = lhs - rhs;
lhs = y(43);
rhs = T(19);
residual(43) = lhs - rhs;
lhs = y(44);
rhs = T(19);
residual(44) = lhs - rhs;
lhs = y(45);
rhs = log(y(10)*y(38));
residual(45) = lhs - rhs;
lhs = y(46);
rhs = log(y(6));
residual(46) = lhs - rhs;
lhs = y(47);
rhs = log(y(13));
residual(47) = lhs - rhs;
lhs = y(48);
rhs = log(y(23));
residual(48) = lhs - rhs;
lhs = y(49);
rhs = log(y(41));
residual(49) = lhs - rhs;
lhs = y(50);
rhs = log(y(31));
residual(50) = lhs - rhs;
lhs = y(51);
rhs = log(y(33));
residual(51) = lhs - rhs;
lhs = y(52);
rhs = log(y(36));
residual(52) = lhs - rhs;
lhs = y(53);
rhs = log(y(37));
residual(53) = lhs - rhs;
lhs = y(54);
rhs = log(T(1));
residual(54) = lhs - rhs;
lhs = y(55);
rhs = log(y(15));
residual(55) = lhs - rhs;
lhs = y(56);
rhs = log(y(25));
residual(56) = lhs - rhs;
lhs = y(57);
rhs = log(y(26));
residual(57) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end

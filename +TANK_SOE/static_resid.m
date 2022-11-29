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
    T = TANK_SOE.static_resid_tt(T, y, x, params);
end
residual = zeros(61, 1);
lhs = log(y(1));
rhs = (1-params(41))*log(params(46))+log(y(1))*params(41)-x(1);
residual(1) = lhs - rhs;
lhs = log(y(2));
rhs = (1-params(42))*log(params(47))+log(y(2))*params(42)-x(2);
residual(2) = lhs - rhs;
lhs = y(6);
rhs = (1-params(1))*y(13)+params(1)*y(24);
residual(3) = lhs - rhs;
lhs = y(7);
rhs = (1-params(1))*y(14)+params(1)*y(25);
residual(4) = lhs - rhs;
lhs = y(8);
rhs = (1-params(1))*y(15);
residual(5) = lhs - rhs;
lhs = y(10)*T(1);
rhs = T(2)*y(4)+y(3)+T(3)*(y(9)+(1-params(1))*y(13)+y(24)*params(1)*(1+y(30)));
residual(6) = lhs - rhs;
lhs = y(11);
rhs = (1-params(1))*y(22)+params(1)*y(32);
residual(7) = lhs - rhs;
lhs = y(13)^(-params(3));
rhs = y(12)*(1+params(25));
residual(8) = lhs - rhs;
lhs = y(14)^params(5);
rhs = y(12)*y(36)/params(4);
residual(9) = lhs - rhs;
lhs = y(12);
rhs = y(12)*params(2)*y(33)/y(40);
residual(10) = lhs - rhs;
residual(11) = y(16);
lhs = y(12);
rhs = y(12)*params(2)*y(44)/y(40);
residual(12) = lhs - rhs;
lhs = y(12)*(1+(1-params(1))*params(19)*((1-params(1))*y(18)-params(22)));
rhs = y(12)*params(2)*y(5);
residual(13) = lhs - rhs;
lhs = y(19);
rhs = y(15);
residual(14) = lhs - rhs;
residual(15) = y(20);
residual(16) = y(21);
lhs = y(22);
rhs = y(13)^(1-params(3))/(1-params(3))-params(4)*y(14)^(1+params(5))/(1+params(5))+y(22)*params(2);
residual(17) = lhs - rhs;
lhs = y(24)^(-params(3));
rhs = y(23)*(1+y(30)+y(31));
residual(18) = lhs - rhs;
lhs = y(25)^params(5);
rhs = y(36)*y(23)/params(4);
residual(19) = lhs - rhs;
lhs = y(23)*T(5);
rhs = params(2)*y(23)*(1-params(11))/y(40);
residual(20) = lhs - rhs;
residual(21) = y(27);
residual(22) = y(28);
lhs = y(29);
rhs = (T(6))^(params(12)/(params(12)-1));
residual(23) = lhs - rhs;
lhs = y(30);
rhs = y(24)*y(2)*params(9)/y(29)+y(29)*params(10)/y(24)-2*(params(9)*params(10))^0.5;
residual(24) = lhs - rhs;
lhs = y(31);
rhs = y(24)*y(2)*params(9)/y(29)-y(29)*params(10)/y(24);
residual(25) = lhs - rhs;
lhs = y(26)-y(26)*(1-params(11))/y(40)+y(24)*(1+y(30));
rhs = y(25)*y(36)-y(47);
residual(26) = lhs - rhs;
lhs = y(32);
rhs = y(24)^(1-params(3))/(1-params(3))-params(4)*y(25)^(1+params(5))/(1+params(5))+y(32)*params(2);
residual(27) = lhs - rhs;
lhs = y(33);
rhs = (y(12)*params(2)*(y(35)+(1-params(14))*y(37))-y(12)*(y(37)-1))/T(7);
residual(28) = lhs - rhs;
lhs = y(34);
rhs = (y(12)*params(2)*(y(35)+(1-params(14))*y(37))-y(12)*(y(37)-1))/(y(12)*params(2));
residual(29) = lhs - rhs;
lhs = y(12);
rhs = y(12)*y(37);
residual(30) = lhs - rhs;
lhs = y(8);
rhs = y(9)+y(8)*(1-params(14));
residual(31) = lhs - rhs;
lhs = y(10);
rhs = y(1)*T(8)*T(9);
residual(32) = lhs - rhs;
lhs = y(35);
rhs = y(10)*params(13)*y(38)/y(8);
residual(33) = lhs - rhs;
lhs = y(36);
rhs = y(10)*(1-params(13))*y(38)/y(7);
residual(34) = lhs - rhs;
lhs = params(16)/params(15)*(y(38)/y(41)-(params(16)-1)/params(16));
rhs = y(39)*(y(39)-params(38))-y(10)*y(41)*y(39)*(y(39)-params(38))*params(2)/(y(10)*y(41));
residual(35) = lhs - rhs;
lhs = y(39);
rhs = y(40);
residual(36) = lhs - rhs;
lhs = T(1)*y(10)*y(41);
rhs = params(19)*(1-params(1))*y(42)/2*T(10)+y(26)*params(1)*params(11)/y(40)+(1-params(1))*y(42)*(y(18)-y(18)*y(5))+y(9)+(1-params(1))*y(13)+y(24)*params(1)*(1+y(30))+y(41)*y(3);
residual(37) = lhs - rhs;
lhs = 1;
rhs = params(7)*y(41)^(1-params(6))+(1-params(7))*y(42)^(1-params(6));
residual(38) = lhs - rhs;
lhs = y(43);
rhs = y(40);
residual(39) = lhs - rhs;
lhs = log(y(4));
rhs = (1-params(44))*log(params(49))+log(y(4))*params(44)+x(4);
residual(40) = lhs - rhs;
lhs = log(y(5));
rhs = (1-params(45))*log(params(50))+log(y(5))*params(45)+x(5);
residual(41) = lhs - rhs;
lhs = y(44)/params(37);
rhs = T(11)*T(16)*exp(x(6));
residual(42) = lhs - rhs;
lhs = y(17);
rhs = params(29)/(1-params(1));
residual(43) = lhs - rhs;
lhs = log(y(3));
rhs = (1-params(43))*log(params(48))+log(y(3))*params(43)+x(3);
residual(44) = lhs - rhs;
lhs = y(45);
rhs = y(13)*(1-params(1))*params(25);
residual(45) = lhs - rhs;
lhs = y(46);
rhs = T(17);
residual(46) = lhs - rhs;
lhs = y(47);
rhs = T(17);
residual(47) = lhs - rhs;
lhs = y(48);
rhs = log(y(10)*y(41));
residual(48) = lhs - rhs;
lhs = y(49);
rhs = log(y(6));
residual(49) = lhs - rhs;
lhs = y(50);
rhs = log(y(13));
residual(50) = lhs - rhs;
lhs = y(51);
rhs = log(y(24));
residual(51) = lhs - rhs;
lhs = y(52);
rhs = log(y(44));
residual(52) = lhs - rhs;
lhs = y(53);
rhs = log(y(33));
residual(53) = lhs - rhs;
lhs = y(54);
rhs = log(y(36));
residual(54) = lhs - rhs;
lhs = y(55);
rhs = log(y(39));
residual(55) = lhs - rhs;
lhs = y(56);
rhs = log(y(40));
residual(56) = lhs - rhs;
lhs = y(57);
rhs = log(y(42)/y(41));
residual(57) = lhs - rhs;
lhs = y(58);
rhs = log(y(15));
residual(58) = lhs - rhs;
lhs = y(59);
rhs = log(y(26));
residual(59) = lhs - rhs;
residual(60) = y(60);
residual(61) = y(61);
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end

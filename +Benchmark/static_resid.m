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
    T = Benchmark.static_resid_tt(T, y, x, params);
end
residual = zeros(47, 1);
lhs = log(y(1));
rhs = (1-params(35))*log(params(40))+log(y(1))*params(35)-x(1);
residual(1) = lhs - rhs;
lhs = y(5);
rhs = (1-params(1))*y(12)+params(1)*y(19);
residual(2) = lhs - rhs;
lhs = y(6);
rhs = (1-params(1))*y(13)+params(1)*y(20);
residual(3) = lhs - rhs;
lhs = y(7);
rhs = (1-params(1))*y(14);
residual(4) = lhs - rhs;
lhs = y(9);
rhs = T(1)*(y(5)+y(8))+y(2)+y(9)*T(2)+T(4)*y(3);
residual(5) = lhs - rhs;
lhs = y(10);
rhs = (1-params(1))*y(17)+params(1)*y(21);
residual(6) = lhs - rhs;
lhs = y(12)^(-params(3));
rhs = y(11);
residual(7) = lhs - rhs;
lhs = y(13)^params(5);
rhs = y(11)*y(24)/params(4);
residual(8) = lhs - rhs;
lhs = y(11);
rhs = y(11)*params(2)*y(22)/y(28);
residual(9) = lhs - rhs;
lhs = y(11);
rhs = y(11)*params(2)*y(32)/y(28);
residual(10) = lhs - rhs;
lhs = y(11)*(1+(1-params(1))*params(17)*((1-params(1))*y(16)-params(18)));
rhs = y(11)*params(2)*y(4);
residual(11) = lhs - rhs;
lhs = y(17);
rhs = y(12)^(1-params(3))/(1-params(3))-params(4)*y(13)^(1+params(5))/(1+params(5))+y(17)*params(2);
residual(12) = lhs - rhs;
lhs = y(19)^(-params(3));
rhs = y(18);
residual(13) = lhs - rhs;
lhs = y(20)^params(5);
rhs = y(24)*y(18)/params(4);
residual(14) = lhs - rhs;
lhs = y(19);
rhs = y(20)*y(24)-y(34);
residual(15) = lhs - rhs;
lhs = y(21);
rhs = y(19)^(1-params(3))/(1-params(3))-params(4)*y(20)^(1+params(5))/(1+params(5))+y(21)*params(2);
residual(16) = lhs - rhs;
lhs = y(22);
rhs = (y(11)*params(2)*(y(23)+(1-params(12))*y(25))-y(11)*(y(25)-1))/T(5);
residual(17) = lhs - rhs;
lhs = y(11);
rhs = y(11)*y(25);
residual(18) = lhs - rhs;
lhs = y(7);
rhs = y(8)+y(7)*(1-params(12));
residual(19) = lhs - rhs;
lhs = y(9);
rhs = y(1)*T(6)*T(7);
residual(20) = lhs - rhs;
lhs = y(23);
rhs = y(9)*params(11)*y(26)/y(7);
residual(21) = lhs - rhs;
lhs = y(24);
rhs = y(9)*(1-params(11))*y(26)/y(6);
residual(22) = lhs - rhs;
lhs = params(14)/params(13)*(y(26)/y(29)-(params(14)-1)/params(14));
rhs = y(27)*(y(27)-params(31))-y(9)*y(29)*y(27)*(y(27)-params(31))*params(2)/(y(9)*y(29));
residual(23) = lhs - rhs;
lhs = y(27);
rhs = y(28);
residual(24) = lhs - rhs;
lhs = y(9)*y(29);
rhs = T(2)+y(5)+y(8)+y(29)*y(2)+(1-params(1))*y(30)*T(8);
residual(25) = lhs - rhs;
lhs = 1;
rhs = params(7)*y(29)^(1-params(6))+(1-params(7))*y(30)^(1-params(6));
residual(26) = lhs - rhs;
lhs = y(31);
rhs = y(28);
residual(27) = lhs - rhs;
lhs = log(y(3));
rhs = (1-params(38))*log(params(43))+log(y(3))*params(38)+x(3);
residual(28) = lhs - rhs;
lhs = log(y(4));
rhs = (1-params(39))*log(params(44))+log(y(4))*params(39)+x(4);
residual(29) = lhs - rhs;
lhs = y(32)/params(30);
rhs = T(9)*T(14)*exp(x(5));
residual(30) = lhs - rhs;
lhs = y(15);
rhs = params(22)/(1-params(1));
residual(31) = lhs - rhs;
lhs = y(2);
rhs = params(42)*exp(x(2));
residual(32) = lhs - rhs;
lhs = y(33);
rhs = y(2)+y(15)*(1-params(1))*y(32)/y(28)-(1-params(1))*y(15);
residual(33) = lhs - rhs;
lhs = y(34);
rhs = y(2)+y(15)*(1-params(1))*y(32)/y(28)-(1-params(1))*y(15);
residual(34) = lhs - rhs;
lhs = y(35);
rhs = log(y(9)*y(29));
residual(35) = lhs - rhs;
lhs = y(36);
rhs = log(y(5));
residual(36) = lhs - rhs;
lhs = y(37);
rhs = log(y(12));
residual(37) = lhs - rhs;
lhs = y(38);
rhs = log(y(19));
residual(38) = lhs - rhs;
lhs = y(39);
rhs = log(y(32));
residual(39) = lhs - rhs;
lhs = y(40);
rhs = log(y(22));
residual(40) = lhs - rhs;
lhs = y(41);
rhs = log(y(27));
residual(41) = lhs - rhs;
lhs = y(42);
rhs = log(y(29));
residual(42) = lhs - rhs;
lhs = y(43);
rhs = log(y(30));
residual(43) = lhs - rhs;
lhs = y(44);
rhs = log(T(3));
residual(44) = lhs - rhs;
lhs = y(45);
rhs = log(y(28));
residual(45) = lhs - rhs;
lhs = y(46);
rhs = log(y(24));
residual(46) = lhs - rhs;
lhs = y(47);
rhs = log(y(14));
residual(47) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end

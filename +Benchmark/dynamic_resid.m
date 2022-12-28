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
    T = Benchmark.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(46, 1);
lhs = log(y(11));
rhs = (1-params(41))*log(params(46))+params(41)*log(y(1))-x(it_, 1);
residual(1) = lhs - rhs;
lhs = y(15);
rhs = (1-params(1))*y(22)+params(1)*y(29);
residual(2) = lhs - rhs;
lhs = y(16);
rhs = (1-params(1))*y(23)+params(1)*y(30);
residual(3) = lhs - rhs;
lhs = y(17);
rhs = (1-params(1))*y(24);
residual(4) = lhs - rhs;
lhs = y(19)*T(1);
rhs = T(2)*(y(15)+y(18))+y(12)+T(4)*y(13);
residual(5) = lhs - rhs;
lhs = y(20);
rhs = (1-params(1))*y(27)+params(1)*y(31);
residual(6) = lhs - rhs;
lhs = y(22)^(-params(3));
rhs = y(21);
residual(7) = lhs - rhs;
lhs = y(23)^params(5);
rhs = y(21)*y(34)/params(4);
residual(8) = lhs - rhs;
lhs = y(21);
rhs = params(2)*y(59)*y(32)/y(65);
residual(9) = lhs - rhs;
lhs = y(21);
rhs = params(2)*y(59)*y(42)/y(65);
residual(10) = lhs - rhs;
lhs = y(21)*(1+(1-params(1))*params(19)*((1-params(1))*y(26)-params(22)));
rhs = params(2)*y(59)*y(67)/y(40)*y(14);
residual(11) = lhs - rhs;
lhs = y(27);
rhs = y(22)^(1-params(3))/(1-params(3))-params(4)*y(23)^(1+params(5))/(1+params(5))+params(2)*y(60);
residual(12) = lhs - rhs;
lhs = y(29)^(-params(3));
rhs = y(28);
residual(13) = lhs - rhs;
lhs = y(30)^params(5);
rhs = y(34)*y(28)/params(4);
residual(14) = lhs - rhs;
lhs = y(29);
rhs = y(30)*y(34)-y(44);
residual(15) = lhs - rhs;
lhs = y(31);
rhs = y(29)^(1-params(3))/(1-params(3))-params(4)*y(30)^(1+params(5))/(1+params(5))+params(2)*y(61);
residual(16) = lhs - rhs;
lhs = y(32);
rhs = (params(2)*y(59)*(y(62)+(1-params(14))*y(63))-y(21)*(y(35)-1))/T(5);
residual(17) = lhs - rhs;
lhs = y(21);
rhs = y(21)*y(35)*T(7)+T(8)*T(9);
residual(18) = lhs - rhs;
lhs = y(17);
rhs = (1-params(14))*y(4)+y(18)*T(6);
residual(19) = lhs - rhs;
lhs = y(19);
rhs = y(11)*T(10)*T(11);
residual(20) = lhs - rhs;
lhs = y(33);
rhs = y(19)*params(13)*y(36)/y(4);
residual(21) = lhs - rhs;
lhs = y(34);
rhs = y(19)*(1-params(13))*y(36)/y(16);
residual(22) = lhs - rhs;
lhs = params(16)/params(15)*(y(36)/y(39)-(params(16)-1)/params(16));
rhs = y(37)*(y(37)-params(38))-T(12)/(y(19)*y(39));
residual(23) = lhs - rhs;
lhs = y(37);
rhs = y(39)/y(8)*y(38);
residual(24) = lhs - rhs;
lhs = T(1)*y(19)*y(39);
rhs = y(15)+y(18)+y(39)*y(12)+(1-params(1))*y(40)*T(13);
residual(25) = lhs - rhs;
lhs = 1;
rhs = params(7)*y(39)^(1-params(6))+(1-params(7))*y(40)^(1-params(6));
residual(26) = lhs - rhs;
lhs = y(41);
rhs = y(38)*y(40)/y(9);
residual(27) = lhs - rhs;
lhs = log(y(13));
rhs = (1-params(44))*log(params(49))+params(44)*log(y(2))+x(it_, 3);
residual(28) = lhs - rhs;
lhs = log(y(14));
rhs = (1-params(45))*log(params(50))+params(45)*log(y(3))+x(it_, 4);
residual(29) = lhs - rhs;
lhs = y(42)/params(37);
rhs = T(20);
residual(30) = lhs - rhs;
lhs = y(25);
rhs = params(29)/(1-params(1));
residual(31) = lhs - rhs;
lhs = y(12);
rhs = params(48)*exp(x(it_, 2));
residual(32) = lhs - rhs;
lhs = y(43);
rhs = y(12)+(1-params(1))*y(10)/y(38)*y(6)-(1-params(1))*y(25);
residual(33) = lhs - rhs;
lhs = y(44);
rhs = y(12)+(1-params(1))*y(10)/y(38)*y(6)-(1-params(1))*y(25);
residual(34) = lhs - rhs;
lhs = y(45);
rhs = log(y(19)*y(39));
residual(35) = lhs - rhs;
lhs = y(46);
rhs = log(y(22));
residual(36) = lhs - rhs;
lhs = y(47);
rhs = log(y(29));
residual(37) = lhs - rhs;
lhs = y(48);
rhs = log(y(17));
residual(38) = lhs - rhs;
lhs = y(49);
rhs = log(y(23));
residual(39) = lhs - rhs;
lhs = y(50);
rhs = log(y(30));
residual(40) = lhs - rhs;
lhs = y(51);
rhs = log(y(26));
residual(41) = lhs - rhs;
lhs = y(52);
rhs = log(y(42));
residual(42) = lhs - rhs;
lhs = y(53);
rhs = log(y(32));
residual(43) = lhs - rhs;
lhs = y(54);
rhs = log(y(34));
residual(44) = lhs - rhs;
lhs = y(55);
rhs = log(y(38));
residual(45) = lhs - rhs;
lhs = y(56);
rhs = log(T(3));
residual(46) = lhs - rhs;

end

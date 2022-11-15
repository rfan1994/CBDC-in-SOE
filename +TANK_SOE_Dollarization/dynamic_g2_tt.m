function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 94);

T = TANK_SOE_Dollarization.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(87) = getPowerDeriv(T(3),(-params(6)),2);
T(88) = getPowerDeriv(y(42)/y(39),T(7),2);
T(89) = getPowerDeriv(y(42)/(y(55)*y(40)),T(7),2);
T(90) = getPowerDeriv(T(14),params(12)/(params(12)-1),2);
T(91) = getPowerDeriv(y(55)*y(40),T(13),2);
T(92) = (-((-((-(y(37)*y(15)*params(9)))*(y(42)+y(42))))/(y(42)*y(42)*y(42)*y(42))));
T(93) = (-(T(17)*(T(40)*(-((-y(22))*(y(6)+y(6))))/(y(6)*y(6)*y(6)*y(6))+T(39)*2*T(39))));
T(94) = (-((1-params(1))*y(7)*(-((-y(13))*(y(53)+y(53))))/(y(53)*y(53)*y(53)*y(53))+params(1)*(-((-y(9))*(y(53)+y(53))))/(y(53)*y(53)*y(53)*y(53))));

end

function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 43);

T = TANK_SOE_CBDC.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(32) = (-(params(17)/2*(-y(23))/(y(7)*y(7))*2*(y(23)/y(7)-1)));
T(33) = (-(params(17)/2*2*(y(23)/y(7)-1)*1/y(7)));
T(34) = getPowerDeriv(y(24)*y(52)/params(39),params(35),1);
T(35) = getPowerDeriv(T(28),1-params(33),1);
T(36) = (-(params(1)*1/y(51)));
T(37) = getPowerDeriv(y(41)/y(39),T(8),1);
T(38) = getPowerDeriv(T(14),params(12)/(params(12)-1),1);
T(39) = params(25)/y(41);
T(40) = getPowerDeriv(y(41)/y(40),T(8),1);
T(41) = (-(params(25)*y(40)))/(y(41)*y(41));
T(42) = (-((1-params(1))*y(8)*(-y(14))/(y(51)*y(51))+params(1)*((-y(11))/(y(51)*y(51))+(-y(10))/(y(51)*y(51)))));
T(43) = getPowerDeriv(T(3),(-params(6)),1);

end

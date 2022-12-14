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

assert(length(T) >= 35);

T = TANK_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(28) = (-(params(17)/2*(-y(22))/(y(7)*y(7))*2*(y(22)/y(7)-1)));
T(29) = (-(params(17)/2*2*(y(22)/y(7)-1)*1/y(7)));
T(30) = getPowerDeriv(y(23)*y(54)/params(39),params(35),1);
T(31) = getPowerDeriv(T(20),1-params(33),1);
T(32) = 1/y(53);
T(33) = getPowerDeriv(y(42)/y(39),1/params(12),1);
T(34) = (-((1-params(1))*y(8)*(-y(13))/(y(53)*y(53))+params(1)*(-y(10))/(y(53)*y(53))));
T(35) = getPowerDeriv(y(54)/y(55),(-params(6)),1);

end

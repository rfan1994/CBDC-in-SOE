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

assert(length(T) >= 21);

T = TANK_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(17) = (-(params(17)/2*(-y(21))/(y(6)*y(6))*2*(y(21)/y(6)-1)));
T(18) = (-(params(17)/2*2*(y(21)/y(6)-1)*1/y(6)));
T(19) = getPowerDeriv(y(39)/y(37),1/params(12),1);
T(20) = (-((1-params(1))*y(7)*(-y(12))/(y(49)*y(49))+params(1)*(-y(9))/(y(49)*y(49))));
T(21) = getPowerDeriv(T(3),(-params(6)),1);

end

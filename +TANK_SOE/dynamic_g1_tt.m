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

assert(length(T) >= 30);

T = TANK_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(24) = (-(params(17)/2*(-y(22))/(y(7)*y(7))*2*(y(22)/y(7)-1)));
T(25) = (-(params(17)/2*2*(y(22)/y(7)-1)*1/y(7)));
T(26) = getPowerDeriv(y(23)*y(51)/params(39),params(35),1);
T(27) = getPowerDeriv(T(19),1-params(33),1);
T(28) = getPowerDeriv(y(40)/y(38),1/params(12),1);
T(29) = (-((1-params(1))*y(8)*(-y(13))/(y(50)*y(50))+params(1)*(-y(10))/(y(50)*y(50))));
T(30) = getPowerDeriv(T(3),(-params(6)),1);

end

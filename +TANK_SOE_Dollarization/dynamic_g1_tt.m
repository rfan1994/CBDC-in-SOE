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

assert(length(T) >= 45);

T = TANK_SOE_Dollarization.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(34) = (-(params(17)/2*(-y(23))/(y(7)*y(7))*2*(y(23)/y(7)-1)));
T(35) = (-(params(17)/2*2*(y(23)/y(7)-1)*1/y(7)));
T(36) = getPowerDeriv(y(24)*y(55)/params(39),params(35),1);
T(37) = getPowerDeriv(T(27),1-params(33),1);
T(38) = 1/y(54);
T(39) = getPowerDeriv(y(43)/y(40),T(6),1);
T(40) = getPowerDeriv(T(11),params(12)/(params(12)-1),1);
T(41) = getPowerDeriv(y(43)/(y(56)*y(41)),T(6),1);
T(42) = getPowerDeriv(y(56)*y(41),T(10),1);
T(43) = (-((1-params(1))*y(8)*(-y(14))/(y(54)*y(54))+params(1)*(-y(10))/(y(54)*y(54))));
T(44) = getPowerDeriv(T(3),(-params(6)),1);
T(45) = (-(params(2)*y(78)*y(87)))/(y(56)*y(56));

end

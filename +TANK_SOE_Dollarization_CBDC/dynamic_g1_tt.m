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

T = TANK_SOE_Dollarization_CBDC.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(31) = (-(params(17)/2*(-y(23))/(y(6)*y(6))*2*(y(23)/y(6)-1)));
T(32) = (-(params(17)/2*2*(y(23)/y(6)-1)*1/y(6)));
T(33) = (-(params(1)*1/y(54)));
T(34) = getPowerDeriv(y(43)/y(40),T(9),1);
T(35) = getPowerDeriv(T(18),params(12)/(params(12)-1),1);
T(36) = getPowerDeriv(y(43)/(y(56)*y(41)),T(9),1);
T(37) = getPowerDeriv(y(56)*y(41),T(17),1);
T(38) = params(25)/y(43);
T(39) = getPowerDeriv(y(43)/y(42),T(9),1);
T(40) = (-(params(25)*y(42)))/(y(43)*y(43));
T(41) = (y(45)+T(6))*(-y(38))/(y(43)*y(43))+T(7)*T(40);
T(42) = (-((1-params(1))*y(7)*(-y(14))/(y(54)*y(54))+params(1)*((-y(11))/(y(54)*y(54))+(-y(9))/(y(54)*y(54)))));
T(43) = getPowerDeriv(T(3),(-params(6)),1);

end

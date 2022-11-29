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

assert(length(T) >= 53);

T = TANK_SOE_Dollarization_CBDC.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(38) = (-(params(17)/2*(-y(24))/(y(7)*y(7))*2*(y(24)/y(7)-1)));
T(39) = (-(params(17)/2*2*(y(24)/y(7)-1)*1/y(7)));
T(40) = getPowerDeriv(y(25)*y(56)/params(39),params(35),1);
T(41) = getPowerDeriv(T(34),1-params(33),1);
T(42) = 1/y(55);
T(43) = getPowerDeriv(y(44)/y(41),T(9),1);
T(44) = getPowerDeriv(T(18),params(12)/(params(12)-1),1);
T(45) = getPowerDeriv(y(44)/(y(57)*y(42)),T(9),1);
T(46) = getPowerDeriv(y(57)*y(42),T(17),1);
T(47) = params(25)/y(44);
T(48) = getPowerDeriv(y(44)/y(43),T(9),1);
T(49) = (-(params(25)*y(43)))/(y(44)*y(44));
T(50) = (y(46)+T(6))*(-y(39))/(y(44)*y(44))+T(7)*T(49);
T(51) = (-((1-params(1))*y(8)*(-y(15))/(y(55)*y(55))+params(1)*((-y(10))/(y(55)*y(55))+(-y(12))/(y(55)*y(55)))));
T(52) = getPowerDeriv(T(3),(-params(6)),1);
T(53) = (-(params(2)*y(79)*y(88)))/(y(57)*y(57));

end

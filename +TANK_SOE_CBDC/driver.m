%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'TANK_SOE_CBDC';
M_.dynare_version = '5.1';
oo_.dynare_version = '5.1';
options_.dynare_version = '5.1';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(6,1);
M_.exo_names_tex = cell(6,1);
M_.exo_names_long = cell(6,1);
M_.exo_names(1) = {'eps_a'};
M_.exo_names_tex(1) = {'eps\_a'};
M_.exo_names_long(1) = {'eps_a'};
M_.exo_names(2) = {'eps_z'};
M_.exo_names_tex(2) = {'eps\_z'};
M_.exo_names_long(2) = {'eps_z'};
M_.exo_names(3) = {'eps_g'};
M_.exo_names_tex(3) = {'eps\_g'};
M_.exo_names_long(3) = {'eps_g'};
M_.exo_names(4) = {'eps_y_star'};
M_.exo_names_tex(4) = {'eps\_y\_star'};
M_.exo_names_long(4) = {'eps_y_star'};
M_.exo_names(5) = {'eps_r_star'};
M_.exo_names_tex(5) = {'eps\_r\_star'};
M_.exo_names_long(5) = {'eps_r_star'};
M_.exo_names(6) = {'eps_m'};
M_.exo_names_tex(6) = {'eps\_m'};
M_.exo_names_long(6) = {'eps_m'};
M_.endo_names = cell(57,1);
M_.endo_names_tex = cell(57,1);
M_.endo_names_long = cell(57,1);
M_.endo_names(1) = {'a_a'};
M_.endo_names_tex(1) = {'a\_a'};
M_.endo_names_long(1) = {'a_a'};
M_.endo_names(2) = {'a_z'};
M_.endo_names_tex(2) = {'a\_z'};
M_.endo_names_long(2) = {'a_z'};
M_.endo_names(3) = {'a_g'};
M_.endo_names_tex(3) = {'a\_g'};
M_.endo_names_long(3) = {'a_g'};
M_.endo_names(4) = {'a_y_star'};
M_.endo_names_tex(4) = {'a\_y\_star'};
M_.endo_names_long(4) = {'a_y_star'};
M_.endo_names(5) = {'a_r_star'};
M_.endo_names_tex(5) = {'a\_r\_star'};
M_.endo_names_long(5) = {'a_r_star'};
M_.endo_names(6) = {'c'};
M_.endo_names_tex(6) = {'c'};
M_.endo_names_long(6) = {'c'};
M_.endo_names(7) = {'h'};
M_.endo_names_tex(7) = {'h'};
M_.endo_names_long(7) = {'h'};
M_.endo_names(8) = {'k'};
M_.endo_names_tex(8) = {'k'};
M_.endo_names_long(8) = {'k'};
M_.endo_names(9) = {'i'};
M_.endo_names_tex(9) = {'i'};
M_.endo_names_long(9) = {'i'};
M_.endo_names(10) = {'y_h'};
M_.endo_names_tex(10) = {'y\_h'};
M_.endo_names_long(10) = {'y_h'};
M_.endo_names(11) = {'v'};
M_.endo_names_tex(11) = {'v'};
M_.endo_names_long(11) = {'v'};
M_.endo_names(12) = {'lm1'};
M_.endo_names_tex(12) = {'lm1'};
M_.endo_names_long(12) = {'lm1'};
M_.endo_names(13) = {'c1'};
M_.endo_names_tex(13) = {'c1'};
M_.endo_names_long(13) = {'c1'};
M_.endo_names(14) = {'h1'};
M_.endo_names_tex(14) = {'h1'};
M_.endo_names_long(14) = {'h1'};
M_.endo_names(15) = {'d1'};
M_.endo_names_tex(15) = {'d1'};
M_.endo_names_long(15) = {'d1'};
M_.endo_names(16) = {'b1'};
M_.endo_names_tex(16) = {'b1'};
M_.endo_names_long(16) = {'b1'};
M_.endo_names(17) = {'b_f1'};
M_.endo_names_tex(17) = {'b\_f1'};
M_.endo_names_long(17) = {'b_f1'};
M_.endo_names(18) = {'l1'};
M_.endo_names_tex(18) = {'l1'};
M_.endo_names_long(18) = {'l1'};
M_.endo_names(19) = {'s1'};
M_.endo_names_tex(19) = {'s1'};
M_.endo_names_long(19) = {'s1'};
M_.endo_names(20) = {'tau1'};
M_.endo_names_tex(20) = {'tau1'};
M_.endo_names_long(20) = {'tau1'};
M_.endo_names(21) = {'v1'};
M_.endo_names_tex(21) = {'v1'};
M_.endo_names_long(21) = {'v1'};
M_.endo_names(22) = {'lm2'};
M_.endo_names_tex(22) = {'lm2'};
M_.endo_names_long(22) = {'lm2'};
M_.endo_names(23) = {'c2'};
M_.endo_names_tex(23) = {'c2'};
M_.endo_names_long(23) = {'c2'};
M_.endo_names(24) = {'h2'};
M_.endo_names_tex(24) = {'h2'};
M_.endo_names_long(24) = {'h2'};
M_.endo_names(25) = {'m2'};
M_.endo_names_tex(25) = {'m2'};
M_.endo_names_long(25) = {'m2'};
M_.endo_names(26) = {'cbdc2'};
M_.endo_names_tex(26) = {'cbdc2'};
M_.endo_names_long(26) = {'cbdc2'};
M_.endo_names(27) = {'l2'};
M_.endo_names_tex(27) = {'l2'};
M_.endo_names_long(27) = {'l2'};
M_.endo_names(28) = {'s2'};
M_.endo_names_tex(28) = {'s2'};
M_.endo_names_long(28) = {'s2'};
M_.endo_names(29) = {'tau2'};
M_.endo_names_tex(29) = {'tau2'};
M_.endo_names_long(29) = {'tau2'};
M_.endo_names(30) = {'v2'};
M_.endo_names_tex(30) = {'v2'};
M_.endo_names_long(30) = {'v2'};
M_.endo_names(31) = {'r_d'};
M_.endo_names_tex(31) = {'r\_d'};
M_.endo_names_long(31) = {'r_d'};
M_.endo_names(32) = {'r_k'};
M_.endo_names_tex(32) = {'r\_k'};
M_.endo_names_long(32) = {'r_k'};
M_.endo_names(33) = {'w'};
M_.endo_names_tex(33) = {'w'};
M_.endo_names_long(33) = {'w'};
M_.endo_names(34) = {'q'};
M_.endo_names_tex(34) = {'q'};
M_.endo_names_long(34) = {'q'};
M_.endo_names(35) = {'mc'};
M_.endo_names_tex(35) = {'mc'};
M_.endo_names_long(35) = {'mc'};
M_.endo_names(36) = {'pi_h'};
M_.endo_names_tex(36) = {'pi\_h'};
M_.endo_names_long(36) = {'pi_h'};
M_.endo_names(37) = {'pi'};
M_.endo_names_tex(37) = {'pi'};
M_.endo_names_long(37) = {'pi'};
M_.endo_names(38) = {'p_h'};
M_.endo_names_tex(38) = {'p\_h'};
M_.endo_names_long(38) = {'p_h'};
M_.endo_names(39) = {'s'};
M_.endo_names_tex(39) = {'s'};
M_.endo_names_long(39) = {'s'};
M_.endo_names(40) = {'delta_e'};
M_.endo_names_tex(40) = {'delta\_e'};
M_.endo_names_long(40) = {'delta_e'};
M_.endo_names(41) = {'r'};
M_.endo_names_tex(41) = {'r'};
M_.endo_names_long(41) = {'r'};
M_.endo_names(42) = {'tax'};
M_.endo_names_tex(42) = {'tax'};
M_.endo_names_long(42) = {'tax'};
M_.endo_names(43) = {'t1'};
M_.endo_names_tex(43) = {'t1'};
M_.endo_names_long(43) = {'t1'};
M_.endo_names(44) = {'t2'};
M_.endo_names_tex(44) = {'t2'};
M_.endo_names_long(44) = {'t2'};
M_.endo_names(45) = {'log_y'};
M_.endo_names_tex(45) = {'log\_y'};
M_.endo_names_long(45) = {'log_y'};
M_.endo_names(46) = {'log_c'};
M_.endo_names_tex(46) = {'log\_c'};
M_.endo_names_long(46) = {'log_c'};
M_.endo_names(47) = {'log_c1'};
M_.endo_names_tex(47) = {'log\_c1'};
M_.endo_names_long(47) = {'log_c1'};
M_.endo_names(48) = {'log_c2'};
M_.endo_names_tex(48) = {'log\_c2'};
M_.endo_names_long(48) = {'log_c2'};
M_.endo_names(49) = {'log_r'};
M_.endo_names_tex(49) = {'log\_r'};
M_.endo_names_long(49) = {'log_r'};
M_.endo_names(50) = {'log_r_d'};
M_.endo_names_tex(50) = {'log\_r\_d'};
M_.endo_names_long(50) = {'log_r_d'};
M_.endo_names(51) = {'log_w'};
M_.endo_names_tex(51) = {'log\_w'};
M_.endo_names_long(51) = {'log_w'};
M_.endo_names(52) = {'log_pi_h'};
M_.endo_names_tex(52) = {'log\_pi\_h'};
M_.endo_names_long(52) = {'log_pi_h'};
M_.endo_names(53) = {'log_pi'};
M_.endo_names_tex(53) = {'log\_pi'};
M_.endo_names_long(53) = {'log_pi'};
M_.endo_names(54) = {'log_tot'};
M_.endo_names_tex(54) = {'log\_tot'};
M_.endo_names_long(54) = {'log_tot'};
M_.endo_names(55) = {'log_d1'};
M_.endo_names_tex(55) = {'log\_d1'};
M_.endo_names_long(55) = {'log_d1'};
M_.endo_names(56) = {'log_m2'};
M_.endo_names_tex(56) = {'log\_m2'};
M_.endo_names_long(56) = {'log_m2'};
M_.endo_names(57) = {'log_cbdc2'};
M_.endo_names_tex(57) = {'log\_cbdc2'};
M_.endo_names_long(57) = {'log_cbdc2'};
M_.endo_partitions = struct();
M_.param_names = cell(56,1);
M_.param_names_tex = cell(56,1);
M_.param_names_long = cell(56,1);
M_.param_names(1) = {'LAMBDA'};
M_.param_names_tex(1) = {'LAMBDA'};
M_.param_names_long(1) = {'LAMBDA'};
M_.param_names(2) = {'BETA'};
M_.param_names_tex(2) = {'BETA'};
M_.param_names_long(2) = {'BETA'};
M_.param_names(3) = {'SIGMA'};
M_.param_names_tex(3) = {'SIGMA'};
M_.param_names_long(3) = {'SIGMA'};
M_.param_names(4) = {'CHI'};
M_.param_names_tex(4) = {'CHI'};
M_.param_names_long(4) = {'CHI'};
M_.param_names(5) = {'PHI'};
M_.param_names_tex(5) = {'PHI'};
M_.param_names_long(5) = {'PHI'};
M_.param_names(6) = {'ETA'};
M_.param_names_tex(6) = {'ETA'};
M_.param_names_long(6) = {'ETA'};
M_.param_names(7) = {'GAMMA'};
M_.param_names_tex(7) = {'GAMMA'};
M_.param_names_long(7) = {'GAMMA'};
M_.param_names(8) = {'GAMMA_STAR'};
M_.param_names_tex(8) = {'GAMMA\_STAR'};
M_.param_names_long(8) = {'GAMMA_STAR'};
M_.param_names(9) = {'A'};
M_.param_names_tex(9) = {'A'};
M_.param_names_long(9) = {'A'};
M_.param_names(10) = {'B'};
M_.param_names_tex(10) = {'B'};
M_.param_names_long(10) = {'B'};
M_.param_names(11) = {'DELTA_M'};
M_.param_names_tex(11) = {'DELTA\_M'};
M_.param_names_long(11) = {'DELTA_M'};
M_.param_names(12) = {'EPSILON_M'};
M_.param_names_tex(12) = {'EPSILON\_M'};
M_.param_names_long(12) = {'EPSILON_M'};
M_.param_names(13) = {'ALPHA'};
M_.param_names_tex(13) = {'ALPHA'};
M_.param_names_long(13) = {'ALPHA'};
M_.param_names(14) = {'DELTA'};
M_.param_names_tex(14) = {'DELTA'};
M_.param_names_long(14) = {'DELTA'};
M_.param_names(15) = {'KAPPA_P'};
M_.param_names_tex(15) = {'KAPPA\_P'};
M_.param_names_long(15) = {'KAPPA_P'};
M_.param_names(16) = {'EPSILON'};
M_.param_names_tex(16) = {'EPSILON'};
M_.param_names_long(16) = {'EPSILON'};
M_.param_names(17) = {'KAPPA_I'};
M_.param_names_tex(17) = {'KAPPA\_I'};
M_.param_names_long(17) = {'KAPPA_I'};
M_.param_names(18) = {'EPSILON_B'};
M_.param_names_tex(18) = {'EPSILON\_B'};
M_.param_names_long(18) = {'EPSILON_B'};
M_.param_names(19) = {'KAPPA_B'};
M_.param_names_tex(19) = {'KAPPA\_B'};
M_.param_names_long(19) = {'KAPPA_B'};
M_.param_names(20) = {'KAPPA_D'};
M_.param_names_tex(20) = {'KAPPA\_D'};
M_.param_names_long(20) = {'KAPPA_D'};
M_.param_names(21) = {'KAPPA_M'};
M_.param_names_tex(21) = {'KAPPA\_M'};
M_.param_names_long(21) = {'KAPPA_M'};
M_.param_names(22) = {'BF_BAR'};
M_.param_names_tex(22) = {'BF\_BAR'};
M_.param_names_long(22) = {'BF_BAR'};
M_.param_names(23) = {'DF_BAR'};
M_.param_names_tex(23) = {'DF\_BAR'};
M_.param_names_long(23) = {'DF_BAR'};
M_.param_names(24) = {'MF_BAR'};
M_.param_names_tex(24) = {'MF\_BAR'};
M_.param_names_long(24) = {'MF_BAR'};
M_.param_names(25) = {'TAU_C'};
M_.param_names_tex(25) = {'TAU\_C'};
M_.param_names_long(25) = {'TAU_C'};
M_.param_names(26) = {'PHI_B'};
M_.param_names_tex(26) = {'PHI\_B'};
M_.param_names_long(26) = {'PHI_B'};
M_.param_names(27) = {'PHI_M'};
M_.param_names_tex(27) = {'PHI\_M'};
M_.param_names_long(27) = {'PHI_M'};
M_.param_names(28) = {'PHI_G'};
M_.param_names_tex(28) = {'PHI\_G'};
M_.param_names_long(28) = {'PHI_G'};
M_.param_names(29) = {'B_BAR'};
M_.param_names_tex(29) = {'B\_BAR'};
M_.param_names_long(29) = {'B_BAR'};
M_.param_names(30) = {'M_BAR'};
M_.param_names_tex(30) = {'M\_BAR'};
M_.param_names_long(30) = {'M_BAR'};
M_.param_names(31) = {'T1_BAR'};
M_.param_names_tex(31) = {'T1\_BAR'};
M_.param_names_long(31) = {'T1_BAR'};
M_.param_names(32) = {'T2_BAR'};
M_.param_names_tex(32) = {'T2\_BAR'};
M_.param_names_long(32) = {'T2_BAR'};
M_.param_names(33) = {'RHO_R'};
M_.param_names_tex(33) = {'RHO\_R'};
M_.param_names_long(33) = {'RHO_R'};
M_.param_names(34) = {'PHI_PI'};
M_.param_names_tex(34) = {'PHI\_PI'};
M_.param_names_long(34) = {'PHI_PI'};
M_.param_names(35) = {'PHI_Y'};
M_.param_names_tex(35) = {'PHI\_Y'};
M_.param_names_long(35) = {'PHI_Y'};
M_.param_names(36) = {'PHI_E'};
M_.param_names_tex(36) = {'PHI\_E'};
M_.param_names_long(36) = {'PHI_E'};
M_.param_names(37) = {'R_BAR'};
M_.param_names_tex(37) = {'R\_BAR'};
M_.param_names_long(37) = {'R_BAR'};
M_.param_names(38) = {'PI_BAR'};
M_.param_names_tex(38) = {'PI\_BAR'};
M_.param_names_long(38) = {'PI_BAR'};
M_.param_names(39) = {'Y_BAR'};
M_.param_names_tex(39) = {'Y\_BAR'};
M_.param_names_long(39) = {'Y_BAR'};
M_.param_names(40) = {'E_BAR'};
M_.param_names_tex(40) = {'E\_BAR'};
M_.param_names_long(40) = {'E_BAR'};
M_.param_names(41) = {'RHO_A'};
M_.param_names_tex(41) = {'RHO\_A'};
M_.param_names_long(41) = {'RHO_A'};
M_.param_names(42) = {'RHO_Z'};
M_.param_names_tex(42) = {'RHO\_Z'};
M_.param_names_long(42) = {'RHO_Z'};
M_.param_names(43) = {'RHO_G'};
M_.param_names_tex(43) = {'RHO\_G'};
M_.param_names_long(43) = {'RHO_G'};
M_.param_names(44) = {'RHO_Y_STAR'};
M_.param_names_tex(44) = {'RHO\_Y\_STAR'};
M_.param_names_long(44) = {'RHO_Y_STAR'};
M_.param_names(45) = {'RHO_R_STAR'};
M_.param_names_tex(45) = {'RHO\_R\_STAR'};
M_.param_names_long(45) = {'RHO_R_STAR'};
M_.param_names(46) = {'A_BAR'};
M_.param_names_tex(46) = {'A\_BAR'};
M_.param_names_long(46) = {'A_BAR'};
M_.param_names(47) = {'Z_BAR'};
M_.param_names_tex(47) = {'Z\_BAR'};
M_.param_names_long(47) = {'Z_BAR'};
M_.param_names(48) = {'G_BAR'};
M_.param_names_tex(48) = {'G\_BAR'};
M_.param_names_long(48) = {'G_BAR'};
M_.param_names(49) = {'Y_STAR_BAR'};
M_.param_names_tex(49) = {'Y\_STAR\_BAR'};
M_.param_names_long(49) = {'Y_STAR_BAR'};
M_.param_names(50) = {'R_STAR_BAR'};
M_.param_names_tex(50) = {'R\_STAR\_BAR'};
M_.param_names_long(50) = {'R_STAR_BAR'};
M_.param_names(51) = {'STDERR_A'};
M_.param_names_tex(51) = {'STDERR\_A'};
M_.param_names_long(51) = {'STDERR_A'};
M_.param_names(52) = {'STDERR_Z'};
M_.param_names_tex(52) = {'STDERR\_Z'};
M_.param_names_long(52) = {'STDERR_Z'};
M_.param_names(53) = {'STDERR_G'};
M_.param_names_tex(53) = {'STDERR\_G'};
M_.param_names_long(53) = {'STDERR_G'};
M_.param_names(54) = {'STDERR_Y_STAR'};
M_.param_names_tex(54) = {'STDERR\_Y\_STAR'};
M_.param_names_long(54) = {'STDERR_Y_STAR'};
M_.param_names(55) = {'STDERR_R_STAR'};
M_.param_names_tex(55) = {'STDERR\_R\_STAR'};
M_.param_names_long(55) = {'STDERR_R_STAR'};
M_.param_names(56) = {'STDERR_M'};
M_.param_names_tex(56) = {'STDERR\_M'};
M_.param_names_long(56) = {'STDERR_M'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 6;
M_.endo_nbr = 57;
M_.param_nbr = 56;
M_.orig_endo_nbr = 57;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(6, 6);
M_.Correlation_matrix = eye(6, 6);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.orig_eq_nbr = 57;
M_.eq_nbr = 57;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 1 15 0;
 2 16 0;
 3 17 0;
 4 18 0;
 5 19 0;
 0 20 0;
 0 21 0;
 6 22 0;
 7 23 72;
 0 24 73;
 0 25 0;
 0 26 74;
 0 27 0;
 0 28 0;
 0 29 0;
 8 30 0;
 9 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 75;
 0 36 76;
 0 37 0;
 0 38 0;
 10 39 0;
 11 40 0;
 0 41 0;
 0 42 0;
 0 43 0;
 0 44 77;
 0 45 0;
 0 46 78;
 0 47 0;
 0 48 79;
 0 49 0;
 0 50 80;
 0 51 81;
 12 52 82;
 13 53 83;
 0 54 0;
 14 55 0;
 0 56 0;
 0 57 0;
 0 58 0;
 0 59 0;
 0 60 0;
 0 61 0;
 0 62 0;
 0 63 0;
 0 64 0;
 0 65 0;
 0 66 0;
 0 67 0;
 0 68 0;
 0 69 0;
 0 70 0;
 0 71 0;]';
M_.nstatic = 34;
M_.nfwrd   = 9;
M_.npred   = 11;
M_.nboth   = 3;
M_.nsfwrd   = 12;
M_.nspred   = 14;
M_.ndynamic   = 23;
M_.dynamic_tmp_nbr = [31; 12; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , 'c' ;
  4 , 'name' , 'h' ;
  5 , 'name' , 'k' ;
  6 , 'name' , 'y_h' ;
  7 , 'name' , 'v' ;
  8 , 'name' , '8' ;
  9 , 'name' , '9' ;
  10 , 'name' , 'lm1' ;
  11 , 'name' , '11' ;
  12 , 'name' , '12' ;
  13 , 'name' , 'l1' ;
  14 , 'name' , 's1' ;
  15 , 'name' , 'tau1' ;
  16 , 'name' , 'v1' ;
  17 , 'name' , '17' ;
  18 , 'name' , '18' ;
  19 , 'name' , '19' ;
  20 , 'name' , '20' ;
  21 , 'name' , 'l2' ;
  22 , 'name' , 's2' ;
  23 , 'name' , 'tau2' ;
  24 , 'name' , '24' ;
  25 , 'name' , 'v2' ;
  26 , 'name' , 'r_d' ;
  27 , 'name' , '27' ;
  28 , 'name' , '28' ;
  29 , 'name' , '29' ;
  30 , 'name' , 'r_k' ;
  31 , 'name' , 'w' ;
  32 , 'name' , '32' ;
  33 , 'name' , 'pi_h' ;
  34 , 'name' , '34' ;
  35 , 'name' , '35' ;
  36 , 'name' , 'delta_e' ;
  37 , 'name' , '37' ;
  38 , 'name' , '38' ;
  39 , 'name' , '39' ;
  40 , 'name' , 'b1' ;
  41 , 'name' , '41' ;
  42 , 'name' , 'tax' ;
  43 , 'name' , 't1' ;
  44 , 'name' , 't2' ;
  45 , 'name' , 'log_y' ;
  46 , 'name' , 'log_c' ;
  47 , 'name' , 'log_c1' ;
  48 , 'name' , 'log_c2' ;
  49 , 'name' , 'log_r' ;
  50 , 'name' , 'log_r_d' ;
  51 , 'name' , 'log_w' ;
  52 , 'name' , 'log_pi_h' ;
  53 , 'name' , 'log_pi' ;
  54 , 'name' , 'log_tot' ;
  55 , 'name' , 'log_d1' ;
  56 , 'name' , 'log_m2' ;
  57 , 'name' , 'log_cbdc2' ;
};
M_.mapping.a_a.eqidx = [1 29 ];
M_.mapping.a_z.eqidx = [2 22 23 ];
M_.mapping.a_g.eqidx = [6 34 41 43 44 ];
M_.mapping.a_y_star.eqidx = [6 37 ];
M_.mapping.a_r_star.eqidx = [12 34 38 ];
M_.mapping.eps_a.eqidx = [1 ];
M_.mapping.eps_z.eqidx = [2 ];
M_.mapping.eps_g.eqidx = [41 ];
M_.mapping.eps_y_star.eqidx = [37 ];
M_.mapping.eps_r_star.eqidx = [38 ];
M_.mapping.eps_m.eqidx = [39 ];
M_.mapping.c.eqidx = [3 34 46 ];
M_.mapping.h.eqidx = [4 29 31 ];
M_.mapping.k.eqidx = [5 28 29 30 ];
M_.mapping.i.eqidx = [6 27 28 34 ];
M_.mapping.y_h.eqidx = [6 29 30 31 32 34 39 45 ];
M_.mapping.v.eqidx = [7 ];
M_.mapping.lm1.eqidx = [8 9 10 11 12 26 27 32 ];
M_.mapping.c1.eqidx = [3 6 8 16 42 47 ];
M_.mapping.h1.eqidx = [4 9 16 ];
M_.mapping.d1.eqidx = [5 13 55 ];
M_.mapping.b1.eqidx = [40 43 44 ];
M_.mapping.b_f1.eqidx = [12 34 ];
M_.mapping.l1.eqidx = [13 ];
M_.mapping.s1.eqidx = [14 ];
M_.mapping.tau1.eqidx = [15 ];
M_.mapping.v1.eqidx = [7 16 ];
M_.mapping.lm2.eqidx = [17 18 19 20 ];
M_.mapping.c2.eqidx = [3 6 17 19 20 22 23 24 25 42 48 ];
M_.mapping.h2.eqidx = [4 18 24 25 ];
M_.mapping.m2.eqidx = [6 19 21 24 43 44 56 ];
M_.mapping.cbdc2.eqidx = [17 19 20 21 24 42 43 44 57 ];
M_.mapping.l2.eqidx = [17 19 20 21 22 23 24 42 ];
M_.mapping.s2.eqidx = [6 17 22 24 ];
M_.mapping.tau2.eqidx = [17 19 20 23 ];
M_.mapping.v2.eqidx = [7 25 ];
M_.mapping.r_d.eqidx = [10 26 50 ];
M_.mapping.r_k.eqidx = [26 30 ];
M_.mapping.w.eqidx = [9 18 24 31 51 ];
M_.mapping.q.eqidx = [26 27 ];
M_.mapping.mc.eqidx = [30 31 32 ];
M_.mapping.pi_h.eqidx = [6 32 33 34 52 ];
M_.mapping.pi.eqidx = [6 10 11 19 20 24 26 33 36 39 43 44 53 ];
M_.mapping.p_h.eqidx = [6 32 33 34 35 39 45 54 ];
M_.mapping.s.eqidx = [6 12 34 35 36 54 ];
M_.mapping.delta_e.eqidx = [36 39 ];
M_.mapping.r.eqidx = [11 39 43 44 49 ];
M_.mapping.tax.eqidx = [42 43 44 ];
M_.mapping.t1.eqidx = [43 ];
M_.mapping.t2.eqidx = [24 44 ];
M_.mapping.log_y.eqidx = [45 ];
M_.mapping.log_c.eqidx = [46 ];
M_.mapping.log_c1.eqidx = [47 ];
M_.mapping.log_c2.eqidx = [48 ];
M_.mapping.log_r.eqidx = [49 ];
M_.mapping.log_r_d.eqidx = [50 ];
M_.mapping.log_w.eqidx = [51 ];
M_.mapping.log_pi_h.eqidx = [52 ];
M_.mapping.log_pi.eqidx = [53 ];
M_.mapping.log_tot.eqidx = [54 ];
M_.mapping.log_d1.eqidx = [55 ];
M_.mapping.log_m2.eqidx = [56 ];
M_.mapping.log_cbdc2.eqidx = [57 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 3 4 5 8 9 16 17 25 26 38 39 41 ];
M_.exo_names_orig_ord = [1:6];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(57, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(6, 1);
M_.params = NaN(56, 1);
M_.endo_trends = struct('deflator', cell(57, 1), 'log_deflator', cell(57, 1), 'growth_factor', cell(57, 1), 'log_growth_factor', cell(57, 1));
M_.NNZDerivatives = [237; -1; -1; ];
M_.static_tmp_nbr = [25; 11; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.2;
LAMBDA = M_.params(1);
M_.params(2) = 0.99;
BETA = M_.params(2);
M_.params(3) = 2;
SIGMA = M_.params(3);
M_.params(4) = 1;
CHI = M_.params(4);
M_.params(5) = 3;
PHI = M_.params(5);
M_.params(6) = 2;
ETA = M_.params(6);
M_.params(7) = 0.58;
GAMMA = M_.params(7);
M_.params(8) = 0.27;
GAMMA_STAR = M_.params(8);
M_.params(9) = 0.9;
A = M_.params(9);
M_.params(10) = 0.7;
B = M_.params(10);
M_.params(11) = 0.1;
DELTA_M = M_.params(11);
M_.params(12) = 2;
EPSILON_M = M_.params(12);
M_.params(13) = 0.33;
ALPHA = M_.params(13);
M_.params(14) = 0.025;
DELTA = M_.params(14);
M_.params(15) = 2;
KAPPA_P = M_.params(15);
M_.params(16) = 6;
EPSILON = M_.params(16);
M_.params(17) = 1.728;
KAPPA_I = M_.params(17);
M_.params(18) = 3;
EPSILON_B = M_.params(18);
M_.params(19) = 5;
KAPPA_B = M_.params(19);
M_.params(20) = 1;
KAPPA_D = M_.params(20);
M_.params(21) = 10;
KAPPA_M = M_.params(21);
M_.params(22) = 0.05;
BF_BAR = M_.params(22);
M_.params(23) = 0;
DF_BAR = M_.params(23);
M_.params(24) = 0;
MF_BAR = M_.params(24);
M_.params(25) = 0.12;
TAU_C = M_.params(25);
M_.params(26) = 1;
PHI_B = M_.params(26);
M_.params(27) = 1;
PHI_M = M_.params(27);
M_.params(28) = 1;
PHI_G = M_.params(28);
M_.params(29) = 2;
B_BAR = M_.params(29);
M_.params(30) = 0;
M_BAR = M_.params(30);
M_.params(31) = 0;
T1_BAR = M_.params(31);
M_.params(32) = 0;
T2_BAR = M_.params(32);
M_.params(33) = 0.5;
RHO_R = M_.params(33);
M_.params(34) = 10;
PHI_PI = M_.params(34);
M_.params(35) = 10;
PHI_Y = M_.params(35);
M_.params(36) = 2;
PHI_E = M_.params(36);
M_.params(37) = 1.04040404040404;
R_BAR = M_.params(37);
M_.params(38) = 1.03;
PI_BAR = M_.params(38);
M_.params(39) = 1.9269444054;
Y_BAR = M_.params(39);
M_.params(40) = 1.03;
E_BAR = M_.params(40);
M_.params(41) = 0.9;
RHO_A = M_.params(41);
M_.params(42) = 0.7217;
RHO_Z = M_.params(42);
M_.params(43) = 0.8;
RHO_G = M_.params(43);
M_.params(49) = 1;
Y_STAR_BAR = M_.params(49);
M_.params(50) = 1/M_.params(2);
R_STAR_BAR = M_.params(50);
M_.params(46) = 1;
A_BAR = M_.params(46);
M_.params(47) = 1;
Z_BAR = M_.params(47);
M_.params(48) = 0.3;
G_BAR = M_.params(48);
M_.params(44) = 0.6031;
RHO_Y_STAR = M_.params(44);
M_.params(45) = 0.5374;
RHO_R_STAR = M_.params(45);
M_.params(51) = 0.0711;
STDERR_A = M_.params(51);
M_.params(52) = 0.0694;
STDERR_Z = M_.params(52);
M_.params(53) = 0.05;
STDERR_G = M_.params(53);
M_.params(54) = 0.0788;
STDERR_Y_STAR = M_.params(54);
M_.params(55) = 0.0799;
STDERR_R_STAR = M_.params(55);
M_.params(56) = 0.25;
STDERR_M = M_.params(56);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = 1;
oo_.steady_state(2) = 1;
oo_.steady_state(3) = 0.3;
oo_.steady_state(4) = 1;
oo_.steady_state(5) = 1.0101;
oo_.steady_state(6) = 1.51714;
oo_.steady_state(7) = 0.842308;
oo_.steady_state(8) = 17.6383;
oo_.steady_state(9) = 0.440957;
oo_.steady_state(10) = 2.29824;
oo_.steady_state(11) = (-79.8269);
oo_.steady_state(12) = 0.352382;
oo_.steady_state(13) = 1.59178;
oo_.steady_state(14) = 0.80716;
oo_.steady_state(15) = 22.0479;
oo_.steady_state(16) = 2.5;
oo_.steady_state(17) = 0.0625;
oo_.steady_state(18) = 22.0479;
oo_.steady_state(19) = 0;
oo_.steady_state(20) = 0;
oo_.steady_state(21) = (-73.4341);
oo_.steady_state(22) = 0.636297;
oo_.steady_state(23) = 1.21855;
oo_.steady_state(24) = 0.982898;
oo_.steady_state(25) = 0.202603;
oo_.steady_state(26) = 0.519237;
oo_.steady_state(27) = 1.37053;
oo_.steady_state(28) = 5.23725e-05;
oo_.steady_state(29) = 0.012895;
oo_.steady_state(30) = (-105.398);
oo_.steady_state(31) = 1.0404;
oo_.steady_state(32) = 0.035101;
oo_.steady_state(33) = 1.49233;
oo_.steady_state(34) = 1;
oo_.steady_state(35) = 0.816331;
oo_.steady_state(36) = 1.03;
oo_.steady_state(37) = 1.03;
oo_.steady_state(38) = 0.979597;
oo_.steady_state(39) = 1.2307;
oo_.steady_state(40) = 1.03;
oo_.steady_state(41) = 1.0404;
oo_.steady_state(42) = 0.163891;
oo_.steady_state(43) = 0.152106;
oo_.steady_state(44) = 0.152106;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
options_.solve_algo = 4;
options_.steady.maxit = 5000;
steady;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (M_.params(51))^2;
M_.Sigma_e(2, 2) = (M_.params(52))^2;
M_.Sigma_e(3, 3) = (M_.params(53))^2;
M_.Sigma_e(4, 4) = (M_.params(54))^2;
M_.Sigma_e(5, 5) = (M_.params(55))^2;
M_.Sigma_e(6, 6) = (M_.params(56))^2;
options_.hp_filter = 100;
options_.irf = 101;
options_.nograph = true;
options_.order = 1;
var_list_ = {'v';'v1';'v2';'log_y';'log_c';'log_c1';'log_c2';'log_r';'log_r_d';'log_w';'log_pi_h';'log_pi';'log_tot';'log_d1';'log_m2';'log_cbdc2'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'TANK_SOE_CBDC_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TANK_SOE_CBDC_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TANK_SOE_CBDC_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TANK_SOE_CBDC_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TANK_SOE_CBDC_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TANK_SOE_CBDC_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TANK_SOE_CBDC_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end

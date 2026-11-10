clc
clear

%%
R = 1.2;        % Ohms, Terminal Resistance phase to phase 
L = 0.560e-3;   % Henrys, Terminal Inductance phase to phase 
Kt = 25.5e-3;   % Nm/A, Torque constant 
Ks = 37.4;       % rpm/V, Speed constant 
tm = 17.1e-3;   % seconds, s, Mechanical Time constant
B = 0.001;      % friction coefficient
J = 92.5e-7;    % kg.m^2, Rotor inertia, given in gcm^2 
ph = 3;          % Number of phases 
p = 8;           % number of poles
te = L/(ph*R);               % seconds, s, Electrical Time constant 
Kb = (3*R*J)/(tm*Kt);       % Back emf constant 



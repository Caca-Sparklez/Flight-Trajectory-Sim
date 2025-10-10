% Variables
%   Ap - projection of fin area onto the plane of the wing (fins in line
%   with other fin)
%   A_T - ??area of fin ???
%   alpha = angle of attack
%   alpha_E = effective angle of attack
%   L = lift
%   roh = air density
%   Cl_alpha - coef of lift at alpha
%   v - velocity
%   alpha_Z - z component of angle of attack


%Roh

%altutude in meters
altitudes = [0; 1000; 2000; 3000; 4000; 5000; 6000; 7000; 8000; 9000; 10000; 15000; 20000; 25000; 30000; 40000; 50000; 60000; 70000; 80000; 100000];
%air density in kg/m^3
densities = [1.225; 1.112; 1.007; 0.9093; 0.8194; 0.7364; 0.6601; 0.5900; 0.5258; 0.4671; 0.4135; 0.1948; 0.08891; 0.04008; 0.01841; 0.003996; 0.001027; 0.0003097; 0.00008283; 0.00001846; 0];

RohAlt_table = table(altitudes, densities);

%Inputs

A_T = ; 
alpha = ; %input('angle of attack');
alpha_Z = ;
Cl_alpha = ; %input('coeffient of lift');

v = ;


%Calculations

%eq 26
Ap = sqrt(2) * A_T;

%eq 27
alpha_E = alpha*cos(pi/4);

%eq 28
L = (1/2)*roh*alpha*Cl_alpha*v.^2*Ap*alpha_Z;


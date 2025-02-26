s = tf('s');

G = 2/(s^2 + 4*s +1);

K1 = 2*(1+1/(2*s));
K2 = (1+ 1/(2*s));
K3 = 4*(1+1/(2*s));

S1 = 1/(1+G*K1);
T1 =  1- S1; % T = G*K/(1+G*K);

S2 = 1/(1+G*K2);
T2 =  1- S2; 

S3 = 1/(1+G*K3);
T3 =  1- S3; 

sim("task2.slx")

% TODO: sim file da e pulen s promenlivi za da moga da q kontroliram
% na vsichki vhodove, i na vremeto za simulirane

% TODO: svurji zadanieto da se vijda na scope/ to workspace

%TODO: Graphics (izhod, upravlenie, greshka)
% step bez tovar i bez smushtenie
% step s tovar
% step sus smushtenie step
%
% sinus vhod 0.1rad bez drugo
% sinus vhod 1 rad
% sinus vhod 2 rad      %tursim razlika mejdu izhodite
%
% sinus vhod sus step smushtenie
% ...
% ..
%
% step vhod sinus izhod
% .. 
%
% povtarqm vsichko otgore sus shum sus normalno otklonenie
% moje i bql shum da dobavq


% TODO: izvodi
% sravnqvame chestotnata i vremevata oblast



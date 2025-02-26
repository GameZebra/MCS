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

% tova e etalon za analiz na sistema

% izhodna chuvstvitelnost
% tovarni smushteniq na izhoda
figure(1), title('');
bodemag(S1, 'b'), hold on, grid on;
bodemag(S2, 'r');
bodemag(S3, 'g');
legend('K1', 'K2', 'K3');

% dopulnitelna chuvstvitelnost
% po otnoseniq na zadanieto
% do chestota -3dB sledi dobre zadanieto
figure(2), title('complimentary sensitivity');
bodemag(T1, 'b'), hold on, grid on;
bodemag(T2, 'r');
bodemag(T3, 'g');
legend('K1', 'K2', 'K3');

% shumove v controlniq signal
% usilvame izmervatelniq shum
figure(3), title('Control signal sensitivity');
bodemag(S1*K1, 'b'), hold on, grid on;
bodemag(S2*K2, 'r');
bodemag(S3*K3, 'g');
legend('K1', 'K2', 'K3');
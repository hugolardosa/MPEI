%% alinea a
H = [0.8 0   0.3   0;
     0.2 0.9 0.2   0;
     0   0.1 0.4   0;
     0   0   0.1   1]
%% aliena b
X = [1;0;0;0]; 
X1000 = H^1000*X
X1000(2)
%% alinea c
H^2
H^10
H^100
%% alinea d
Q = H(1:3,1:3);
%% alinea e
I = eye(3);
F = ((I -Q))'
%% alinea f e g
sum(F)
%% alinea H
H=[ 0.7 0.3 0.5 0;
    0.1 0.1 0.39 0;
    0.2 0.6 0.1 0;
    0   0    0.01 1];
Q = H(1:3,1:3)
F=(eye(3)-Q)'
sum(F)

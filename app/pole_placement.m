%Elan git changes latest
%A = [0 1 0;0 0 1; -13 -33 -13]
%A = [-5 0 -100;2 -2 0; 0 0.1 -0.08]
A = [-0.4 -5; 4 0]
B = [0; 0;-0.1]
I = [1 0 0;0 1 0;0 0 1]
%phi = [A^3+7*A^2+52*A+120*I]

Q = [B A*B A*A*B]
Qinv = inv(Q)
K = [0 0 1]*Qinv*phi

%A=A-B*K
eig(A)


%pc = [51 16 1;19 17 2;-5 -3 -1] %transformational matrix
% Q = [A^2*b+13*A*b+33*b; A*b+13*b; b]
% [NUM,DEN]=ss2tf(A,B,C,D,1) % finds TF of a state space
%step(w)
%impulse(w)
% w1 = tf([64], [1 0 64])
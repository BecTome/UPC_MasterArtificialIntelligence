clear all

% Neuron weights 
w = [4 -2]; 
% Neuron bias 
b = -3; 
% Activation function: Hyperbolic tangent sigmoid function 
% func = 'tansig'; 
 
% Activation function: Logistic sigmoid transfer function 
% func = 'logsig' 
 
% Activation function: Hard-limit transfer function (threshold) 
% func = 'hardlim' 
 
% Activation function: Linear transfer function 
% func = 'purelin' 
 
p = [2 3];

net_input = p * w' + b;

neuron_output = feval(func, net_input);

[p1,p2] = meshgrid(-10:.25:10);
z = feval(func, [p1(:) p2(:)]*w'+b ); 
z = reshape(z,length(p1),length(p2)); 
plot3(p1,p2,z); 
grid on; 
xlabel('Input 1'); 
ylabel('Input 2'); 
zlabel('Neuron output'); 
title(['Neuron output for ' func ' transfer function']);
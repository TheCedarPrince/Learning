function c_cp_expdecay
global k1; 

k1=2.0; 
tend=5; 
x0=10^5; 
[tsol, xsol] = ode45(@rhs, [0, tend], x0); 
plot(tsol, xsol,'k'); 

function xdot = rhs(t, x) 
global k1; 
xdot = -k1*x; 

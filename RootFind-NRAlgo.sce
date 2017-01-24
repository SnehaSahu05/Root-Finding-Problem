//root finding by Newton-Raphson Algorithm : Linear Equation

function eqn=f(x)
    eqn=(x.^2)-(6*x)+5; // roots=1,5
endfunction

x=-7;//root=1
//x=7;//root=5
xR=-10:10;
plot(xR,f(xR));
xtitle("plot: f(x)=(x^2)-6x+5","x","f(x)");
xgrid(color("grey"));

while(f(x)<>0),
    plot(x,f(x),'r-o');
    dfdx = numderivative(f,x);
    delta_x = -f(x)/dfdx;
    x=x+delta_x;
end
//root = x;
disp(x,'root =');
plot(x,f(x),'b-d');

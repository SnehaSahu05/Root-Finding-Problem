//root finding by Bisection Algorithm : Linear Equation

function eqn=f(x)
    eqn=(x.^2)-(6*x)+5; // roots=1,5
endfunction

//xP=-7;xM=4;//root=1
//xP=7;xM=4;//root=5
xR=-10:10;
plot(xR,f(xR));
xtitle("plot: f(x)=(x^2)-6x+5","x","f(x)");
xgrid(color("grey"));

while (f(xP)<>0 & f(xM)<>0),
    plot(xP,f(xP),'g-o',xM,f(xM),'r-o');
    x=xP+((xM-xP)/2);//disp(xM,'x- =',x,'x=',xP,'x+ =');
    if f(x)>0 then
        xP=x;//disp(x,'x+ =');
    else
        xM=x;//disp(x,'x- =');
    end
end
//root = x;
disp(x,'root =');
plot(x,f(x),'b-d');

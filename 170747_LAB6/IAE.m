function [J] = IAE(x)
h=Simulink.Mask.get(gcb);
for i=1:5
    h.Parameters(1,i).Value=num2str(x(i));
end
sim("PART3.slx");
J=abs(Y1(1:end-1,4)-Y1(1:end-1,2))'*diff(Y(:,1));
end
function [J] = IAE(x)
h=Simulink.Mask.get(gcb);
for i=1:3
    h.Parameters(1,i).Value=num2str(x(i));
end
sim("Lab3.slx");
J=abs(Y(1:end-1,2))'*diff(Y(:,1));
end
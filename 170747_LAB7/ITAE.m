function [J] = ITAE(x)
h=Simulink.Mask.get(gcb);
for i=1:2
    h.Parameters(1,i).Value=num2str(x(i));
end
sim("smith_predictor.slx");
J=(Y1(1:end-1,1).*abs(Y1(1:end-1,2)-1))'*diff(Y1(:,1));
end
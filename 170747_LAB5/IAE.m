function [J] = IAE(x)
h=Simulink.Mask.get(gcb);
for i=1:3
    h.Parameters(1,i).Value=num2str(x(i));
end
%disp(h.Parameters(1,3));
sim("feedforwardOptimizer.slx");
J=abs(Yff1(1:end-1,2))'*diff(Yff1(:,1));
end
%run the commands
%x0=[10 20 10];
%[x,Jopt,flag]=fmincon(@IAE,x0,[],[],[],[],0.1*ones(1,3),[200 200 50],[],options);
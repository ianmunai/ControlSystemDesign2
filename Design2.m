clear
clc
close all


p=0;
% figure

for K=8500:8505
    num=[1 1]*K; 
    den=[1 9 6 24];
    sys1=tf(num,den);
    sys=feedback(sys1,1);
%     step(sys)
%     grid on
%     hold on
    p=p+1;
    s1=stepinfo(sys,'RiseTimeThreshold',[0.1 0.9]);
    risetime(p,:)=s1.RiseTime;
    a(p,:)=K;
    info=[risetime a];
end

disp(info)
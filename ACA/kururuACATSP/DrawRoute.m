function DrawRoute(citys,Shortest_Route,Shortest_Length,iter_max,Length_best,Length_ave)
figure(1)
plot([citys(Shortest_Route,1);citys(Shortest_Route(1),1)],...
     [citys(Shortest_Route,2);citys(Shortest_Route(1),2)],'o-');
grid on
for i = 1:size(citys,1)
    text(citys(i,1),citys(i,2),['   ' num2str(i)]);
end
text(citys(Shortest_Route(1),1),citys(Shortest_Route(1),2),'       ���');
text(citys(Shortest_Route(end),1),citys(Shortest_Route(end),2),'       �յ�');
xlabel('����λ�ú�����')
ylabel('����λ��������')
title(['��Ⱥ�㷨�Ż�·��(��̾���:' num2str(Shortest_Length) ')'])

figure(2)
plot(1:iter_max,Length_best,'b',1:iter_max,Length_ave,'r:')
legend('��̾���','ƽ������')
xlabel('��������')
ylabel('����')
title('������̾�����ƽ������Ա�')
clear all
clc
%%�������ݣ���������
load citys_data.mat
%%������м��໥����
n = size(citys,1);
D = zeros(n,n);
for i = 1:n
    for j = 1:n
        if i ~= j
            D(i,j) = sqrt(sum((citys(i,:) - citys(j,:)).^2));
        else
            D(i,j) = 1e-4;      
        end
    end    
end

%% ��ʼ������
m = 50;                              % ��������
alpha = 1;                           % ��Ϣ����Ҫ�̶�����
beta = 5;                            % ����������Ҫ�̶�����
rho = 0.1;                           % ��Ϣ�ػӷ�����
Q = 1;                               % ��ϵ��
iter = 1;                            % ����������ֵ
iter_max = 200;                      % ����������  
%%��Ⱥ�㷨��TSP
[Route_best,Length_best,Length_ave,Shortest_Route,Shortest_Length]=ACATSP(n,D,iter,iter_max,m,alpha,beta,rho,Q);

%%��ͼ
DrawRoute(citys,Shortest_Route,Shortest_Length,iter_max,Length_best,Length_ave);





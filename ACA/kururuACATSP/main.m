clear all
clc
%%导入数据，城市坐标
load citys_data.mat
%%计算城市间相互距离
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

%% 初始化参数
m = 50;                              % 蚂蚁数量
alpha = 1;                           % 信息素重要程度因子
beta = 5;                            % 启发函数重要程度因子
rho = 0.1;                           % 信息素挥发因子
Q = 1;                               % 常系数
iter = 1;                            % 迭代次数初值
iter_max = 200;                      % 最大迭代次数  
%%蚁群算法跑TSP
[Route_best,Length_best,Length_ave,Shortest_Route,Shortest_Length]=ACATSP(n,D,iter,iter_max,m,alpha,beta,rho,Q);

%%绘图
DrawRoute(citys,Shortest_Route,Shortest_Length,iter_max,Length_best,Length_ave);





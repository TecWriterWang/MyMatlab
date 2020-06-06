% 基本绘图操作
x = -3:0.02:3;
z = -3:0.02:3;
y = x .^2;
y1 = x .^3;
y2 = sin(2.*x);
axis equal;
axis square;
plot(x, y, 'green',x, y1, 'red');
hold on;
plot(x, y2, 'yellow');
grid on; % 显示图像背景网格
title('显示图片标题');
xlabel('x');
ylabel('y');
drawnow; % 立刻在画一次

% 创建子窗口
subplot(2,3,1); % 将窗口分多个子窗口，2行2列
plot(x,y);
subplot(2,3,2);
plot(x,y2);
% 3D图形 plot3
subplot(2,3,3);
plot3(x,y2,z);
subplot(2,3,4);
% 曲面3D图 surface 缩写surf
x = -5:0.1:5;
y = -5:0.1:5;
[X,Y]=meshgrid(x,y); % meshgrid生成指定区间内的对应点
Z= X.^2+Y.^2;
surf(X,Y,Z);
% 动态图 
subplot(2,3,5);
x = -2*pi:0.1:2*pi;
y = sin(x); 
h = plot(x,y);

while 1
    x = x+0.1;
    y = sin(x);
    set(h,'XData',x,'YData',y);
    drawnow;
end



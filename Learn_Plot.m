% ������ͼ����
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
grid on; % ��ʾͼ�񱳾�����
title('��ʾͼƬ����');
xlabel('x');
ylabel('y');
drawnow; % �����ڻ�һ��

% �����Ӵ���
subplot(2,3,1); % �����ڷֶ���Ӵ��ڣ�2��2��
plot(x,y);
subplot(2,3,2);
plot(x,y2);
% 3Dͼ�� plot3
subplot(2,3,3);
plot3(x,y2,z);
subplot(2,3,4);
% ����3Dͼ surface ��дsurf
x = -5:0.1:5;
y = -5:0.1:5;
[X,Y]=meshgrid(x,y); % meshgrid����ָ�������ڵĶ�Ӧ��
Z= X.^2+Y.^2;
surf(X,Y,Z);
% ��̬ͼ 
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



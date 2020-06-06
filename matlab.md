# 打印

```matlab
fprintf() % 打印不会自动换行
display() % 缩写为disp，打印自动换行
```


# 矩阵运算

示例见Learn_matrix.m

Matlab 创建矩阵，类似数组

```matlab
x = [1 2 3;1 2 3]; %两行三列
y = [4 5 6;4 5 6];
```

- 加法和减法

按照对应的位置相加

```matlab
x = [1 2;1 2]
y = [3 4;5 6]
x + y = [4 6;6 8]
x - y = [-2 -2;-4 -4]
```

- 乘法 

<font color = red size=5>*</font>

```matlab
% 线性代数矩阵乘法,计算时两个矩阵的行列成员个数必须相等
% 计算时x行元素乘y列元素，对应位置相乘，然后做加法
% 例如x第一行[1 2]* y第一列[3 5]结果13作为相乘后矩阵的一行一列的值，
% [1 2]* [4 6]结果16作为相乘后矩阵的一行2列的值，以此类推
x = [1 2;3 4]
y = [3 4;5 6]
% [1*3+2*5 1*4+2*6; 3*3+4*5 3*4+4*6]
x*y = [13 16;29 36]
```

<font color = red size=5>.* </font>
每个项对应相乘
x.*y = [1*4 2*5 3*6]

# plot 绘2DLine

见Learn_plot.m

- plot(x,y，"green"，x1,y1) 画出二维图像,x值对应x轴，y值对应y轴,可以设置颜色，还一个窗口可以画出多条线
- plot3(x,y,z) 画出三维图像
- surface() 绘制曲面图，需要配合mershgrid(x,y)，产生坐标点
- axies = equal 设置xy轴坐标一致
- hold on; plot函数每次绘图前，都会清除前一次的，使用hold on 可以保持

```matlab
x = -3:0.02:3;
y = x .^2;
y1 = x .^3;
y2 = x .^-1;
axis equal;
% axis square;
plot(x, y, 'green',x, y1, 'red');
hold on;
plot(x, y2, 'yellow');
```

- subplot

在一个窗口中创建子窗口

```matlab
subplot(2,3,1); % 将一个窗口分为2行3列，1代表在第1个窗口中绘制
plot(x,y);
```



# 选择和循环

选择和循环结束都必须使用end

- if-elseif-else

```matlab
% 选择结构
a = input('请输入a的值 ');
b = input('请输入b的值 ');
if a>b
    disp('a > b');
elseif a-b < 0
    disp('a < b'); 
else
    disp('a == b');     
end
```

- while

```matlab
while i
    fprintf('%g ',i);  
    if i > 5
        fprintf('\n'); 
        disp('This is Half of ten,exit')
        break
    end
    i = i + 1;
end
```

- for

```matlab
% 循环结构-for
for i = 1:2:5 % 1到5 间隔2 
    disp(i);    
end
```



# 函数定义 function

见Learn_function.m

Matlab使用 function定义函数

```matlab
% 函数名需要和函数脚本文件名相同，使用时通过函数脚本文件名调用函数

function res= Learn_function(para1,para2)
    s = para1+para2;
    res = s; % 返回值
end
% 函数结束使用end
```

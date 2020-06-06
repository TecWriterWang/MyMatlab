# 打印
```matlab
fprintf() % 打印不会自动换行
display() % 缩写为disp，打印自动换行
```


# 矩阵运算
matlab 创建矩阵，类似数组
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

类似线性代数的乘法,x矩阵的第一行成员和y矩阵的第一列成员，对应位置相乘结果作为x*y结果的第一行第一列的成员
```matlab
x = [1 2;3 4]
y = [3 4;5 6]
% [1*3+2*5 1*4+2*6; 3*3+4*5 3*4+4*6]
x*y = [13 16;29 36]
```

<font color = red size=5>.* </font>
每个项对应相乘
x.*y = [1*4 2*5 3*6]


# plot绘图
- plot(x,y，"green"，x1,y1) 画出二维图像,x值对应x轴，y值对应y轴,可以设置颜色，还一个窗口可以画出多条线
- plot3(x,y,z) 画出三维图像
- axies = equal 设置xy轴坐标一致
- hold on; plot函数每次绘图前，都会清除前一次的，使用hold on 可以保持

# 函数定义 function
matlab使用 function定义函数
```matlab
function restult = funcname(para);
```
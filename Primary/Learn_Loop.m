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
% 循环结构-for
for i = 1:5
    disp(i);    
end
% 循环结构-while
while i
    fprintf('%g ',i);  
    if i > 5
        fprintf('\n'); 
        disp('This is Half of ten,exit')
        break
    end
    i = i + 1;
end



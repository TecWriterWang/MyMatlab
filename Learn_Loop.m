% ѡ��ṹ
a = input('������a��ֵ ');
b = input('������b��ֵ ');
if a>b
    disp('a > b');
elseif a-b < 0
    disp('a < b'); 
else
    disp('a == b');     
end
% ѭ���ṹ-for
for i = 1:5
    disp(i);    
end
% ѭ���ṹ-while
while i
    fprintf('%g ',i);  
    if i > 5
        fprintf('\n'); 
        disp('This is Half of ten,exit')
        break
    end
    i = i + 1;
end



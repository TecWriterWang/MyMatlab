% ¶¯Ì¬Í¼ 
x = -2*pi:0.1:2*pi;
y = sin(x); 
h = plot(x,y);

while 1
    x = x+0.1;
    y = sin(x);
    set(h,'XData',x,'YData',y);
    drawnow;
end

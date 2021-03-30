%% see information in info.txt

addpath('./csv/Current_102');
count = 1;
%number of csv file
source_dir = './csv/Current_102'; 
d = dir([source_dir, '\*.csv']);

% order file by date
date_list ={d.date};
[~,order]=sort(date_list);
d=d(order);

% 001 Ye Mod 0.2C
data_csv = csvread(d(1).name,5);
xGraph1 = data_csv(:,1);
yGraph1 = data_csv(:,5).';
clear data_csv;
legendName(count) = "OurModel YeMod 0.2C";
count = count + 1;

% 002 Ye Mod 0.5C
data_csv = csvread(d(2).name,5);
xGraph2 = data_csv(:,1);
yGraph2 = data_csv(:,5).';
clear data_csv;
legendName(count) = "OurModel YeMod 0.5C";
count = count + 1;

% 003 Ye Mod 1.0C
data_csv = csvread(d(3).name,5);
xGraph3 = data_csv(:,1);
yGraph3 = data_csv(:,5).';
clear data_csv;
legendName(count) = "OurModel YeMod 1.0C";
count = count + 1;

% 004 Ye Mod 2.0C
data_csv = csvread(d(4).name,5);
xGraph4 = data_csv(:,1);
yGraph4 = data_csv(:,5).';
clear data_csv;
legendName(count) = "OurModel YeMod 2.0C";
count = count + 1;

% 005 Ye 0.2C
data_csv = csvread(d(5).name,5);
xGraph5 = data_csv(:,1);
yGraph5 = data_csv(:,5).';
clear data_csv;
legendName(count) = "OurModel Ye 0.2C";
count = count + 1;

% 006 Ye 0.5C
data_csv = csvread(d(6).name,5);
xGraph6 = data_csv(:,1);
yGraph6 = data_csv(:,5).';
clear data_csv;
legendName(count) = "OurModel Ye 0.5C";
count = count + 1;

% 007 Ye 1.0C
data_csv = csvread(d(7).name,5);
xGraph7 = data_csv(:,1);
yGraph7 = data_csv(:,5).';
clear data_csv;
legendName(count) = "OurModel Ye 1.0C";
count = count + 1;

% 008 Ye 2.0C
data_csv = csvread(d(8).name,5);
xGraph8 = data_csv(:,1);
yGraph8 = data_csv(:,5).';
clear data_csv;
legendName(count) = "OurModel Ye 2.0C";
count = count + 1;

% Ye original dataset measured with WebPlotDigitizer
data_csv = csvread(d(9).name,2);

% Ye sim 0.2C
[idx,~] = find(data_csv(:,2)==0);
if isempty(idx)
    xGraphYe1 = data_csv(:,1);
    yGraphYe1 = data_csv(:,2).';
else
    xGraphYe1 = data_csv(1:idx(1),1);
    yGraphYe1 = data_csv(1:idx(1),2).';
end    
legendName(count) = "Ye Simulated 0.2C";
count = count + 1;

[idx,~] = find(data_csv(:,4)==0);
if isempty(idx)
    xGraphYe2 = data_csv(:,3);
    yGraphYe2 = data_csv(:,4).';
else
    xGraphYe2 = data_csv(1:idx(1)-1,3);
    yGraphYe2 = data_csv(1:idx(1)-1,4).';
end    
legendName(count) = "Ye Simulated 0.5C";
count = count + 1;

[idx,~] = find(data_csv(:,6)==0);
if isempty(idx)
    xGraphYe3 = data_csv(:,5);
    yGraphYe3 = data_csv(:,6).';
else
    xGraphYe3 = data_csv(1:idx(1)-1,5);
    yGraphYe3 = data_csv(1:idx(1)-1,6).';
end    
legendName(count) = "Ye Simulated 1.0C";
count = count + 1;


[idx,~] = find(data_csv(:,8)==0);
if isempty(idx)   
    xGraphYe4 = data_csv(:,7);
    yGraphYe4 = data_csv(:,8).';
else
    xGraphYe4 = data_csv(1:idx(1)-1,7);
    yGraphYe4 = data_csv(1:idx(1)-1,8).';
end 
legendName(count) = "Ye Simulated 2.0C";
count = count + 1;


[idx,~] = find(data_csv(:,10)==0);
if isempty(idx)
    xGraphYe5 = data_csv(:,9);
    yGraphYe5 = data_csv(:,10).';
else
    xGraphYe5 = data_csv(1:idx(1)-1,9);
    yGraphYe5 = data_csv(1:idx(1)-1,10).';
end    
legendName(count) = "Ye Measured 0.2C";
count = count + 1;


[idx,~] = find(data_csv(:,12)==0);
if isempty(idx)
    xGraphYe6 = data_csv(:,11);
    yGraphYe6 = data_csv(:,12).';
else
    xGraphYe6 = data_csv(1:idx(1)-1,11);
    yGraphYe6 = data_csv(1:idx(1)-1,12).';
end    
legendName(count) = "Ye Measured 0.5C";
count = count + 1;


[idx,~] = find(data_csv(:,14)==0);
if isempty(idx)
    xGraphYe7 = data_csv(:,13);
    yGraphYe7 = data_csv(:,14).';
else
    xGraphYe7 = data_csv(1:idx(1)-1,13);
    yGraphYe7 = data_csv(1:idx(1)-1,14).';
end    

legendName(count) = "Ye Measured 1.0C";
count = count + 1;


[idx,~] = find(data_csv(:,16)==0);
if isempty(idx)
    xGraphYe8 = data_csv(:,15);
    yGraphYe8 = data_csv(:,16).';
else
    xGraphYe8 = data_csv(1:idx(1)-1,15);
    yGraphYe8 = data_csv(1:idx(1)-1,16).';
end    
legendName(count) = "Ye Measured 2.0C";
count = count + 1;

clear data_csv;

fig0 = figure('color','white', ...
       'name','Voltage compare Temperature variation', ...
       'units','normalized', ...
       'outerpos',[0 0 1 1]);
   
axis([0 25000    2.4 4.2]);
   
p = zeros(1,12);
l = zeros(1,12);

r = 255/255;
g = 0/255;
b = 0/255; 
hold on;
l(1) = plot(xGraph1, yGraph1, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(1) );
hold off;

r = 255/255;
g = 0/255;
b = 0/255; 
hold on;
l(2) = plot(xGraph2, yGraph2, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(2) );
hold off;

r = 255/255;
g = 0/255;
b = 0/255; 
hold on;
l(3) = plot(xGraph3, yGraph3, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(3) );
hold off;

r = 255/255;
g = 0/255;
b = 0/255; 
hold on;
l(4) = plot(xGraph4, yGraph4, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(4) );
hold off;

r = 0/255;
g = 0/255;
b = 255/255;
hold on;
l(5) = plot(xGraph5, yGraph5, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(5) );
hold off;

r = 0/255;
g = 0/255;
b = 255/255;
hold on;
l(6) = plot(xGraph6, yGraph6, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(6) );
hold off;

r = 0/255;
g = 0/255;
b = 255/255;
hold on;
l(7) = plot(xGraph7, yGraph7, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(7) );
hold off;

r = 0/255;
g = 0/255;
b = 255/255;
hold on;
l(8) = plot(xGraph8, yGraph8, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(8) );
hold off;

r = 0/255;
g = 0/255;
b = 0/255;
hold on;
l(9) = plot(xGraphYe1, yGraphYe1, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(9) );
hold off;

r = 0/255;
g = 0/255;
b = 0/255;
hold on;
l(10) = plot(xGraphYe2, yGraphYe2, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(10) );
hold off;

r = 0/255;
g = 0/255;
b = 0/255;
hold on;
l(11) = plot(xGraphYe3, yGraphYe3, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(11) );
hold off;

r = 0/255;
g = 0/255;
b = 0/255;
hold on;
l(12) = plot(xGraphYe4, yGraphYe4, 'Linewidth', 2, 'Color', [r g b], 'DisplayName',legendName(12) );
hold off;

r = 65/255;
g = 65/255;
b = 65/255;
hold on;
l(13) = plot(xGraphYe5, yGraphYe5, 's','MarkerSize',10, 'MarkerEdgeColor',[r g b], 'MarkerFaceColor',[r g b], 'DisplayName',legendName(13) );
hold off;

r = 65/255;
g = 65/255;
b = 65/255;
hold on;
l(14) = plot(xGraphYe6, yGraphYe6, 'p','MarkerSize',10, 'MarkerEdgeColor',[r g b], 'MarkerFaceColor',[r g b], 'DisplayName',legendName(14) );
hold off;

r = 65/255;
g = 65/255;
b = 65/255;
hold on;
l(15) = plot(xGraphYe7, yGraphYe7, '^','MarkerSize',10, 'MarkerEdgeColor',[r g b], 'MarkerFaceColor',[r g b], 'DisplayName',legendName(15) );
hold off;

r = 65/255;
g = 65/255;
b = 65/255;
hold on;
l(16) = plot(xGraphYe8, yGraphYe8, 'o','MarkerSize',10, 'MarkerEdgeColor',[r g b], 'MarkerFaceColor',[r g b], 'DisplayName',legendName(16) );
hold off;

tit = title('Compare voltage profiles of Ye and Our model for a discharge current of 10.2A = 1C');
tit.FontSize = 14;
xlabel('Time (s)');
ylabel('Voltage (V)');
lgd = legend(l(1:16)); 
lgd.FontSize = 10;
grid


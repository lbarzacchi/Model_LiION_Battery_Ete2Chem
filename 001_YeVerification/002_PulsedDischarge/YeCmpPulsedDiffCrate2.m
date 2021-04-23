%% see information in info.txt

addpath('./csv');
count = 1;
%number of csv file
source_dir = './csv'; 
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
legendName(count) = "Simulated 0.2C";
count = count + 1;

% 002 Ye Mod 0.5C
data_csv = csvread(d(2).name,5);
xGraph2 = data_csv(:,1);
yGraph2 = data_csv(:,5).';
clear data_csv;
legendName(count) = "Simulated 0.5C";
count = count + 1;

% 003 Ye Mod 1.0C
data_csv = csvread(d(3).name,5);
xGraph3 = data_csv(:,1);
yGraph3 = data_csv(:,5).';
clear data_csv;
legendName(count) = "Simulated 1.0C";
count = count + 1;

% 004 Ye Mod 2.0C
data_csv = csvread(d(4).name,5);
xGraph4 = data_csv(:,1);
yGraph4 = data_csv(:,5).';
clear data_csv;
legendName(count) = "Simulated 2.0C";
count = count + 1;

% Ye original dataset measured with WebPlotDigitizer

data_csv = readmatrix(d(5).name,'Range','3:250');

% Ye sim 0.2C
[idx,~] = find(isnan(data_csv(:,2)));
if isempty(idx)
    xGraphYe1 = data_csv(:,1);
    yGraphYe1 = data_csv(:,2).';
else
    xGraphYe1 = data_csv(1:idx(1)-1,1);
    yGraphYe1 = data_csv(1:idx(1)-1,2).';
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
legendName(count) = "Measured 0.2C";
count = count + 1;


[idx,~] = find(data_csv(:,12)==0);
if isempty(idx)
    xGraphYe6 = data_csv(:,11);
    yGraphYe6 = data_csv(:,12).';
else
    xGraphYe6 = data_csv(1:idx(1)-1,11);
    yGraphYe6 = data_csv(1:idx(1)-1,12).';
end    
legendName(count) = "Measured 0.5C";
count = count + 1;


[idx,~] = find(data_csv(:,14)==0);
if isempty(idx)
    xGraphYe7 = data_csv(:,13);
    yGraphYe7 = data_csv(:,14).';
else
    xGraphYe7 = data_csv(1:idx(1)-1,13);
    yGraphYe7 = data_csv(1:idx(1)-1,14).';
end    

legendName(count) = "Measured 1.0C";
count = count + 1;


[idx,~] = find(data_csv(:,16)==0);
if isempty(idx)
    xGraphYe8 = data_csv(:,15);
    yGraphYe8 = data_csv(:,16).';
else
    xGraphYe8 = data_csv(1:idx(1)-1,15);
    yGraphYe8 = data_csv(1:idx(1)-1,16).';
end    
legendName(count) = "Measured 2.0C";
count = count + 1;

clear data_csv;

fig0 = figure('color','white', ...
       'name','Voltage compare Temperature variation', ...
       'units','normalized', ...
       'outerpos',[0 0 1 1]);
   
   

w = 0.44;
h = 0.84;

p = zeros(1,12);
l = zeros(1,12);

p(1) = subplot('Position',[0.04 0.07 w h], 'FontSize', 12);
r = 0/255;
g = 0/255;
b = 0/255; 
hold on;
l(1) = plot(p(1), xGraphYe5(1:153,1), yGraphYe5(1,1:153), 's','LineWidth',1,'MarkerSize',10, 'MarkerEdgeColor',[r g b], 'DisplayName',legendName(9));
r = 255/255;
g = 0/255;
b = 0/255; 
l(2) = plot(p(1), xGraph1(1:2864,1), yGraph1(1,1:2864), 'Linewidth', 3, 'Color', [r g b], 'DisplayName',legendName(1) );
axis([0 40000    3 4.2]);
hold off;
title(p(1), "Pulsed Discharge for 0.2C (25°C)",'FontSize', 16);
xlabel('Time (s)');
ylabel('Voltage (V)');
legend(l(1:2)); 
grid on

p(3) = subplot('Position',[0.54 0.07 w h], 'FontSize', 12);
r = 0/255;
g = 0/255;
b = 0/255; 
hold on;
l(5) = plot(p(3), xGraphYe7, yGraphYe7, 's','LineWidth',1,'MarkerSize',10, 'MarkerEdgeColor',[r g b], 'DisplayName',legendName(11));
r = 255/255;
g = 0/255;
b = 0/255; 
l(6) = plot(p(3), xGraph3(1:2501), yGraph3(1:2501), 'Linewidth', 3, 'Color', [r g b], 'DisplayName',legendName(3) );
axis([0 20000    3 4.2]);
hold off;
title(p(3), "Pulsed Discharge for 1.0C (25°C)",'FontSize', 16);
xlabel('Time (s)');
ylabel('Voltage (V)');
legend(l(5:6)); 
grid on

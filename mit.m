%CODED IN MATLAB
clc; clear all; 
%Load values to array
dataTable = readtable('circle.csv', 'Format', '%f%f%f');
dataArray = table2array(dataTable);
%Take x/y values, x points here
xn = dataArray(:,2); 
%Check if each pt is within the range of its prev pt & next pt
for id = 2:1:136
    past_xn = xn(id-1); %Previous value
    pres_xn = xn(id);   %Present value
    next_xn = xn(id+1); %Next value
    if((past_xn>=pres_xn && pres_xn>=next_xn)||(past_xn<=pres_xn && pres_xn<=next_xn))
    else  
        %Error point id
        err_id = id-1 
    end    
end

    
    
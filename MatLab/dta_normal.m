%xlsread is a Matlab command used to read an Excel spreadsheet
dta = xlsread('Data_Cats.xls');
% the file has 3 columns, the index of each cat, the body weight and the
% heart weigth
normplot(dta(:,3))

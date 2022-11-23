%Project
fis = mamfis('Name',"Project");
fis = addInput(fis,[1.75 4],'Name',"Pressure");
fis = addInput(fis,[7 16],'Name',"Temperature");
fis = addOutput(fis,[2 6],'Name',"Percentage of CO2");
fis = addMF(fis,"Temperature","trimf",[7 7 9],'Name',"Very Cold");
fis = addMF(fis,"Temperature","trimf",[7 9 11],'Name',"Cold");
fis = addMF(fis,"Temperature","trimf",[10 12 14],'Name',"Normal");
fis = addMF(fis,"Temperature","trimf",[12 14 16],'Name',"Hot");
fis = addMF(fis,"Temperature","trimf",[13 16 16],'Name',"Very Hot");
fis = addMF(fis,"Pressure","trimf",[1.75 1.75 2.25],'Name',"Very
Bad");
fis = addMF(fis,"Pressure","trimf",[1.75 2.25 2.50],'Name',"Bad");
fis = addMF(fis,"Pressure","trimf",[2.25 2.75 3.25],'Name',"Normal");
fis = addMF(fis,"Pressure","trimf",[2.50 3.25 3.50],'Name',"Good");
fis = addMF(fis,"Pressure","trimf",[2.75 4.00 4.00],'Name',"Very
Good");
fis = addMF(fis,"Percentage of CO2","trimf",[2 2 3],'Name',"Very
Bad");
fis = addMF(fis,"Percentage of CO2","trimf",[2 3 4],'Name',"Bad");
fis = addMF(fis,"Percentage of CO2","trimf",[3 4 5],'Name',"Normal");
fis = addMF(fis,"Percentage of CO2","trimf",[4 5 6],'Name',"Good");
fis = addMF(fis,"Percentage of CO2","trimf",[5 6 6],'Name',"Very
Good");
ruleList = [1 1 3 1 1;
1 2 2 1 1;
1 3 2 1 1;
1 4 2 1 1;
1 5 1 1 1;
2 1 3 1 1;
2 2 4 1 1;
2 3 3 1 1;
2 4 2 1 1;
2 5 2 1 1;
3 1 4 1 1;
3 2 4 1 1;
3 3 3 1 1;
3 4 3 1 1;
3 5 3 1 1;
4 1 5 1 1;
4 2 4 1 1;
4 3 4 1 1;
4 4 3 1 1;
4 5 3 1 1;
5 1 5 1 1;
5 2 5 1 1;
5 3 5 1 1;
5 4 4 1 1;
5 5 4 1 1;
];
fis = addRule(fis,ruleList);
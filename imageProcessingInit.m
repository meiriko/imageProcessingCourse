%{
init function for the Israeli study group
run this when you start matlab to have all sub folders available
to add your script:
1. Createa a sub folder with your name (example: adi)
2. Add an addpath command with your folder below: addpath('adi')
3. Save the file, git commit and push
%}
function imageProcessingInit()
addpath('meir');
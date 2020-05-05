% BMI calculator

clear
clc

disp(' Welcome to BMI Calculator ')

 Name=input('Enter your name within single quotes');


a=menu('Choose your sytem','SI','Imperial');

switch a
    
    case 1
        
    c=input('Enter weight in kgs');
    b=input('Enter height in m');
    
    
    case 2
       c=input('Enter weight in lbs');
    b=input('Enter height in ft');
    
end




bmi= c/(b^2);

fprintf('\n \n \n')
disp('Your name')
disp(Name)

  
disp('Your BMI= ')
disp(bmi)

if bmi<=18
    disp('Underweight')
    
elseif bmi>=18 & bmi<24
        
        disp('Normal')
        
    elseif bmi>=24 & bmi<30
            
            disp('Overweight')
            
        else disp('Obese')
            
end


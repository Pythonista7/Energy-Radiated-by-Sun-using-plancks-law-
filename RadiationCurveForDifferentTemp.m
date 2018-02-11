%Plank's Black Body spectrum for different temperatures

h=6.62*(10^-34); %Planks Constant
c=3*(10^8);  %Speed of Light
T=[1000,2000,3000,4000]; %Temperature in kelvin
k=1.38 * (10^-23);   %Blotzmann Constant
lamda=(0.0:0.01:20).*1e-6;  %Range of wavelengths


for j=T
     
    
    ctr=1;   %counter for loop
    for i=lamda
        
        E(ctr)=( (8*pi*h*c)/(i^5) ) * (1 / ( exp((h*c)/((i) * k * j)) - 1) );   %Planks formula
             
        ctr=ctr+1;
    end
     
    plot(lamda,E,'-')
    
    hold on
    xlabel('\lambda','fontsize',14)
    ylabel('Intensity','fontsize',14)
    title('Blackbody Radiation','fontsize',14)
    E=[];    %empty matrix
    
    
end



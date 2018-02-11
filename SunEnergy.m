%Plank's Black Body spectrum 

h=6.62*(10^-34);    %Planks constant
c=3*(10^8);         %Speed of light in vaccume
T=6000;             %kelvin
k=1.38 * (10^-23);  %Boltzmann constant

%Generating wavelength data-set
lamda=[0.0:0.01:20].*1e-6 ;      %lamda between range of 0nm to 20,000 nm in steps on 10nm

E=[];    %empty matrix
ctr=1;   %counter for loop
Ar=0 ;   %Area under the curve



    for i=lamda
    
        E(ctr)=( (8*pi*h*c)/(i^5) ) * (1 / ( exp((h*c)/(i * k * T)) - 1) );   %Max Planks formula
        ctr=ctr+1;

    end

    E(1:1)=0;   %Eliminating Nan value
    


%Plotting 
axis('square')
graph=plot(lamda,E,'linewidth',2);
xlabel('\lambda','fontsize',14)
ylabel('Intensity','fontsize',14)
title('Blackbody Radiation','fontsize',14)




%Calculation

Ar=trapz([0:0.1:5].*1e-7,E(1:51));  %We should integrate between range of lamda and not value of lamda and hence [0:0.1:5].*e-7
                                    %Since no significant area is observed from the graph beyond 0.5 * 10^-5 lamda
                                    %Hence,area under the curve gives us the total energy density of the sun.
                                    
                                   
%Total Enery(Sun) = Area under the curve * Volume of the sun
sun_vol = (4/3) * pi * (7 * 10^8)^3;
res = Ar * sun_vol;
fprintf("The energy emmited by the sun is  %s W\n",res);



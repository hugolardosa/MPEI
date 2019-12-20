%% alinea a 
T = ([0.7 0.2 0.1;
    0.2 0.3 0.5;
    0.3 0.3 0.4])'
%% alinea b
X=[1;0;0];
X2 = T^2*X
%% alinea c
n=(1:20);

for i = 1:20
    transitions = T^i;
    plotsol(i) = transitions(1);
    plotnuvens(i) = transitions(2);
    plotchuva(i) = transitions(3);
end
subplot(1,2,1)
title("Alinea C")
plot(n,plotsol);
hold on
plot(n,plotnuvens);
plot(n,plotchuva);
hold off
%% alinea d
n=(1:20);
i=1;
while(true)
    transitions = T^i;
    plotsol(i) = transitions(1);
    plotnuvens(i) = transitions(2);
    plotchuva(i) = transitions(3);
    if(i>1)
       if( abs(plotsol(i)- plotsol(i-1) ) < 10^-4)
           break;
       end
       if( abs(plotnuvens(i)- plotnuvens(i-1)) < 10^-4)
           break;
       end
       if( abs(plotchuva(i)- plotchuva(i-1)) < 10^-4)
           break;
       end
    end
   i=i+1;
end
subplot(1,2,2)
title("Alinea D")
plot(n,plotsol);
hold on
plot(n,plotnuvens);
plot(n,plotchuva);
hold off



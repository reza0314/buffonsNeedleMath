% Buffon`s needle problem
% Name : Seyed Mohammad Amin Sadat
% Student Number : 401436077
% please read the pdf file or python notebook for proof

%% Variables
exprimentNumber = 4000;
needleLength = 0.9;
lineDistance = 0.6;

tetha = (pi/2)*abs(rand(exprimentNumber,1));
middleDistance = (lineDistance/2)*abs(rand(exprimentNumber,1));
lenRatio = needleLength/lineDistance;
%% Calculations
intersectionNumber = 0;
for i = 1:exprimentNumber
    if lenRatio <= 1
        if middleDistance(i) <= (needleLength/2)*sin(tetha(i))
            intersectionNumber = intersectionNumber + 1;
        end
    else
        if middleDistance(i) <= min((needleLength/2)*sin(tetha(i)),lineDistance/2)
            intersectionNumber = intersectionNumber + 1;
        end
    end
end
intersectionProbability = intersectionNumber/exprimentNumber;

%% Estimating pi
if lenRatio <= 1
    piCoefficient = lenRatio;
else
    piCoefficient = lenRatio - sqrt(lenRatio*lenRatio-1) + asec(lenRatio);
end
estimatedPi = 2*piCoefficient/intersectionProbability;
%% Show Result
disp('The estimated Pi is: ')
disp(estimatedPi);
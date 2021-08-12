PIB = readtable("PIB.xls")
PIB(2,:) = []
selPaises = PIB([13 14 17 37 40 55 70],:)
selPaises(:,[5:44]) = []
% countries = selPaises(:,2)
years = 2000:2020
countries = ["AUS" "AUT" "BEL" "CHE" "CHN" "DEU" "ESP"]
gdp = selPaises{:,5:25}
plot(years,gdp,"*-")
legend(countries,"Location","best")
xlabel("years")
ylabel("GDP(M)")
title("Gross Domestic Product")
grid on
% calling my function
countryMean(countries(1),gdp(1,:))
% calling my function with all countries
for k = 1:5
   countryMean(countries(k),gdp(k,:))
end
% more functions & structures
for k = 1:5
    greatest = 0
    copy = mean(gdp(k,:))
    if copy > greatest
        greatest = copy
    end
end
% calling myFunction
a = randi(5,1,10)
isThere = myFindFunc(a,5)

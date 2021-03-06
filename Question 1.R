#Question 1
print(table(Breweries$State))

#Question 2
names(Beers)[5] <- "Brew_ID"
BrewedBeers <- merge(Beers, Breweries, by="Brew_ID")
head(BrewedBeers, n=6)
tail(BrewedBeers, n=6)

#Question 3
sum(is.na(BrewedBeers$Brew_ID))
sum(is.na(BrewedBeers$Name.x))
sum(is.na(BrewedBeers$Beer_ID))
sum(is.na(BrewedBeers$ABV))
sum(is.na(BrewedBeers$IBU))
sum(is.na(BrewedBeers$Style))
sum(is.na(BrewedBeers$Ounces))
sum(is.na(BrewedBeers$Name.y))
sum(is.na(BrewedBeers$City))
sum(is.na(BrewedBeers$State))

#Question 4
ABVbyState <- sapply(split(BrewedBeers$ABV, BrewedBeers$State), median, na.rm=TRUE)
print(ABVbyState)
barplot(ABVbyState)
IBUbyState <- sapply(split(BrewedBeers$IBU, BrewedBeers$State), median, na.rm=TRUE)
print(IBUbyState)
barplot(IBUbyState)

#Question 5
maxABV <- subset(BrewedBeers, ABV == max(BrewedBeers$ABV, na.rm=TRUE))
print(maxABV$State)
maxIBU <- subset(BrewedBeers, IBU == max(BrewedBeers$IBU, na.rm=TRUE))
print(maxIBU$State)

#Question 6
summary(BrewedBeers$ABV)

#Question 7
plot(BrewedBeers$ABV, BrewedBeers$IBU)
cor(BrewedBeers$ABV, BrewedBeers$IBU, use="complete.obs")



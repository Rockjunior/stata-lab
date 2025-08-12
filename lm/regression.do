//import cardata
sysuse auto
//view & summarize
browse
sum
//scatter
scatter mpg weight
//new var
gen price_per_mile = price/mpg
//renaming
rename weight weight_car
//regression
//simple linear
regress price weight
//multiple linear
reg price weight mpg
//data filtering &subsetting
keep if foreign == 1
//logistic reg
logistic foreign weight mpg
//descriptive stat per group
by foreign weight mpg
//exporting results
estout using regression_result.txt,replace

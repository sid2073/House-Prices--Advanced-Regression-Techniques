Clean_Data = read.csv(file.choose())

numeric=c('Dist_Taxi','Dist_Market','Dist_Hospital','Carpet','Builtup','Rainfall')
categoric = c('Parking', 'City_Category')
Target = c('House_Price')

set.seed(42)
train = sample(nrow(Clean_Data), 0.7*nrow(Clean_Data))
test = setdiff(seq_len(nrow(Clean_Data)), train)

Org_Reg=lm(House_Price~.,data=Clean_Data[train,c(Target,numeric,categoric)])
summary(Org_Reg)

# 워킹 디렉토리 설정
setwd("/Users/rinndash/Documents/BIM503")

# 데이터 로딩
email.df = read.csv("res/L2_email_campaign.csv")

str(email.df)
View(email.df)

# Question 1.
summary(email.df$age)

# Question 2.
install.packages("ggplot2")
install.packages("ggthemes")

library(ggplot2)
library(ggthemes)

ggplot(email.df, aes(x=age)) + geom_histogram(fill="steelblue", binwidth=1) + xlab("Age") + ggtitle("Histogrom for Age") + theme_bw()

# Question 3.
t.test(email.df$age, mu=40, alternative = "less")
# P-value가 0에 가까우므로 귀무 가설을 기각하고 대립가설을 채택한다. 

# Question 4
adressTypeTable = table(email.df$addresstype)
prop.table(adressTypeTable)

# Question 5
binom.test(373, 1000, 0.36, alternative = "less")
# P-Value가 0.8133이므로 귀무가설을 기각할 수 없으며, rural 인구 비율이 0.36 이상일 것이라는 귀무가설은 통계적으로 유의하다. 

# Question 6
respondByAddress = aggregate(respond ~ addresstype, data = email.df, function(x) { round(mean(x), 3) })
View(respondByAddress)




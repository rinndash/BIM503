banking.df = read.csv("res/L5_banking.csv")

str(banking.df)
head(banking.df, 10)

# 컨텍스트 - 온라인 뱅킹을 더 활성화할 것인가?

# Q1.
library(ggplot2)
library(ggthemes)

summary(banking.df$profit)
ggplot(banking.df, aes(x=profit)) + geom_histogram(fill="steelblue", bins = 30) + xlab("Profit") + ggtitle("Histogrom for Profit") + theme_bw()

# 중위 이익이 9$로 50%의 고객에서 발생하는 이익이 9$이하이다. 평균 이익은 111.5$로 소수의 고객이 큰 이익을 주고 있어 평균값을 끌어올리고 있다. 
# 데이터를 종합하면 많은 수의 고객이 0




library(survival)
data <- read.csv('C:\\Users\\520ha\\Desktop\\LU\\Chapman\\Research\\Medical Notes\\survival_dummies_2.csv')
time = data$Duration
event = data$EVENT
x <- subset(data, select = -c(HADM_ID, Duration, EVENT))
dim(x)

coxph = coxph(Surv(time,event) ~ ., data = x)
sink(file = 'cox_survival_2.txt')
summary(coxph)
sink(file=NULL)


library(survival)
data <- read.csv('C:\\Users\\Hanna\\Desktop\\LU\\Chapman\\Research_2\\Medical Notes\\data_dummies_diagnoses.csv')
time = data$Duration
event = data$EVENT
data[,'X']<- list(NULL)

x <- subset(data, select = -c(Duration, EVENT))
coxph = coxph(Surv(time,event) ~ ., data = x)
sink(file = 'cox_survival_3.txt')
summary(coxph)
sink(file=NULL)
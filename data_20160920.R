x <- 5
x

#展示R語言圖形功能
demo(graphics)


#鳶尾花
data(iris)
plot(iris)
View(iris)

x <- c(1,2,3,4,5)
y <- c(5,10,15,20,25)
plot(x,y)



#台灣地圖
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="Taiwan",zoom=8)
ggmap(map.taiwan)

#套件移除
remove.packages("ggmap")

#R練習
x <- 10
x

y <- x^2
y

z <- sqrt(y)
z

#mode(資料型態)與tength(長度)
x <- 10
x
mode(x)
length(x)

y <- 10.9
y
mode(y)

z <- T
z
mode(z)
length(z)
#character文字
a <-"hello"
a
mode(a)
length(a)
#complex複數
b <- 4+2i
b
mode(b)
length(b)

#向量vector
v <- c(10,5,3.1,6.4,9.2,21.7)
v
length(v)
mode(v)

v <- c(10,5,NA,6.4,9.2,21.7)
v
v[2] #索引從1開始
v2 <- 1:10
v2

#矩陣marix (二維)
x <- matrix(1:24,nrow=4,ncol=6,byrow=TRUE)
x

x <- matrix(1:24,nrow=4,ncol=6,byrow=FALSE)
x

#cbind() , rbind() and t() 矩陣轉置
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1,x2,x3)
xc

xr <- rbind(x1,x2,x3)
xr
xt <- t(xc)
xt
nrow(xc)
ncol(xc)
xc
xc[,1]
xc[2,]
eigen(xc)

z <- xc * xr #錯的方法
z <- xc %*% xr #對的方法
z

#Array 陣列 (多維)
x <- 1:24
dim(x) <- c(3,4,2)
x
x <- array(1:24,dim=c(3,4,2))
x
x[2,3,1]
x[3,1,2]

#factor (因子) (比Vector多了類別統計)
sex <- factor(c("男","女","男","男","女"))
sex

#Data Frame資料框架
id <- c(1,2,3,4)
age <- c(25,30,35,40)
sex <-c("Male","Male","Female","Female")
pay <-c(30000,40000,45000,50000)
x_dataframe <-data.frame(id,age,sex,pay)
x_dataframe
x_dataframe[2] #第二攔資料
x_dataframe$age
x_dataframe[2,] #第二筆資料
y <- edit(x_dataframe)
y

#list
id <- c(1,2,3)
sex <- c("Male","Male","female")
pay <- c(30000,40000,45000)
Y_dataframe <- data.frame(id,sex,pay)
gender <- factor("男","男","女")
paul.Family <- list(name = "Paul",wife ="Iris",
                  no.kid=3,kid_age=c(25,28,30), gender,Y_dataframe)
paul.Family
paul.Family$kid_age
paul.Family[4]
paul.Family[4][2] #錯誤的方式
paul.Family[[4]]
paul.Family[[4]][2]

#第二章
setwd("c:/")
getwd()

x <- read.table("x.csv" , sep=",", header = TRUE)
x$age
x[1,2]
str(x)

x <- read.csv("x.csv" , header = TRUE)
x

x <- read.table("x.txt" , sep=",", header = TRUE)
x

x <- read.table("x.txt" , sep=" ", header = TRUE) #錯誤得寫法
x

x <- read.table("x.txt" , sep="\t", header = TRUE) #正確得寫法
x

x <- scan("")
x
str(x)

my <- scan(file = "",what = list(name="",pay=integer(0),sex=""))
my
str(my)

#資料寫入
setwd("c:/WD")

write.table(x,"c:/WD/X_File.csv", row.names = FALSE,
            col.names = FALSE , sep=",")

#內建資料集
data()
data("iris")
iris
str(iris)
summary(iris)

save(iris,file = "iris.RDATA")
load("iris.RDATA", .GlobalEnv)

#第三章
a <- c(1,2,3)
x <- a + 2
x
(x <- a +2)

{a <- c(1,2,3); x <- a+2}
x

# if else
x <- 6
if (x>5) y =2 else y=4
y

x <- 3
if(x<5) y=10
y

x <- 3
y <- 1
if (x<5 && y<5) {y<- 10 ; z<- 5}
y
z

#ifelse
x <- 20
y <- ifelse(x>5,2,3)
y

#switch
x <- 1
switch(x,5,sum(1:10),rnorm(5))

x <- 2
switch(x,5,sum(1:10),rnorm(5))

x <- 3
switch(x,5,sum(1:10),rnorm(5))

y <- 1
switch(y, juice="Apple" ,mean="Pork")

#for 
x <-0
for (i in 1:5) x <- x+ i
x

x <- 0
y <- 0
for (i in 1:5) {x<-x+i ;y <-i^2}
x
y

#while
sum <- 0
i <- 1
while (i<=10) {sum <- sum+i;i<-i+1}
sum

#repeat
sum <- 0
i <- 1
repeat{
  sum <- sum + i
  i<- i+1
  if (i >10) break
}
  sum

  #apply()
  x <- array(1:24, dim=c(4,6))
  x
  apply(x,1,sum) #1代表列相加
  apply(x,2,sum) #2代表欄相加
  
  #自訂函數
  x <- 1
  myfun <- function(x) {y <- x+2 ;return(y)}
  myfun(1)
  myfun(3)
  myfun() #會錯誤
  
  #參數預設值
  myfun <- function(x=1) {y <- x+2 ;return(y)}
  myfun()
  myfun(3)
  
  #factorial 階層
  factorial <- function(x=1) {
    y=1
    for (i in 1:x) {y <- y * i}
    return(y)
  }
  factorial(4)
  
  #第四章
  demo(graphics)
  demo(image)
  
  y <- sin(1:20)
  plot(y,type = "l",xlab = "x",ylab = "y")
  title(main = "Sin Plot",sub= "圖4-2")
  points(5,0.5)
  
  #互動式繪圖
  plot(2,2)
  pts <- locator(n=3)
  pts
  
  #1 求 Excel中的數值平均
  setwd("c:/cert/")
  x <- read.csv("A-1.csv",header = FALSE)
  x
  str(x)
  x <- as.matrix(x)
  str(x)
  mean(x)
  summary(x)
  
  #2  求 Excel中的數值--最大值
  setwd("c:/cert/")
  x <- read.csv("A-3.csv",header = FALSE)
  x
  x <- as.matrix(x)
  max(x)
  
  #3 求 Excel中的數值--四分位
  setwd("c:/cert/")
  x <- read.csv("A-4.csv",header = FALSE)
  x
  x <- as.matrix(x)
  quantile(x,0.25)  #或者可用summary(x)
  
  #4求全距  Excel中的數值--最大值減最小值
  setwd("c:/cert/")
  x <- read.csv("A-5.csv",header = TRUE)#裡面EXCEL資料有中文 就可以改TRUE
  x
  x <- as.matrix(x)
  max(x)- min(x)
  
  #5 求Excel中的數值--變異數
  setwd("c:/cert/")
  x <- read.csv("A-6.csv",header = FALSE)
  x
  x <- as.matrix(x)
  var(x)
  
  #6 求Excel中的數值--相關係數
  setwd("c:/cert/")
  x <- read.csv("C-1.csv",header = TRUE)
  x
str(x)
hour <- x[2]
grade <- x[3]
cor(hour,grade) #cor(grade,hour)括號內的項目可以互換結果不變

#9  計算4!總和
x <- 2 
if (x<3) y=NA else y=s
print(y)

#10
myfun <- function(x)
{if (x==0)
  sum=1
else
  sum=x*myfun(x-1)
return(sum)}
myfun(4)
  
#12 
a <- matrix(1:12, nrow = 3,byrow = TRUE)
a
apply(a,1,sum)

#13 統計1有幾個 2有幾個 3有幾個做成表格
x <- c(1,1,1,3,2,2,3)
table(x)

#15 
x <- c(1,2,5)
y <- c(3,5,10)
rbind(x,y)

#20
x1 <- 9%%5 #求餘數
x2 <- 9%/%2 #求商數
x1
x2
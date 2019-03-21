library(ggplot2)
library(sp)

#��csv�ļ�����mydata��
mydataAll<-read.csv(file = "G:/seat.csv", header = T)

#ѡȡmydataAll��gpa.all���Դ���3�����ݣ�����±�mydata
mydata<-subset(mydataAll,gpa.all>3)

#ѡȡmydata�е���������
n4<-mydata$X4��11��

#ɾ�������е���Чֵ
nu5 <- as.vector(na.omit(n4))

#����λ��ת��Ϊ����
xc = nu5%%9+1  
yc = nu5%/%9+1+1
datac = cbind(xc,yc) 

quadrat <- c(1,2,3,0,2,1,3,4,3)#����ֵ
mean <- mean(quadrat)#ƽ��ֵ
variance <-var(quadrat)#����
VMR<- variance/mean #VMR

result=""

if(VMR>1.5){
  result = "�ۼ��ֲ�"
}else if(VMR<0.5){
  result = "���ȷֲ�"
}else{
  result = "����ֲ�"
}

#����ͼ��
plot(datac,main=result,xaxt="n",yaxt="n")
axis(1,at=seq(1,9,1))
axis(2,at=seq(1,9,1))
grid(nx=3,ny=3,lwd=1,lty=2,col="blue")

VMR








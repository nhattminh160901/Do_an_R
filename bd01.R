# Bieu do 1: Tong So ca mac covid 19 tinh den ngay 22/1/2020

a = read.csv('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv', header = TRUE)

names(a)
str(a)

a$khu_vuc = paste(a$Province.State, a$Country.Region)

khu_vuc_mac <- a$khu_vuc[a$X1.22.20>0]
khu_vuc_mac
a

# Tao du lieu cho do thi
v <- a$X1.22.20
v <-  v[v>0]
v
names(v) = khu_vuc_mac
v

plt <- barplot(v,xlab = 'KHU VUC', ylab = 'GHI NHAN', col='steelblue',
               main = 'TONG SO CA MAC COVID 19 TINH DEN NGAY 22/1/2020',xaxt="n")
text(plt, par("usr")[3], labels = khu_vuc_mac, srt = 40, adj = c(1.1,1.1), xpd = TRUE, cex=0.6)
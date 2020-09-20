

rm(list = ls())

setwd("C:\\Users\\陈方舟\\Desktop\\Python\\CUMCM")

data1_quant = read.table("data1_quantile.csv", sep = ',', header = TRUE)
data1_risk = rep(0,nrow(data1_quant))

for(i in 1:nrow(data1_quant)){
  data1_risk[i] = qexp(data1_quant$quantile[i], rate=51.282)
}

data1_quant$risk <- data1_risk
write.table(data1_quant, "data1_risk.csv", sep = ",")

data2_quant = read.table("data2_quantile.csv", sep = ',', header = TRUE)
data2_risk = rep(0,nrow(data2_quant))

for(i in 1:nrow(data2_quant)){
  data2_risk[i] = qexp(data2_quant$quantile[i], rate=51.282)
}
data2_quant$risk <- data2_risk
write.table(data2_quant, "data2_risk.csv", col.names = , sep = ",")


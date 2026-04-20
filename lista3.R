#####################################################################
# Lista de exercícios 3
# Autor: Bruna Balsarini
# Data: 17/04/2026
#####################################################################

urlfile <- "https://codeberg.org/edsonzmartinez/CursoR/raw/branch/main/dadosclimaticosRP.csv"
clima   <- read.csv2(urlfile, fileEncoding = "Windows-1252")

# (a)
colnames(clima)

# (b)
head(clima, 6)

# (c)
tail(clima, 6)

# (d)
clima[20:40, ]

# (e)
clima[clima$ano == 1993, ]

# (f)
boxplot(clima$precipitacao ~ clima$mes,names=c("janeiro","fevereiro", "março", "abril", "maio", "junho", 
                                               "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"),
        main="Precipitação X Mês", ylab="precipitação", xlab="mês")

# (g)
par(mar = c(5, 4, 4, 2))
par(mar = c(4, 4, 3, 1)) 


tempo <- seq(
  from = as.Date("1991-01-01"),
  by = "month",
  length.out = nrow(clima)
)

plot(
  tempo,
  clima$tempmaxmensal,
  type = "l",
  col = "red",
  lwd = 1,
  ylim = range(c(clima$tempmaxmensal, clima$tempmenmensal), na.rm = TRUE),
  xlab = "",
  ylab = "Temperatura (graus)",
  main = "Temperaturas em Ribeirão Preto, 1991 a 2021"
)

lines(
  tempo,
  clima$tempmenmensal,
  col = "blue",
  lwd = 1
)



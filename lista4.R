#####################################################################
# Lista de exercícios 4
# Autor: Bruna Balsarini
# Data: 22/04/2026
#####################################################################

dados <- read.table("https://codeberg.org/edsonzmartinez/CursoR/raw/branch/main/antropo.txt")
head(dados)

# (1)
dados$V4 <- as.numeric(dados$V4)
dados$peso_kg <- dados$V4 * 0.45359237

# (2)
dados$V5 <- as.numeric(dados$V5)
dados$altura_cm <- dados$V5 * 2.54

# (3)
boxplot(dados$peso_kg, dados$altura_cm, names = c("Peso (kg)", "Altura (cm)"), main = "Boxplot: Peso e Altura")

# (4)
plot(dados$altura_cm, dados$peso_kg)

# (5)
dados$V3 <- as.numeric(dados$V3)
hist(dados$V3, main="Distribuição das Idades",)

hist(dados$V4, main="Distribuição de Pesos")

hist(dados$V5, main="Distribuição de Alturas")

# (6)
dados$V2 <- as.numeric(dados$V2)

plot(dados$peso_kg, dados$V2,
     xlab = "Peso (kg)", ylab = "Percentual de gordura",
     main = "Fat vs Peso")
abline(lm(V2 ~ peso_kg, data = dados), col = "red")

plot(dados$altura_cm, dados$V2,
     xlab = "Altura (cm)", ylab = "Percentual de gordura",
     main = "Fat vs Altura")
abline(lm(V2 ~ altura_cm, data = dados), col = "blue")

# (7)
dados$V1 <- as.numeric(dados$V1)
dados$V3 <- as.numeric(dados$V3)
dados$V6 <- as.numeric(dados$V6)
dados$V7 <- as.numeric(dados$V7)
dados$V8 <- as.numeric(dados$V8)
dados$V9 <- as.numeric(dados$V9)
dados$V10 <- as.numeric(dados$V10)
dados$V11 <- as.numeric(dados$V11)
dados$V12 <- as.numeric(dados$V12)
dados$V13 <- as.numeric(dados$V13)
dados$V14 <- as.numeric(dados$V14)
dados$V15 <- as.numeric(dados$V15)

variaveis_num <- dados[sapply(dados, is.numeric)]

correlacoes <- cor(variaveis_num, use = "complete.obs")

cor_Fat <- correlacoes["V2", ]

cor_Fat <- cor_Fat[names(cor_Fat) != "Fat"]

cor_Fat_ord <- sort(abs(cor_Fat), decreasing = TRUE)
cor_Fat_ord

# RESPOSTA: a variável mais correlacionada a Fat, depois dela mesma, é a variável Density que apresentou um
# coeficente de correlação de 0.98778240


# (8)
plot(dados$V3, dados$V8,
     xlab = "Idade",
     ylab = "Circunferência do Abdômen",
     main = "Idade vs Abdômen",
     pch = 19, col = "darkblue")

abline(lm(V8 ~ V3, data = dados), col = "red", lwd = 2)

# existe uma tendência de que pessoas entre 40 e 60 anos possuem uma circunfência maior do abdomen. 
# Em relação as pessoas idosas, não existe essa tendência. 


# (9)
dados$idade_bin <- ifelse(dados$V3 <= 45, 0, 1)
table(dados$idade_bin)

# (10)
vars_num <- dados[sapply(dados, is.numeric)]

vars_num <- vars_num[, names(vars_num) != "idade_bin"]

par(mfrow = c(1, 1))  

for (var in names(vars_num)) {
  boxplot(vars_num[[var]] ~ dados$idade_bin,
          xlab = "Grupo de Idade",
          ylab = var,
          main = paste(var, "por grupo de idade"),
          col = c("blue", "red"))
}

# (11)
vars_num <- dados[sapply(dados, is.numeric)]

vars_num <- vars_num[, names(vars_num) != "idade_bin"]

par(mfrow = c(1,1))
par(mar = c(4,4,2,1))

for (var in names(vars_num)) {
  
  cat("\nVariável:", var, "\n")
  print(shapiro.test(vars_num[[var]]))
  
  qqnorm(vars_num[[var]], main = paste("QQ-plot:", var))
  qqline(vars_num[[var]], col = "red")
}

# (12)
dados$idade_bin <- as.factor(dados$idade_bin)

vars_num <- dados[sapply(dados, is.numeric)]
vars_num <- vars_num[, names(vars_num) != "idade_bin"]

for (var in names(vars_num)) {
  cat("Variável:", var, "\n")
  
  teste <- t.test(vars_num[[var]] ~ dados$idade_bin)
  print(teste)
}

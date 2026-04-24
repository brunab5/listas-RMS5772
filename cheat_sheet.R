# ==============================================================================
# CHEAT SHEET
# ==============================================================================

exists ("x")   # verifica a existência de um objeto na seção atual 
rm("x")        # remove objetos ativos 
help()         # mostra informações sobre uma função 
class()        # retorna o tipo de dado (classe)
nzchar()       # verifica se os elementos de um vetor de caracteres são strings não vaziasv
sum()          # soma todos os valores presentes no argumento

# SOBRE MATRIZES 
matrix(c(), ncol=3, byrow=TRUE) # retorna matriz com 3 colunas 
dim()          # retorna a dimensão da matriz
t(M)           # retorna a transposta da matriz M
solve(M)       # retorna a inversa da matriz M
det(M)         # retorna o determinante da matriz M
diag(M)        # retorna os elementos da diagonal da matriz M
eigen(M)       # retorna os autovalores e autovetores da matriz M
################

levels()       # retorna os nívels do fator 
data.frame()   # cria um data frame
names()        # retorna os nomes das variáveis (colunas) de um data frame
mean()         # calcula média 
list()         # cria uma lista 
length()       # retorna ou define o tamanho de vetores e factors
rbind()        # combina vetores, matrizes ou outras estruturas de dados por linhas (um em cima do outro)
cbind()        # combina vetores, matrizes ou outras estruturas de dados por colunas (um do lado do outro) 
casefold(, upper=TRUE)  # deixa todas a letras maiúsculas (trocando por upper=FALSE, todas a letras serão minusculas)
sub("", "", nome_da_lista)      # substitui caracteres (primeiro o que será substituido, segundo pelo que, por ultimo onde/lista)
paste(mome_da_lista, "nova palavra", sep= " ")   # combina strings 
trimws(x)      # remove os espaços em branco no início e no final de x

# MEDIDAS DESCRITIVAS
sd(x)          # desvio padrão
var(x)         # variância
median(x)      # mediana
range(x)       # amplitude
min(x)         # mínimo
max(x)         # máximo
quantile(x)    # quantis
IQR(x)         # amplitude do intervalo interquartil
prod(x)        # produto
sort(x)        # ordenação
summary(x)     # resumos
####################


read.csv2()    # leitura de dados csv
head()         # mostra as primeiras linhas dos dados 
ifelse()       # função 
plot()         # gráficos
hist()         # faz histogramas
opition()      #   
mtext()        # ajusta o texto na margem
par()          # exibe como os parâmetros gráficos estão definidos 
pnorm()        # calcula a distribuição de probabilidade normal
qnorm()        # calcula a função quantil da distribuição normal
rnorm()        # gera números aleatórios que seguem uma distribuição normal 

###################

chisq.test(table(), simulate.p.value = TRUE)  # teste qui-quadrado com valor-p calculado por simulação monte carlo
fisher.test(table())   # teste exato de fisher
boxplot(, names=c(), main="", ylab="", xlab="")  # gera gráficos tipo boxplot
<- names(dados)[c(1, 2, 3)]      # define um vetor contendo apenas as colunas selecionadas dos dados 
setwd("")      # define o diretório de trabalho
var.test()     # teste de comparação de variáveis 
t.test()       # teste t de student 
kruskal.test() # teste não paramétrico de Kruskal-Wallis
layout(matrix())   # junta os gráficos em uma única imagem/layout
esquisser(dados)   # abre no browser uma página com as váriaveis dos dados para fazer gráficos ggplot






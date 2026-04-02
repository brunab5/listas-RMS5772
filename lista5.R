#####################################################################
# Lista de exercícios 5
# Autor: Bruna Balsarini
# Data: 06/04/2026
#####################################################################

CT <- 192
HDLc <- 54
TG <- 143
VLDLc <- TG/5
jejum <- TRUE

LDLc <- CT - HDLc - VLDLc 

if (TG >= 400) {
  warning("Resultado obtido é impreciso")
} else {
  
  if (jejum) { 
    if (LDLc >= 160 & TG >= 150) {
      warning("Concentrações informadas, com jejum, indicam hiperlipidemia mista")
    } else if (LDLc >= 160) {
      warning("As concentrações informadas indicam hipercolesterolemia isolada")
    } else {
      print(paste("O LDLc é:", LDLc))
    }
    
  } else {
    if (LDLc >= 160 & TG >= 175) { 
      warning("Concentrações informadas, sem jejum, indicam hiperlipidemia mista")
    } else if (LDLc >= 160) {
      warning("As concentrações informadas indicam hipercolesterolemia isolada")
    } else {
      print(paste("O LDLc é:", LDLc))
    }
  }
}







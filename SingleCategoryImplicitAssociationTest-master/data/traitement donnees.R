donnees2=read.csv("2_SCIAT IAT and likerts.csv")
donnees13=read.csv("13_SCIAT IAT and likerts.csv")

MoyPreTestNonCong2=mean(donnees2[c(21,90),]$requiredResponse.rt)
MoyPreTestCong2=mean(donnees2[c(91,160),]$requiredResponse.rt)
effetIatPre=MoyPreTestCong2-MoyPreTestNonCong2

MoyPostTestCong2=mean(donnees13[c(21,90),]$requiredResponse.rt)
MoyPostTestNonCong2=mean(donnees13[c(91,160),]$requiredResponse.rt)
effetIatPost=MoyPostTestCong2-MoyPostTestNonCong2


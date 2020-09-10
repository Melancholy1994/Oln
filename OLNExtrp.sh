#!/bin/bash
apt install figlet
clear
setterm -foreground green
echo "ϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟ"
setterm -foreground magenta
figlet -f small OLN-GROUP
echo "" 
setterm -foreground blue 
figlet -f term Extrapolador Algoritmo OLN

setterm -foreground green
echo "ϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟ"

figlet -f term _______________________________________________

setterm -foreground cyan
figlet -f small CHR1S
echo "ϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟϟ"

figlet -f term _______________________________________________
setterm -foreground white
echo "" 
echo "[^] Primer extrapolacion, escriba los 4 ultimos digitos de una Cc Generada"
read -p "(*_) 4 digitos /> " CCR
echo ""
echo "[^] Digite dos Tarjetas generadas de un bin de 6 digitos sin el Cvv y Fecha"
echo "" 
read -p "(*_) Tarjeta generada Num° 1, /> " TG1
read -p "(*_) Tarjeta generada Num° 2, /> " TG2
echo ""
setterm -foreground red 
figlet -f term ========== Extrapolacion Basica ==========
echo "" 
echo "[^] Bin Extrapolado ${TG1:0:7}x${TG1:8:1}x${TG1:10:1}x$CCR"
echo "[^] Bin Extrapolado ${TG2:0:7}x${TG2:8:1}x${TG2:10:1}x$CCR"
echo ""
echo "[^] Nota.. Copie las dos Tarjetas extrapoladas y genere una tarjeta de cada bin en DexGG-Gen y pegue Acontinuacion"
echo ""
read -p "(*_) Tarjeta generada Num° 1 /> " TGX1
read -p "(*_) Tarjeta generada Num° 2 /> " TGX2
a1=${TGX1:0:8} 
b1=${TGX1:9:1}
c1=${TGX1:10:1}
M1=$((b1 + c1))
a2=${TGX2:0:8} 
b2=${TGX2:9:1}
c2=${TGX2:10:1}
M2=$((b2 + c2))
let N1=$M1/3
let N2=$M2/3
let R1=$N1*7
let R2=$N2*7
P=$((R1 + R2))
setterm -foreground green 
echo ""
figlet -f term ========== Extrapolacion OLN-GROUP ==========  -c
echo ""
echo "[#] nuevo Bin" $a1$P"xxxxxx"
echo "[#] nuevo Bin" $a2$P"xxxxxx"
echo ""

echo ""
figlet -f term By: @WifeyLiffeutl 
figlet -f term Channel Telegram: @OrdenDelLoboNegro
echo ""
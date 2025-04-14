#!/bin/bash

read -p 'Digite seu nome:' nome
echo "Seja Bem Vindo, $nome!"

echo "Calculadora Inteligente"
echo "Escolha a operação:"
echo "1 - Adição"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
echo "5 - Sair"
   
read -p "Digite sua escolha: " opcao

if [ "$opcao" -eq 5 ]; then
    echo "Saindo da calculadora..."
    exit 0
  fi

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

case $opcao in
  1) resultado=$((num1 + num2))
     echo "Resultado: $resultado"
     echo "$num1 + $num2 = $resultado" >> historico.txt ;;
  2) resultado=$((num1 - num2))
     echo "Resultado: $resultado"
     echo "$num1 - $num2 = $resultado" >> historico.txt ;;
  3) resultado=$((num1 * num2))
     echo "Resultado: $resultado" 
     echo "num1 * num2 = $resultado" >> historico.txt ;;
  4) if [ $num2 -ne 0 ]; then
       resultado=$(echo "scale=2; $num1 / $num2" | bc)
       echo "Resultado: $resultado"
       echo "num1 / num2 = $resultado" >> historico.txt
     else
       echo "Erro: Divisão por zero!"
     fi ;;
  *) echo "Opção inválida!" ;;
esac

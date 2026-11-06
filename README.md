# Calculadora Inteligente

Este projeto apresenta uma calculadora simples com versões em Shell Script e Python. Ela solicita o nome do usuário, apresenta um menu de operações e calcula adição, subtração, multiplicação ou divisão de dois números inteiros. O programa informa se houver tentativa de divisão por zero e registra as operações no arquivo `historico.txt`.

## Arquivos

- `calculadora.sh`: calculadora desenvolvida em Shell Script.
- `calculadora.py`: versão em Python baseada na calculadora em Shell Script. Os dois arquivos são programas independentes.

## Executar o arquivo .sh

No terminal Bash, entre na pasta do projeto e execute:

```bash
bash calculadora.sh
```

Para a divisão na versão `.sh`, é necessário ter o programa `bc` instalado. O histórico é criado na pasta em que o comando é executado.

## Executar o arquivo Python

Com o Python 3 instalado, execute no terminal:

```bash
python calculadora.py
```

Em alguns sistemas, utilize `python3 calculadora.py`. O histórico é criado na pasta em que o comando é executado.

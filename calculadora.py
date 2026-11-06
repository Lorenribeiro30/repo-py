"""Calculadora em Python baseada na calculadora.sh do repositório."""

nome = input('Digite seu nome: ')
print(f'Seja bem-vindo, {nome}!')
print('\nCalculadora Inteligente')
print('1 - Adição\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n5 - Sair')
opcao = input('Digite sua escolha: ').strip()

if opcao == '5':
    print('Saindo da calculadora...')
elif opcao not in ('1', '2', '3', '4'):
    print('Opção inválida!')
else:
    try:
        numero1 = int(input('Digite o primeiro número inteiro: '))
        numero2 = int(input('Digite o segundo número inteiro: '))
        if opcao == '1':
            operacao, resultado = '+', numero1 + numero2
        elif opcao == '2':
            operacao, resultado = '-', numero1 - numero2
        elif opcao == '3':
            operacao, resultado = '*', numero1 * numero2
        elif numero2 == 0:
            operacao, resultado = '/', None
        else:
            operacao, resultado = '/', numero1 / numero2
        if resultado is None:
            print('Erro: divisão por zero!')
        else:
            print(f'Resultado: {resultado}')
            with open('historico.txt', 'a', encoding='utf-8') as arquivo:
                arquivo.write(f'{numero1} {operacao} {numero2} = {resultado}\n')
    except ValueError:
        print('Erro: digite números inteiros válidos.')

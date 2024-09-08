programa
{
	/*Declaração das variáveis globais
    real saldo = 150.00 // Saldo inicial da conta
    cadeia nome // Nome do cliente
    inteiro senha = 3589 // Senha de acesso*/
    real saldo = 150.00
    cadeia nome
    inteiro senha = 3589

    funcao inicio() {
	//Tela de boas-vindas e menu principal
      escreva("-------------------------------------------\n")
      escreva("     > BEM VINDE AO BANCO FINANCER <")
      escreva("\n-------------------------------------------")
      escreva("\nInsira seu Nome: \n")
      leia(nome)
      escreva("Olá, ", nome, " é um prazer ter você por aqui! \n")
      
      inteiro opcao
     //Lógica para escolha da opção do usuário e chamada das funções correspondentes
      escreva("\nEscolha uma opção:\n")
      escreva("1. Ver saldo\n")
      escreva("2. Ver Extrato\n")
      escreva("3. Fazer saque\n")
      escreva("4. Fazer depósito\n")
      escreva("5. Fazer Transferência\n")
      escreva("6. Sair\n")
      leia(opcao)
      
      escreva("A opção selecionada foi: " +opcao + "\n")
      
      escolha(opcao){
        caso 1:
          verSaldo()

        caso 2:
          verExtrato()

        caso 3:
          fazerSaque()

        caso 4:
          fazerDeposito()

        caso 5: 
          fazerTransferencia()

        caso 6: 
          sair()
          
        caso contrario:
          erro()
      }
    }

    funcao verSaldo(){
	// Função para verificar o saldo da conta
     // Solicita a senha e verifica se está correta
      escreva("Para ter acesso a seu Saldo, Insira sua senha: ")
      leia(senha)

        se(senha == 3589){
        escreva("Seu saldo atual é: ", saldo, "\n")
        inicio()
        }
        senao {
          escreva("Dados incorreto! Tente novamente!\n")
           verSaldo()
        }
    }

    funcao verExtrato(){
	// Função para exibir o extrato da conta
     // Solicita a senha e exibe um extrato simplificado (pode ser melhorado
      escreva("Para acessar seu extrato, Insira sua Senha: ")
      leia(senha)

      se(senha != 3589){
        escreva("Acesso autorizado")
        verExtrato()
      }senao{
        escreva("Mercadorias: R$ 500,00\nAluguel: R$ 650,00\nSalário: R$ 1.600,00\n")
        inicio()
      }
    }

    funcao fazerSaque(){
      // Função para realizar um saque
      // Solicita a senha, o valor do saque e verifica se há saldo suficiente
      real saque

      escreva("Para você poder sacar, Insira sua Senha: ")
      leia(senha)

      se(senha == 3589){
         escreva("Qual o valor para saque? ") 
         leia(saque)
      
      se (saque <= 0) {
            escreva("Por favor, informe um número válido.\n")
            fazerSaque()

      } senao se (saque > saldo){
        escreva("Operação não autorizada")
        
      } senao {
        saldo = saldo - saque
        verSaldo()
      } 
    } 
    senao{
         escreva("Dados incorreto! Tente novamente!\n")
           fazerSaque()
      }
    }

    funcao fazerDeposito() {
	// Função para realizar um depósito
     // Solicita a senha, o valor do depósito e atualiza o saldo
      real deposito

      escreva("Para depositar, Insira sua Senha: ")
      leia(senha)

      se(senha == 3589){
        escreva("Qual o valor para depósito? ")
        leia(deposito)
      

      se (deposito <= 0){
        escreva("Operação não autorizada!\nPor favor, informe um número válido.\n")
        fazerDeposito()
      } senao {
        saldo = saldo + deposito
        verSaldo()
      }
      }
      senao{
        escreva("Dados Incorretos! Tente novamente!")
        fazerDeposito()
      }
    }
    
    funcao fazerTransferencia(){
	// Função para realizar uma transferência
     // Solicita a senha, a conta de destino e o valor a ser transferido
      real transferencia
      inteiro conta = 1234567

        escreva("Para fazer uma transferencia, Insira sua senha: ")
        leia(senha)

        se(senha == 3589){
          escreva("Insira o número da conta bancaria:")
          leia(conta)
        

      se(conta >= 1234567){
         escreva("Insira valor da transferencia: ") 
         leia(transferencia)
      
      se (transferencia <= 0) {
            escreva("Por favor, informe um número válido.\n")
            fazerTransferencia()

      } senao se (transferencia > saldo){
        escreva("Operação não autorizada")
        
      } senao {
        saldo = saldo - transferencia
        escreva("Novo saldo: ", saldo)
        inicio()
      } 
    } 
    senao{
         escreva("Dados incorreto! Tente novamente!\n")
           fazerTransferencia()
      }
    }
    senao{
        escreva("Operação invalida!")
        fazerTransferencia()
      }
    }

   funcao sair(){
   	// Função para encerrar o programa e exibir uma mensagem de despedida
      escreva("Obrigado por usufruir os serviços do banco: ", nome, " foi um prazer ter você por aqui! \n -Banco NexGen \n")

    }
    
    funcao erro() {
    	// Função para tratar opções inválidas
     // Exibe uma mensagem de erro e retorna ao menu principal
      escreva("opção inválida")
      inicio()
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5004; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
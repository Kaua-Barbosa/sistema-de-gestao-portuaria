programa
{
inclua biblioteca Util --> u
inclua biblioteca Arquivos --> a
	funcao inicio()
	{
		cadeia linha
		inteiro arquivo,posi,h,k,numb = 1 ,nu = 1

		logico res 
		
		cadeia n[2][6] 
		inteiro i = 0 , j = 0
		cadeia rotulo[7] 

		cadeia c[2][6]
		inteiro a,b,opc = 0
		cadeia root[6]

		cadeia nbc[450]
		inteiro nc = 0


		rotulo[0] = "nome do navio: "
		rotulo[1] = "data: "
		rotulo[2] = "horario: "
		rotulo[3] = "país de origem: "
		rotulo[4] = "tipo de carga: "
		rotulo[5] = "quantidade de containers: "

		root[0] = "navio de origem ou destino: "
		root[1] = "data: "
		root[2] = "horario: "
		root[3] = "tipo de carga: "
		root[4] = "numero de indentificação: "

		

		escreva("                  __/___","\n")            
		escreva("          _____/______|","\n")           
		escreva("_______/_____/_______/_____","\n")     
		escreva("|                <    <    <  |","\n")    
		escreva("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~","\n") 
		u.aguarde(2000)
		limpa()
enquanto (opc != 7)
	{
		escreva("\nseja bem vindo ao nosso sistema escolha uma das opções a seguir:")
		u.aguarde(2500)
	

	
	     escreva("\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","\n")
		escreva("[1]entrada de navio\n")
		escreva("[2]saida de navio\n")
		escreva("[3]entrada de container\n")
		escreva("[4]saida de container\n")
		escreva("[5]listar navios atracados\n")
		escreva("[6]listar containers no porto\n")
		escreva("[7]sair do programa\n")
		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","\n")
		leia(opc)
		limpa()


	escolha(opc){
	 caso (1):
	
		para (i = 0 ; i < 1 ; i++ ){
			escreva("entrada de navio")
			escreva("\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
			para( j = 0 ; j < 6 ; j++){
				escreva(rotulo[j])
				leia(n[i][j])
			}	
			arquivo = a.abrir_arquivo("./navio.txt",a.MODO_ACRESCENTAR)
					a.escrever_linha("navio: " + n[0][0],arquivo)
					a.escrever_linha("data: " + n[0][1],arquivo)
					a.escrever_linha("hora: " + n[0][2],arquivo)
					a.escrever_linha("origem: " + n[0][3],arquivo)
					a.escrever_linha("tipo de carga: " + n[0][4],arquivo)
					a.escrever_linha("quantidade de containers: " + n[0][5],arquivo)
					a.escrever_linha("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-",arquivo)

					a.fechar_arquivo(arquivo)
			
		}
		limpa()
		escreva("operaçao feita com sucesso")
		pare	
		
	 caso(2):

			//apresentar na tela
			arquivo = a.abrir_arquivo("C:/Users/User/Desktop/pr porto stud/navio.txt",a.MODO_LEITURA)
			enquanto (nao a.fim_arquivo(arquivo)){
				linha = a.ler_linha(arquivo)
				se(linha != ("") ){
					escreva(linha,"\n")
					nu++	
				}
				
			}
			a.fechar_arquivo(arquivo)
			
			escreva("\npara retirar o navio apenas tecle o numero da sua posição: ")
			leia(posi)

			limpa()

			//registrar linhas no vetor "nbc"
			arquivo = a.abrir_arquivo("./navio.txt",a.MODO_LEITURA)
			enquanto (nao a.fim_arquivo(arquivo)){ 
			linha = a.ler_linha(arquivo)
				se(linha != ("") ){
					(nbc[nc]) = linha
					nc++
						
				}

				
			}
			a.fechar_arquivo(arquivo)

			//escrever vetor
			para(nc = 0; nc < 350 e nbc[nc] != ""  ; nc++){
				escreva(nbc[nc],"\n")
			}
			
			
			//limpar arquivo
			arquivo = a.abrir_arquivo("./navio.txt",a.MODO_ESCRITA)
			a.fechar_arquivo(arquivo)

			//reescrever arquivo
			arquivo = a.abrir_arquivo("./navio.txt",a.MODO_ACRESCENTAR)
			enquanto( nc <= 350 ){
				linha = nbc[nc]
				a.escrever_linha(linha,arquivo)
				nc++
				
			}
			a.fechar_arquivo(arquivo)
			escreva("operação concluida")
			pare

		
		caso(3):

			//entrada de dados
			para (a = 0 ; a < 1 ; a++){
				escreva("entrada de container")
				escreva("\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
				para(b = 0 ; b < 5 ; b++){
					escreva(root[b])
					leia(c[a][b])
				}
				//armazenamento de dados
				arquivo = a.abrir_arquivo("./container.txt",a.MODO_ACRESCENTAR)
					a.escrever_linha("navio origem/destino: " + c[0][0],arquivo)
					a.escrever_linha("data: " + c[0][1],arquivo)
					a.escrever_linha("hora: " + c[0][2],arquivo)
					a.escrever_linha("tipo de carga: " + c[0][3],arquivo)
					a.escrever_linha("numero de indentificação: " + c[0][4],arquivo)
					a.escrever_linha("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-",arquivo)

					a.fechar_arquivo(arquivo)

				
			}
			limpa()
			escreva("operação feita com sucesso")
			pare

		caso(4):
			
			pare
			
		caso(5):
			arquivo = a.abrir_arquivo("./navio.txt",a.MODO_LEITURA)
			enquanto (nao a.fim_arquivo(arquivo)){
			linha = a.ler_linha(arquivo)
				se(linha != ""){
					escreva(linha,"\n")
					nu++
				}	
			}
			a.fechar_arquivo(arquivo)
			pare
			
		caso(6):
			arquivo = a.abrir_arquivo("./container.txt",a.MODO_LEITURA)
			enquanto (nao a.fim_arquivo(arquivo)){
			linha = a.ler_linha(arquivo)
				se(linha != ""){
					escreva(linha,"\n")
					nu++
				}	
			}
			a.fechar_arquivo(arquivo)
			pare
		
		caso(7):
			escreva("ok")
			u.aguarde(1000)
			pare
		
		caso contrario:

			escreva("opção invalida")
			u.aguarde(3000)
			
		
		limpa()
		}
	}
	
	}
}





/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4952; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
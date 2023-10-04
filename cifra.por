programa
{
	inclua biblioteca Texto --> t

	inteiro coisa
	inteiro letra_escrita
	inteiro num_caracter
	inteiro chave = 1
	caracter letra
	caracter letras[27] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' '}



	funcao criptografamento(cadeia frase){
		num_caracter = t.numero_caracteres(frase)

		para(inteiro i = 0; i < num_caracter; i++){
			letra = t.obter_caracter(frase, i)
			para(inteiro x = 0; x < 26; x++){
				se(letra == letras[x]){
					letra_escrita = x + chave
					se(letra_escrita > 26){
						letra_escrita = letra_escrita - 26
					}
					escreva(letras[letra_escrita])
				}
			}
		}
		
	}
	
	funcao inicio()
	{
		cadeia criptografar

		escreva("1-Criptografar\n2-Descriptografar\nInsira sua escolha:")
		leia(coisa)
		limpa()

		escolha(coisa)
		{
			caso 1:
				escreva("Insira a frase a ser criptografada(apenas minusculo e sem números):")
				leia(criptografar)
				escreva("Insira a chave(apenas números positivos):")
				leia(chave)
				limpa()

				escreva("Cifra de cézar com chave ", coisa, ":\n")
				
				criptografamento(criptografar)
			pare

			caso 2:
				escreva("Insira a frase a ser criptografada(apenas minusculo e sem números):")
				leia(criptografar)
				limpa()
				
				escreva("Alguma dessas frases é a certa\n \n")
				para(chave = 0; chave < 26; chave++){
					criptografamento(criptografar)
					escreva("\n")
				}
				
			pare
		}
	}
}

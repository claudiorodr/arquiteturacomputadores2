;Perifericos
OK	 			EQU 	1A0H 	; Localiza�ao na memoria de dados onde � introduzido pelo utilizador o valor de OK
NR_SEL			EQU		1B0H	; Localiza�ao na memoria de dados onde � introduzido o valor referente ao NR_SEL / op�oes
Username 		EQU 	1C0H	; Localiza�ao na memoria de dados onde � introduzido o username pelo utilizador
Password		EQU		1D0H	; Localiza�ao na memoria de dados onde � introduzido a password pelo Utilizador
ON_OFF			EQU		1E0H

;Display
DisplayUser 	EQU 	220H ; Localiza�ao do campo de utilizador no Menu
DisplayPass		EQU		240H ; Localiza�ao do campo da Password no Menu
DisplaySoma		EQU		237H ; Localiza�ao do campo do valor a pagar pelo utilizador no Menu
Display 		EQU 	200H ; Inicio do display do Menu
Display_END 	EQU 	26FH ; Fim do display do Menu

; Banco de memoria
VariavelUser	EQU 	2A0H ; Localiza�ao na memoria do banco de dados na mem�ria

;Constantes
MLogin 			EQU 	1		; valor da op�ao no Menu principal referente ao Login
MRegisto		EQU 	2		; Valor da op�ao no Menu principal referente ao registo
TamanhoPassword EQU 	3		; Constante referente ao tamanho minimo da password
MaxCaracteres	EQU		8		; Constante referente ao numero maximo de caracteres a serem utilizados para o username e password
CaraterVazio 	EQU		20H		; Utilizado para referir quando termina a sequ�ncia de caracteres
FIM				EQU		00H		; Constante utilizada para vevrificar se o fim de uma certa sequencia d caracteres termina

MmamaMia		EQU 	1		; Valor da op�ao no menu das pizzas referente � pizza MamaMia
MCasa 			EQU 	2		; Valor da op�ao no menu das pizzas referente � pizza Casa
MPeperonni		EQU 	3		; Valor da op�ao no menu das pizzas referente � pizza Peperonni
MCarbonara		EQU 	4		; Valor da op�ao no menu das pizzas referente � pizza Carbonara
Mmarisqueira 	EQU 	5		; Valor da op�ao no menu das pizzas referente � pizza Marisqueira

MGrande 		EQU 	1		; Valor da op�ao no menu do tamanho das pizzas referente ao tamanho Grande
MPequena 		EQU 	2		; Valor da op�ao no menu do tamanho das pizzas referente ao tamanho pequeno
Pgrande			EQU 	8		; Constante referente ao valor de cada pizza de tamanho pequeno
Ppequena		EQU 	5		; Constante referente ao valor de cada pizza de tamanho grande
Stackpointer	EQU 	6000H
SomaResultado	EQU 	100H	; Localiza�ao na memoria de dados onde � armazenado o valor da Soma 

Place 3000H					; Coloca numa posi�ao do banco de memoria o conjunto de Strings que compo�m o menu inicial
MenuInicio: 
	String "Menu Principal  "
	String "1 - Login       "
	String "2 - Registo     "
	String "                "
	String "                "
	String "                "
	String "                "

Place 3080H					;Coloca numa posi�ao do banco de memoria o conjutno de Strings que compo�m o menu do Registo
MenuRegisto: 
	String "Menu Registo    "
	String "Username :      "
	String 00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H
	String "Password :      "
	String 00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H
	String "                "
	String "                "

Place 3100H					;Coloca numa posi�ao do banco de memoria o conjutno de Strings que compo�m o menu de Login
MenuLogin : 
	String "Menu Login      "
	String "Username :      "
	String 00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H
	String "Password :      "
	String 00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H
	String "                "
	String "                "

Place 3180H					;Coloca numa posi�ao do banco de memoria o conjutno de Strings que compo�m o menu de erro de op�ao errada
MenuErroInicio: 
	String "Menu Erro       "
	String "                "
	String "    Op�ao       "
	String "    Errada      "	
	String "                "
	String "                "
	String "                "
		
Place 3200H					;Coloca numa posi�ao do banco de memoria o conjutno de Strings que compo�m o menu de erro do Registo 
MenuErroReg:
	String "Menu ErroReg    "	
	String "                "
	String "Password com    "
	String "carateres       "
	String "insuficientes   "
	String "                "
	String "                "
	
Place 3280H					;Coloca numa posi�ao do banco de memoria o conjutno de Strings que compo�m o menu do erro de Login
MenuErroLogin : 	
	String "Menu ErroLogin  "
	String "                "
	String " Username       "
	String "   ou           "	
	String " Password       "
	String " Errados        "
	String "                "

Place 3300H					;Coloca numa posi�ao do banco de memoria o conjutno de Strings que compo�m o menu das Pizzas
MenuPizzas : 
	String "Menu Pizzas     "
	String "1 - MamaMia     "
	String "2 - Casa        "
	String "3 - Peperonni   "	
	String "4 - Carbonara   "
	String "5 - Marisqueira "
	String "6 - Pagamento   "
	
Place 3380H					;Coloca numa posi�ao do banco de memoria o conjutno de Strings que compo�m o menu do tamanho das Pizzas
MenuTamanhoPizzas : 	
	String "Menu Tamanho    "
	String "1 - Grande      "
	String "2 - Pequena     "
	String "                "
	String "                "
	String "                "
	String "                "
	
Place 3400H					;Coloca numa posi�ao do banco de memoria o conjutno de Strings que compo�m o menu do P�s-Login ou do P�s-registo
MenuPosLogin :
	String "Menu escolha    "
	String "1 - Pedido      "
	String "2 - Logout      "
	String "                "
	String "                "
	String "                "
	String "                "

Place 3480H					;Coloca numa posi�ao do banco de memoria o conjunto de Strings que compo�m o menu do Pagamento
MenuPagamento:
	String "Menu Pagamento  "
	String "                "
	String "O valor a pagar:"
	String 00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H
	String "   euros        "
	String "                "
	String "                "
	
Place 3500H
MenuFinalPagamento:
	String "Menu Pagamento  "
	String "                "
	String " Pagamento      "
	String " validado       "
	String "                "
	String " Logout :  OK   "
	String "                "
	
Place 0000H
Inicio : 
		MOV R0, Principio			; inicializa o apontador para o inicio das instru�oes na memoria
		MOV R10, VariavelUser		; inicializa o apontador para a VariavelUser
		JMP R0						; Salta para o inicio das instru�oes

Place 1000H
Principio : 
		MOV SP,Stackpointer
		CALL LimpaDisplay			;Chama a rotina de atualiza��o do display
		CALL LimpaPerifericos		;Chama a rotina de atualiza��o dos perifericos
		MOV R0,ON_OFF				;inicializa o ON_OFF
ON : 	MOVB R1, [R0]				
		CMP R1,1
		JNE ON
Ligado : 
		MOV R2,MenuInicio			; inicializa apontador para o MenuInicio
		CALL MostraDisplay			; chama a rotina de atualiza�ao do display com o novo menu
		CALL LimpaPerifericos		; chama a rotina de atualiza�ao dos perifericos
		MOV R0, NR_SEL				; inicializa as op�oes
		MOV R3, OK					; inicializa o OK
LeOpcao: 
		MOVB R4,[R3]				; l� o valor de OK
		CMP R4, 1					; Aguarda pela inser�ao do utilizador da opera�ao OK de modo a poder efetuar as restantes opera�oes da rotina
		JNE LeOpcao					; Salta para o inicio da rotina caso a condi�ao seja falsa
		MOVB R1, [R0]				; l� qual a op�ao escolhida
		CMP R1,0					; Aguarda para que o utilizador insira uma op�ao de operacao
		JEQ LeOpcao					; Salta para o inicio da rotina caso a condi�ao seja verdadeira
		CMP R1, MLogin				; Verifica se � uma opera�ao de Login
		JEQ OLogin					; Salta para uma nova rotina caso seja verdade
		CMP R1, MRegisto			; Verifica se � uma opera�ao de Registo
		JEQ ORegisto				; Salta para uma nova rotina caso seja verdade
		CALL RotinaERRO				;Caso nenhuma das op�oes de opera�oes tenha sido escolhida
		JMP Ligado					;volta a inicializar o programa
		
; rotina responsavel por limpar/atualizar o display
LimpaDisplay : 
		PUSH R0 
		PUSH R1 
		PUSH R2 
		MOV R0,Display				; apontador para a base do display
		MOV R1,Display_END			; apontador para o fim do display
CicloLimpa :
		MOV R2, CaraterVazio		;coloca carater vazio numa posi�ao de memoria
		MOVB [R0],R2				;le o valor do caracter vazio e coloca-o na posi�ao de memoria apontada
		ADD R0,1					;anda uma posi�ao de memoria para a frente
		CMP R0,R1					;verifica se o inicio � menor ou igual ao fim
		JLE CicloLimpa				;salta para o inicio do ciclo caso seja verdade
		POP R2
		POP R1
		POP R0
		RET
		
; rotina responsavel pela limpeza dos perifericos de entrada
LimpaPerifericos:
		PUSH R0
		PUSH R1
		PUSH R2
		PUSH R3
		PUSH R4
		PUSH R5
		MOV R0,ON_OFF				;inicializa o apontador com o endere�o do periferico
		MOV R1, NR_SEL				;inicializa o apontador com o endere�o do periferico
		MOV R2, OK					;inicializa o apontador com o endere�o do periferico
		MOV R3, Username			;inicializa o apontador com o endere�o do periferico
		MOV R4, Password			;inicializa o apontador com o endere�o do periferico
		MOV R5, FIM					;inicializa o apontador com a constante
		MOVB [R0], R5				;Guarda o valor o bit vazio 00h no endere�o do periferico
		MOVB [R1], R5				;Guarda o valor o bit vazio 00h no endere�o do periferico
		MOVB [R2], R5				;Guarda o valor o bit vazio 00h no endere�o do periferico
CicloLimpaPerif:
		MOVB R6, [R3]				;Guarda o Username no registo
		MOVB R7, [R4]				;Guarda a Password no registo
		CMP R6, R5					;V� se terminou
		JNE limpaUser				;Se n�o terminou salta para limpaUser
		CMP R7, R5					;V� se terminou
		JNE limpaPass				;Se n�o terminou salta para limpaPass
		JMP limpaCont				;Quando terminado salta para limpaCont
limpaUser:
		MOVB [R3], R5				;Zera caracter 
		ADD R3,1					;Passa para pr�ximo caracter
		JMP CicloLimpaPerif			;Volta efectuar o ciclo
limpaPass:
		MOVB [R4], R5				;Zera caracter
		ADD R4, 1					;Passa para pr�ximo caracter
		JMP CicloLimpaPerif			;Volta efectuar o ciclo
limpaCont:
		POP R5						;Liberta valor do registo
		POP R4						;Liberta valor do registo
		POP R3						;Liberta valor do registo
		POP R2						;Liberta valor do registo
		POP R1						;Liberta valor do registo
		POP R0						;Liberta valor do registo
		RET

MostraDisplay :
		PUSH R0
		PUSH R1
		PUSH R2
		PUSH R3
		MOV R0, Display				;apontador para a base do display
		MOV R1, Display_END			;apontador para o fim do display
Ciclo:	MOV R3,[R2]					;
		MOV [R0], R3				;
		ADD R2, 2					;
		ADD R0, 2					;
		CMP R0, R1					;
		JLE Ciclo					;
		POP R3						;Liberta valor do registo
		POP R2						;Liberta valor do registo
		POP R1						;Liberta valor do registo
		POP R0						;Liberta valor do registo
		RET
		
ORegisto :
		MOV R2, MenuRegisto			;inicializa o apontador para o menu especifico
		CALL MostraDisplay			;chama a rotina de atualiza��o do display
		CALL LimpaPerifericos		;chama a rotina de atualiza��o dos perifericos
		MOV R0, OK					;inicializa o apontador com o endere�o do periferico
		JMP CicloReg				;salta para continuar a rotina
		
OLogin :
		MOV R2, MenuLogin			;inicializa apontador para o menu especifico
		CALL MostraDisplay			;chama a rotina de atualiza�ao do display
		CALL LimpaPerifericos		;chama a rotina de atualiza�ao dos perifericos de entrada
		MOV R0, OK					;inicializa o apontador com o valor do periferico 
CicloLogin:
		MOVB R1, [R0]				;l� o valor do periferico
		CMP R1, 0					; verifica se esta a zero
		JEQ CicloLogin				; salta para o inicio do ciclo caso seja verdade
		MOV R10, VariavelUser		;inicializa o apontador para a VariavelUser
		MOV R8, R10					;copia para um novo apontador, para nao destruir o indice
		MOV R1, 8					; inicializa o apontador com a constante 8
		ADD R10, R1					; adiciona ao primeiro apontador de modo a obter a posi�ao de inser��o de dados no banco de memoria(na mesma linha)
		MOV R9, R10					;copia para um novo apontador, o valor atualizado do antigo apontador referente � VariavelUser
		MOV R0, Username			;L� no endere�o onde foi introduzido o Username 
		MOV R1, DisplayUser			;Reserva o endere�o do display para representar o Username introduzido no periferico
		MOV R2, Password			;L� no endere�o onde foi introduzido a password
		MOV R3, DisplayPass			;Reserva o endere�o do display para representar a password introduzida no periferico
		MOV R4, R8					;Reserva o endere�o para escrever na base de dados
		MOV R5, R9			
adicionaLogin:	
		MOVB R6,[R0]				;Obt�m o pr�ximo caracter do Username (8bits)
		CMP R6,FIM					;V� se � o byte terminador do Username
		JZ verfimLogin				;Caso seja, acaba	
		MOVB [R1], R6				;Guarda o caracter na zona de memoria do destino
		PUSH R1
		MOVB R1, [R4]				;
		SUB R6, R1					;
		POP R1
		CMP R6, 0					;
		JNE CicloCompara			;
		ADD R4, 1					;Endere�o do pr�ximo caracter do periferico
		ADD R0, 1					;Endere�o do pr�ximo caracter do display
		ADD R1, 1					;
		JMP adicionaLogin			;Faz de novo o ciclo
verfimLogin:
		MOVB R8, [R2]				;
		CMP R8, FIM					;V� se � o byte terminador da password
		JZ ComparaBanco				;Caso seja, acaba
		PUSH R1	
		MOVB R1,[R5]				;
		MOV R7, 2AH					;Escreve o * em vez do caracter
		MOVB [R3], R7				;Guarda o caracter na zona de memoria do destinO
		SUB R8, R1					;
		CMP R8, 0					;
		POP R1						;
		JNE CicloCompara			;
		ADD R2, 1					;Endere�o do pr�ximo caracter do periferico
		ADD R3, 1					;Endere�o do pr�ximo caracter do display
		ADD R5, 1					;				;
		JMP adicionaLogin			;Ainda n�o achou, passa para o elemento seguinte
		
ComparaBanco:
		MOV R2,24					;coloca o apontador com o valor 24
		ADD R10, R2					;para ser adicionado ao valor da posi�ao da password no banco de dados
		MOV R1, VariavelUser		;de modo a que aquando da nova inser�ao de um username e password
		MOV R1,[R1]					;
		MOV R1, R10					;o valor da posi�ao atualiza com a nova posi�ao, de modo a nao sobrepor
		CALL  PosLogin				;chama a rotina para continuar com o programa

CicloCompara:						
		PUSH R2	
		PUSH R3
		MOVB R3 ,[R8]				;No banco, se encontar endere�os a zero
		CMP R3, 0					;Significa que o login introduzido n�o foi registado
		JEQ erroLogin				;Apresentando uma imagem de erro
		POP R3
		MOV R2, 32					;
		ADD R10, R2					;Aponta para pr�ximo endere�o no banco de dados
		ADD R8, R2					;Aponta para pr�ximo endere�o no banco de dados
		ADD R4, R2					;Aponta para pr�ximo endere�o no banco de dados
		ADD R5, R2					;Aponta para pr�ximo endere�o no banco de dados
		POP R2		
		CALL adicionaLogin
		RET
		
erroLogin : 
		MOV R2, MenuErroLogin
		CALL MostraDisplay
		CALL LimpaPerifericos
		MOV R0, OK
cicloerro:
		MOVB R1, [R0]
		CMP R1, 1
		JNE cicloerro
		CALL Ligado

CicloReg:
		MOVB R1, [R0]				;Tranfere periferico do ok
		CMP R1, 0					;
		JEQ CicloReg				;Confirma se bot�o ok est� pressionado
		MOV R8, R10					;Move endere�o atual do banco user para	R8
		MOV R1, 8					;
		ADD R10, R1					;
		MOV R9, R10					;Move para R9 endere�o do banco pass
		MOV R0, Username			;L� no endere�o onde foi introduzido o Username 
		MOV R1, DisplayUser			;Reserva o endere�o do display para representar o Username introduzido no periferico
		MOV R2, Password			;L� no endere�o onde foi introduzido a password
		MOV R3, DisplayPass			;Reserva o endere�o do display para representar a password introduzida no periferico
		MOV R4, R8					;Reserva o endere�o para escrever na base de dados
		MOV R5, R9					;Reserva o endere�o para escrever na base de dados
		PUSH R7
		PUSH R8	
		PUSH R9		
Conta : MOV R8, 0					;contador de caracteres da password inicializado a 0


verposmem:		
		MOVB R7, [R4]				; fica com a posi�ao do banco de memoria
		CMP R7, 0					; verifica se a posi�ao esta livre
		JEQ adiciona				; caso esteja livre, adiciona os caracteres nessa posicao
		POP R7						;caso contrario incrementa a sua posi�ao
		MOV R9 , 32					; fica com o valor 32
		ADD  R4, R9					; adiciona a posi�ao de memoria
		POP R9
		JMP verposmem				; volta a verificar se a nova posi�ao de memoria esta livre
adiciona:
		MOVB R6,[R0]				;Obt�m o pr�ximo caracter do Username (8bits)
		CMP R6,FIM					;V� se � o byte terminador do Username
		JZ verfim					;Caso seja, acaba	
		MOVB [R1], R6				;Guarda o caracter na zona de memoria do destino
		MOVB [R4], R6
		ADD R4,1					;Endere�o do pr�ximo caracter do periferico
		ADD R0, 1					;Endere�o do pr�ximo caracter do display
		ADD R1, 1
		JMP adiciona
verfim:	MOVB R7, [R2]				;Obt�rm o pr�ximo caract�r da password (8bits)
		CMP R7, FIM					;V� se � o byte terminador da password
		JZ AdicionaBanco			;Caso seja, acaba
		MOVB [R5],R7
		ADD R8, 1 
		MOV R7, 2AH					;Escreve o * em vez do caracter
		MOVB [R3], R7				;Guarda o caracter na zona de memoria do destino
		ADD R2, 1					;Endere�o do pr�ximo caracter do periferico
		ADD R3, 1					;Endere�o do pr�ximo caracter do display
		ADD R5, 1
		JMP adiciona				;Ainda n�o achou, passa para o elemento seguinte

AdicionaBanco:
		MOV R2,24					;
		ADD R10, R2					;Ap�s ter escrito a pass de um user no banco, aponta o R10 para o pr�ximo registo user
		MOV R1, VariavelUser		;
		MOV R1,[R1]					;
		MOV R1, R10					;
		CALL  tamPass				;
		
tamPass:
		CMP R8, TamanhoPassword		; verifica se o numero de caracteres � menor que o tamanho minimo exigido
		JLT TamPError				; salta para uma nova instru�ao caso seja verdade
		CALL PosLogin				; caso nao seja verdade, continua o decorrer do programa
		POP R8	
TamPError:
		MOV R2, MenuErroReg			; inicializa o apontador para o menu especifico
		CALL MostraDisplay			; mostra o menu no display
		CALL LimpaPerifericos		; limpa os perifericos de entrada
		MOV R0, OK 					; aponta para o periferico de entrada OK
Cicloerro:
		MOVB R1, [R0]				; fica com o valor do OK
		CMP R1, 1					; verifica se este esta ativado ou nao
		JNE Cicloerro				; fica em ciclo caso esteja desativado
		CALL Ligado					; caso esteja ativado, volta ao inicio
		
fimcicloreg :
		MOVB[R5],R6					;Guarda terminador na zona de mem�ria do destino
		MOVB[R3], R6				;Guarda terminador na zona de mem�ria do destino
		MOVB[R8],R9					;Guarda terminador na zona de mem�ria do destino
		MOVB[R10], R7				;Guarda terminador na zona de mem�ria do destino

RotinaERRO:
		PUSH R0
		PUSH R1
		PUSH R2 
		MOV R2,MenuErroInicio			;inicializa o apontado para o menu especificado
		CALL MostraDisplay				; mostra o menu escolhido no display
		CALL LimpaPerifericos			; limpa o valor dos perifericos de entrada
		MOV R0, OK						; aponta para o periferico de entrada OK
LeOK:	
		MOV R1, [R0]					; fica com o valor que esta no OK
		CMP R1,	1 						; verifica se este esta desligado
		JEQ LeOK						; fica em ciclo caso seja verdade
		CALL Ligado						; chama a rotina que volta ao inicio do programa
		POP R2
		POP R1
		POP R0
		RET		
		
PosLogin : 		
		MOV R2, MenuPosLogin			; inicializa o apontador para o menu especificado
		CALL MostraDisplay				; chama-se a rotina para mostrar o menu apontador
		CALL LimpaPerifericos			; limpa os perifericos de entrada 
		MOV R0, NR_SEL					; fica com o endere�o das op�oes
		MOV R3, OK						; fica com o endere�o do OK
		
Choose:	MOVB R4,[R3]					; l� o valor do OK
		CMP R4, 1						; Verifica se este esta ativo
		JNE Choose						; fica em ciclo at� estar ativado
		MOVB R1, [R0]					; l� o valor das op�oes
		CMP R1,0						; se o utilizador ainda nao selecionou
		JEQ Choose						; volta ao inicio do ciclo
		CMP R1,1						; se o utilizador selecionou a 1� op�ao 
		JEQ OPizzas						; salta para a rotina das Pizzas
		CMP R1, 2						; se o utilizador selecionou a 2� op�ao
		JEQ Logout						; salta para a rotina de saida
		CALL RotinaERRO					; o utilizador selecionou outra op�ao qualquer, d� erro de op�ao invalida
		JMP PosLogin					; garante que nunca sai do ciclo

Logout:
		CALL LimparValorSaldo			;chama a rotina que limpa o valor das encomendas do utilizador da memoria
		CALL Ligado						; volta ao menu inicial
		RET					
		
OPizzas : 
		MOV R2, MenuPizzas				; inicializa o apontador para o menu especificado na mem�ria
		CALL MostraDisplay				; inicializa o display com o meu escolhido
		CALL LimpaPerifericos			; inicia os perifericos a zero
		MOV R0, NR_SEL					; fica com o valor das op�oes
		MOV R3, OK						; fica com o valor do OK

escolhePizza:
		MOVB R4, [R3]					; L� qual � o valor que est� no OK
		CMP R4,1						; verifica se esta ativo
		JNE escolhePizza				; se nao estiver ativo fica em ciclo infinito
		MOVB R1, [R0]					; L� qual � o valor que esta nas op�oes
		CMP R1,0						; se o utilizador ainda nao selecionou nenhuma op�ao
		JEQ escolhePizza				; fica em ciclo � espera
		CMP R1,1						; se o utilizador escolheu uma pizza
		JEQ OPizzaMama					; salta para a rotina da pizza escolhida
		CMP R1,2						; se o utilizador escolheu a 2� pizza
		JEQ OPizzaCasa					; salta para a rotina da 2� pizza
		CMP R1,3						; se o utilizador escolheu a 3� pizza
		JEQ OPizzaPepe					; salta para a rotina da 3� pizza
		CMP R1,4						; se o  utilizador escolheu a 4� pizza
		JEQ OPizzaCarbo					; salta para a rotina da 4� pizza
		CMP R1,5						; se o utilizador escolheu a 5� pizza
		JEQ OPizzaMari					; salta para a rotina da 4� pizza
		CMP R1,6						; se o utilizador escolheu fazer o pagamento
		JEQ OPagamento					; salta para a rotina do pagamento
		CALL ErroPizza					; caso tenha selecionado uma op�ao inexistente
		JMP OPizzas						; garante que nunca sai do ciclo
		
OPizzaMama:
		MOV R2, MenuTamanhoPizzas		; inicializa o apontador com o menu escolhido
		CALL MostraDisplay				; Mostra no display o menu escolhido
		CALL LimpaPerifericos			; limpa o perifericos de entrada
		MOV R0, NR_SEL					; o apontador fica com o valor das op�oes
		MOV R3, OK 						; o apontador fica com o valor do OK
		
escolheT1:
		MOVB R4, [R3]					;l� qual � o valor do OK
		CMP R4, 1						;verifica se esta ativo
		JNE escolheT1					;fica em ciclo caso nao esteja ativo
		MOVB R1, [R0]					; l� o valor das op�oes
		CMP R1,0						; se o utilizador ainda nao escolheu o tamanho que quer
		JEQ escolheT1					; fica em ciclo at� escolher
		CMP R1,1						; se o utilizador escolheu o tamanho grande
		JEQ Soma8						; salta para rotina que atualiza o valor do saldo
		CMP R1,2						; se o utilizado escolheu o tamanho pequeno
		JEQ Soma5						; salta para rotina que atualiza o valor do salto
		CALL ErroPizza					; o utilizador escolheu um tamanho inexistente, aparece erro
		JMP OPizzaMama					; garante que nunca sai do ciclo
		
OPizzaCasa:
		MOV R2, MenuTamanhoPizzas		; inicializa o apontador com o menu do Tamanho
		CALL MostraDisplay				; mostra no display o menu
		CALL LimpaPerifericos			; limpa os perifericos de entrada
		MOV R0, NR_SEL					; apontador para as op�oes
		MOV R3, OK 						; apontador para o OK
escolheT2:
		MOVB R4, [R3]					; le o valor do OK
		CMP R4, 1						; verifica se OK esta selecionado
		JNE escolheT2					; fica em ciclo caso OK nao esteja ativado
		MOVB R1, [R0]					; le o valor das op�oes
		CMP R1,0						; se o utilizador nao selecionou nenhuma op�ao
		JEQ escolheT2					; aguarda em ciclo
		CMP R1,1						; se o utilizador escolheu a 1� op�ao
		JEQ Soma8						; salta para rotina que atualiza do valor do saldo
		CMP R1,2						; se o utilizador escolheu a 2� op�ao
		JEQ Soma5 						; salta para rotina que atualiza do valor do saldo
		CALL ErroPizza					; o utilizador escolheu uma op�ao inexistente, aparece erro
		JMP OPizzaCasa					; garante que nunca sai do ciclo
		
OPizzaPepe:
		MOV R2, MenuTamanhoPizzas		; inicializa o apontador com o menu do Tamanho
		CALL MostraDisplay				; mostra no display o menu escolhido
		CALL LimpaPerifericos			; limpa os perifericos de entrada
		MOV R0, NR_SEL					; apontador para as op�oes
		MOV R3, OK	 					; apontador para o OK
escolheT3:
		MOVB R4, [R3]					; l� o valor do OK
		CMP R4, 1						; verifica se esta ativado
		JNE escolheT3					; se nao estiver ativado fica em ciclo
		MOVB R1, [R0]					; l� o valor das op�oes
		CMP R1,0						; se o utilizador ainda nao escolheu nenhuma op�ao
		JEQ escolheT3					; fica em ciclo � espera
		CMP R1,1						; se o utilizador escolheu a 1� op�ao
		JEQ Soma8						; salta para rotina que atualiza o valor do saldo
		CMP R1,2						; se o utilizador escolheu a 2� opcao
		JEQ Soma5						; salta para a rotina que atualiza o valor do saldo
		CALL ErroPizza					; o utilizador escolheu uma op��o inexistente, d� erro
		JMP OPizzaPepe					; garante que nunca sai do ciclo
		
OPizzaCarbo:
		MOV R2, MenuTamanhoPizzas		; inicializa o apontador com o menu especificado
		CALL MostraDisplay				; mostra no Display o menu escolhido
		CALL LimpaPerifericos			; limpa os perifericos de entrada 
		MOV R0, NR_SEL					; apontador para o periferico de entrada NR_SEL
		MOV R3, OK						; apontador para o periferico de entrada OK
escolheT4:
		MOVB R4, [R3]					; apontador para o valor do OK 
		CMP R4, 1						; verifica se o periferico foi ativado
		JNE escolheT4					; fica em ciclo caso nao seja verdade
		MOVB R1, [R0]					; apontador para o valor do NR_SEL
		CMP R1,0						; se o utilizador ainda nao escolheu nenhuma op�ao
		JEQ escolheT4					; fica em ciclo at� uma op�ao ser escolhida
		CMP R1,1						; se o utilizador escolheu a 1� op�ao
		JEQ Soma8						; salta para a rotina de atualiza�ao da soma
		CMP R1,2						; se o utlizador escolheu a 2� op�ao
		JEQ Soma5						; salta para a rotina de atualiza�ao da soma
		CALL ErroPizza					; o utilizador escolheu a op�ao errada/inexistente, d� erro
		JMP OPizzaCarbo					; fica em ciclo
OPizzaMari:
		MOV R2, MenuTamanhoPizzas		; inicializa o apontador para o menu de tamanho
		CALL MostraDisplay				; mostra o menu no display
		CALL LimpaPerifericos			; limpa os perifericos de entrada
		MOV R0, NR_SEL					; aponta para o periferico de entrada NR_SEL
		MOV R3, OK						; aponta para o periferico de entrada OK
escolheT5:					 
		MOVB R4, [R3]					; fica com o valor do periferico de entrada OK
		CMP R4, 1						; verifica se o periferico est� ativado
		JNE escolheT5					; fica em ciclo, ate� caso contr�rio
		MOVB R1, [R0]					; fica com o valor do periferico de entrada NR_SEL
		CMP R1,0						; se o utilizador ainda nao escolheu nenhuma op�ao 
		JEQ escolheT5					; fica em ciclo ate caso contrario
		CMP R1,1						; se o utilizador escolheu a 1� op�ao 
		JEQ Soma8						; salta para a rotina de atualiza�ao do saldo
		CMP R1,2						; se o utilizador escolheu a segunda op�ao
		JEQ Soma5						; salta para a rotina de atualiza�ao do saldo
		CALL ErroPizza					; o utilizador escolheu uma op�ao inexistente
		JMP OPizzaMari					; garante que o ciclo � cumprido
		
Soma5:									; Soma o valor 5 ao total numa posicao de memoria
		MOV R5, Ppequena				; apontador para a constante do pre�o da pizza pequena
		MOV R6, SomaResultado			; apontador para a posi�ao de memoria onde esta o Saldo
		MOV R7, [R6]					; fica com o valor que esta no endere�o de memoria
		ADD  R7, 5						; adiciona 5 ao valor ja existente
		MOV [R6],R7 					; transfere o novo valor para o endere�o 
		JMP OPizzas						; volta � sele�ao das pizzas
		
Soma8:									; Soma o valor 8 ao total numa posi�ao de memoria
		MOV R5, Pgrande					; apontador para a constante do pre�o da pizza grande
		MOV R6, SomaResultado			; apontador para a posi�ao de memoria onde est� o saldo
		MOV R7, [R6]					; fica com o valor que est� no endere�o de memoria
		ADD R7, R5						; adiciona ao saldo existente o valor da constante 
		MOV [R6], R7					; transfere o novo valor do saldo atualizado para o endere�o
		JMP OPizzas						; volta � sele�ao das pizzas
		
OPagamento:								; rotina responsavel por fazer mostrar no ecra o pagamento do pedido do utilizador	
		PUSH R1
		PUSH R2
		PUSH R3
		PUSH R4
		PUSH R5
		PUSH R6
		PUSH R7
		PUSH R8
		PUSH R9
		PUSH R10
		MOV R2, MenuPagamento			; inicializa o apontador para o menu especifico
		CALL MostraDisplay				; mostra o menu escolhido no display
		CALL LimpaPerifericos			; limpa o valor dos perifericos de entrada
		MOV R3, OK						; apontador para o OK
		MOV R1, SomaResultado			; apontador para o endere�o da Soma na memoria
		MOV R4, DisplaySoma				; apontador para o endere�o onde o saldo aparece no display
		MOV R6, [R1]					; fica com o valor da soma 
		MOV R9, 16						; inicializa o com o valor 16
		SUB R10, R9						; subtrai 16 ao endere�o com que chega ao pagamento
		MOVB R8, [R10]					; fica com o valor que esta no endere�o do apontador
		ADD R6, R8						; adiciona o valor da soma com o valor que estava no endere�o do banco de dados
		MOVB [R10], R6					; transfere e o valor atualizado do valor para o endere�o do banco de dados
		POP R10					
		POP R9
adicionaSoma:
		CMP R6, FIM						;Compara com a constante e 
		JZ  fim							;verifica se � zero. Caso seja verdade, salta para outra instru�ao
		MOV R7, 10						; fica com o valor 10
		MOV R2, R6						; fica com o valor da soma
		MOD R2, R7						; obtem o resto da divisao ente os 2 valores
		MOV R8, 48						; fica com o valor 48
		ADD R2, R8						; adiciona ao resto da divisao o valor 48 de modo a convert�-lo para ASCII
		MOVB [R4], R2					; transfere o valor convertido para o display
		SUB R4, 1						; anda uma posi�ao para tr�s no display
		DIV R6, R7						; divide o quociente por 10
		JNZ adicionaSoma				; e volta a estaca inicial
fim:	MOVB R5, [R3]					;l� o valor que esta no periferico de entrada OK
		CMP R5, 1						;verifica se este esta ativado
		JNE fim							;fica em ciclo, � espera da inser�ao, caso nao seja verdade
		POP R7
		POP R6
		POP R5
		POP R4
		POP R3
		POP R2
		POP R1
		JMP finalPagamento				; chama a instru�ao de finaliza�ao do programa
		RET

LimparValorSaldo: 						; Limpa o valor do resultado da soma das pizzas
		PUSH R0							; de modo a que nao haja interferencia de dados 
		PUSH R1							; entre utilizadores
		MOV R0, SomaResultado			; apontador com o endere�o da Soma
		MOV R1, FIM						; apontador com o valor da constante 
		MOV [R0],  R1					; atualiza o valor da soma com o valor vazio
		POP R1			
		POP R0
		RET

ErroPizza:
		PUSH R0
		PUSH R1
		PUSH R2
		MOV R2, MenuErroInicio			;inicializa o apontador para o menu de erro 
		CALL MostraDisplay				;mostra o menu no display
		CALL LimpaPerifericos			;limpa os perifericos
		MOV R0, OK						;inicializa o apontador com o endere�o de OK
LeErro:	MOVB R1, [R0]					;inicializa o apontador com o valor de OK
		CMP R1, 0						;verifica se OK esta desativado
		JEQ LeErro						;fica em ciclo caso seja verdade
		CALL OPizzas					;volta ao menu das pizzas
		POP R2
		POP R1
		POP R0
		RET
		
finalPagamento :
		MOV R2,MenuFinalPagamento		; inicializa o apontador para o menu 
		CALL MostraDisplay				; mostra o menu no display
		CALL LimpaPerifericos			; limpa os perifericos
		MOV R0, OK 						; aponta para o valor que esta no periferico de entrada (OK)
lgout:	MOVB R1, [R0]					; fica com o valor do periferico 
		CMP R1, 1						; verifica se este esta ativo
		JNE lgout						; fica em ciclo caso contrario
		CALL Logout						; chama a rotina de saida do programa 
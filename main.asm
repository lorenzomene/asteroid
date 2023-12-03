.model small

.stack 1000H

.data
   
    STRING_LOGO DB '              _                 _     _ '
        DB '    /\       | |               (_)   | |'
        DB '   /  \   ___| |_ ___ _ __ ___  _  __| |'
        DB '  / /\ \ / __| __/ _ \  __/ _ \| |/ _` |'
        DB ' / ____ \\__ \ ||  __/ | | (_) | | (_| |'
        DB '/_/    \_\___/\__\___|_|  \___/|_|\__,_|'
        DB '        \ \        / /                  '
        DB '         \ \  /\  / /_ _ _   _          '
        DB '          \ \/  \/ / _` | | |           '
        DB '           \  /\  / (_| | |_| |         '
        DB '            \/  \/ \__,_|\__, |         '
        DB '                          __/ |         '
        DB '                         |___/          ', '$'
    
    
    SCREEN_WIDTH    EQU 320
    SCREEN_HEIGHT   EQU 200
     
   
    COLOR_BLACK             EQU 0
    COLOR_GREEN             EQU 2
    COLOR_RED               EQU 4
    COLOR_WHITE             EQU 15
    COLOR_YELLOW            EQU 0EH
    COLOR_LIGHT_GREEN       EQU 0AH
    COLOR_CYAN              EQU 0BH

    STRING_MENU_JOGAR       DB "                  JOGAR                 ", "$"
    STRING_MENU_SAIR        DB "                  SAIR                  ", "$"
    STRING_MENU_JOGAR_ATIVO DB "                [ JOGAR ]               ", "$"
    STRING_MENU_SAIR_ATIVO  DB "                [ SAIR ]                ", "$"
    
    LINHA_MENU_JOGAR    EQU 20
    LINHA_MENU_SAIR     EQU 22

    OPCAO_JOGAR EQU 0
    OPCAO_SAIR  EQU 1
    
    OPCAO_SELECIONADA DB 0
    
    KEY_UP      EQU 72
    KEY_DOWN    EQU 80
    KEY_LEFT    EQU 75
    KEY_RIGHT   EQU 77
    KEY_ENTER   EQU 28
    KEY_W       EQU 11h
    KEY_S       EQU 1Fh
    
    BAR_STEP_SIZE    EQU 10
    
    TARGET_FRAMERATE EQU 20
    
    WORD_SIZE       EQU 2
    VIDEO_BASE_ADDR EQU 0A000H
    TEMPO_ENTRE_UPDATES EQU 0C350H ; 50.000 ms
    
   
    SPRITE_NAVE  DB 0FH,0FH,0FH,0FH,0FH,0CH,0CH,0CH,0  ,0,\
                    0FH,0FH,0FH,0FH,0FH,0  ,0  ,0  ,0  ,0,\
                    0  ,0FH,0FH,0FH,0  ,0  ,0  ,0  ,0  ,0,\
                    0  ,0CH,0FH,0FH,0FH,0FH,0FH,0FH,0  ,0,\
                    0  ,0  ,0CH,0FH,0EH,0EH,0FH,0FH,0FH,0FH,\
                    0  ,0  ,0CH,0FH,0EH,0EH,0FH,0FH,0FH,0FH,\
                    0  ,0CH,0FH,0FH,0FH,0FH,0FH,0FH,0,  0,\ 
                    0  ,0FH,0FH,0FH,0  ,0  ,0  ,0  ,0  ,0,\
                    0FH,0FH,0FH,0FH,0FH,0  ,0  ,0  ,0  ,0,\ 
                    0FH,0FH,0FH,0FH,0FH,0CH,0CH,0CH,0  ,0
         

    SPRITE_METEORO  DB 0  ,0  ,0  ,0  ,7  ,7  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,7  ,7  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,7  ,7  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,7  ,7  ,0  ,0  ,0  ,0, \
                       7  ,7  ,7  ,7  ,8  ,8  ,7  ,7  ,7  ,7, \
                       7  ,7  ,7  ,7  ,8  ,8  ,7  ,7  ,7  ,7, \
                       0  ,0  ,0  ,0  ,7  ,7  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,7  ,7  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,7  ,7  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,7  ,7  ,0  ,0  ,0  ,0

    SPRITE_VIDA     DB 0  ,0  ,0  ,0  ,4  ,4  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,4  ,4  ,0  ,0  ,0  ,0, \ 
                       0  ,0  ,0  ,0  ,4  ,4  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,4  ,4  ,0  ,0  ,0  ,0, \
                       4  ,4  ,4  ,4  ,0CH,0CH,4  ,4  ,4  ,4, \
                       4  ,4  ,4  ,4  ,0CH,0CH,4  ,4  ,4  ,4, \
                       0  ,0  ,0  ,0  ,4  ,4  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,4  ,4  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,4  ,4  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,4  ,4  ,0  ,0  ,0  ,0
    
    
    SPRITE_ESCUDO   DB 0  ,0  ,0  ,0  ,2  ,2  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,2  ,2  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,2  ,2  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,2  ,2  ,0  ,0  ,0  ,0, \
                       2  ,2  ,2  ,2  ,0EH,0EH,2  ,2  ,2  ,2, \
                       2  ,2  ,2  ,2  ,0EH,0EH,2  ,2  ,2  ,2, \
                       0  ,0  ,0  ,0  ,2  ,2  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,2  ,2  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,2  ,2  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,2  ,2  ,0  ,0  ,0  ,0

                       
                       
                       
                       
                       
    ; Estado do jogo
    nroVidas        DB 5
    tempoRestante   DW 30  
    
    naveX dw 30
    naveY dw 80

    naveXAnterior dw 0
    naveYAnterior dw 0
    
    NAVE_SPEED  EQU 2
    
    ASTEROIDES      DW 0,0,0,0,0,0,0,0
    MAX_ASTEROIDES  EQU 8 
          
.code

CALC_STRING_LENGTH proc
    push SI
    xor CX, CX
  
    LOOP_STRLEN:    
        cmp byte ptr [SI], '$'
        je FIM_STRLEN
        inc CX
        inc SI

        jmp LOOP_STRLEN

    FIM_STRLEN:
        pop SI
        ret
endp

; Escreve string em SI na linha DH com a cor BL
ESCREVE_STRING proc
    push AX
    push DI
    push DX
    push CX
    
    mov AX, DS
    mov ES, AX
    mov AH, 13H
    mov AL, 1
    mov BH, 0
    call CALC_STRING_LENGTH
    mov DL, 0
    mov BP, SI
    int 10H

    pop DX
    pop DI
    pop AX
    pop CX
    ret
endp

; Renderiza as op??es do menu
RENDERIZA_OPCOES proc
    push SI
    push BX
    push DX

    mov DH, LINHA_MENU_JOGAR
    mov BL, COLOR_WHITE
    mov SI, offset STRING_MENU_JOGAR
    call ESCREVE_STRING
    
    mov DH, LINHA_MENU_SAIR
    mov BL, COLOR_WHITE 
    mov SI, offset STRING_MENU_SAIR
    call ESCREVE_STRING

    pop DX
    pop BX
    pop SI
    ret
endp


ATUALIZA_MENU proc
    push SI
    push BX
    push DX
    
    call RENDERIZA_OPCOES
    
    cmp OPCAO_SELECIONADA, OPCAO_JOGAR
    je HANDLE_JOGAR
    
    mov DH, LINHA_MENU_SAIR
    mov BL, COLOR_WHITE 
    mov SI, offset STRING_MENU_SAIR_ATIVO
    call ESCREVE_STRING
    jmp FIM_ATUALIZA_MENU
    
    HANDLE_JOGAR:
        mov DH, LINHA_MENU_JOGAR
        mov BL, COLOR_WHITE
        mov SI, offset STRING_MENU_JOGAR_ATIVO
        call ESCREVE_STRING
        
    FIM_ATUALIZA_MENU:
        pop DX
        pop BX
        pop SI
     
        ret
endp

RENDERIZA_LOGO proc
    push AX
    push DX
    push BX

    mov DH, 4 ; Linha
    mov BL, COLOR_GREEN
    mov SI, offset STRING_LOGO
    call ESCREVE_STRING

    pop BX
    pop DX
    pop BX
    
    ret
endp


SETUP_MODO_VIDEO proc
    push AX

    mov AX, VIDEO_BASE_ADDR
    mov ES, AX

    mov AX, 13h
    int 10H

    pop AX
    ret
endp

LER_TECLA proc
    mov AH, 0
    int 16H
    ret
endp

SELECIONA_OPCAO_MENU proc
    push AX
    
    LOOP_OPCAO_MENU:
        call LER_TECLA

        cmp AH, KEY_UP
    jne TECLA_BAIXO

    mov OPCAO_SELECIONADA, OPCAO_JOGAR
    call ATUALIZA_MENU

    TECLA_BAIXO:
        cmp AH, KEY_DOWN
        jne TECLA_ENTER

        mov OPCAO_SELECIONADA, OPCAO_SAIR
        call ATUALIZA_MENU

    TECLA_ENTER:
        cmp AH, KEY_ENTER
        jne LOOP_OPCAO_MENU

    pop AX
    ret
endp

; BX = linha
; CX = cor
PINTA_LINHA proc
    push AX
    push DI
    push CX
    push DX
    
    mov DI, BX
    mov AX, SCREEN_WIDTH
    
    mul DI
    mov DI, AX
    
    xor AX, AX
    mov AX, CX
    
    xor CX, CX
    mov CX, SCREEN_WIDTH
    
    LOOP_PINTA_PIXEL:
        stosb
        loop LOOP_PINTA_PIXEL
    
    FIM_PINTA_LINHA:
        pop DX    
        pop CX
        pop DI
        pop AX
        
    ret
endp

;Desenha o elemento em SI (com 10x10) em AX 
DESENHA_10x10 proc
    push SI
    push DI
    push BX
    push DX
    
    mov DI, AX ;coordenada

    mov BX, 10
    LOOP_COLUNAS:
        mov CX, 10
        
        rep movsb        
        
        dec BX
        add DI, SCREEN_WIDTH - 10
        
        cmp BX, 0
        jne LOOP_COLUNAS
    
    pop DX
    pop BX
    pop DI
    pop SI
    ret
endp

; Desenha quantidade DX de pixeis da cor BX apartir da coordenada AX
DESENHA_LINHA proc
    push CX
    push AX
    push DI

    mov DI, AX
    mov CX, DX
    
    mov AX, BX
    rep stosb
    
    pop DI
    pop AX
    pop CX
    ret
endp

RENDER_INTERFACE proc
    push AX
    push BX
    push DX
    push CX
    
    mov AX, 57600
    mov BX, COLOR_YELLOW
    mov DX, SCREEN_WIDTH  * 20
    call DESENHA_LINHA
    
    ; Quadrado vermelho no meio barra amarela
    mov CX, 10
    mov BX, COLOR_RED
    mov AX, 59355
    mov DX, 10
    
    LOOP_QUADRADO:
        call DESENHA_LINHA
        add AX, SCREEN_WIDTH
        loop LOOP_QUADRADO
        
    call ATUALIZA_BARRA_VIDA
    call ATUALIZA_BARRA_TEMPO
    
    pop CX
    pop DX
    pop BX
    pop AX
    ret
endp



; Atualiza a barra de vida
; DX = Quantidade de vida atual
; BX = Cor da barra
; AX = Cordenada inicial da barra
ATUALIZAR_BARRA_STATUS proc
    push CX
    push DX    
    push BX
    push AX
    
    mov CX, BAR_STEP_SIZE
    LOOP_LINHAS_STATUS:
        call DESENHA_LINHA
        add AX, SCREEN_WIDTH
        loop LOOP_LINHAS_STATUS
        
    pop AX
    push AX
    add AX, DX
    
    
    push AX

    mov AX, BAR_STEP_SIZE * 10
    sub AX, DX
    mov DX, AX
    
    pop AX
    
    mov BX, COLOR_BLACK
    mov CX, BAR_STEP_SIZE
    LOOP_LINHAS_STATUS_VAZIO:
        call DESENHA_LINHA
        add AX, SCREEN_WIDTH
        loop LOOP_LINHAS_STATUS_VAZIO
    
    pop AX
    pop BX
    pop DX
    pop CX
    ret
endp

ATUALIZA_BARRA_TEMPO proc
    push AX
    push BX
    push DX

    mov AX, 59227 ; Linha
    mov BX, COLOR_CYAN
    mov DX, tempoRestante
    call ATUALIZAR_BARRA_STATUS         
    
    pop DX
    pop BX
    pop AX
    ret
endp

ATUALIZA_BARRA_VIDA proc
    push AX
    push BX
    push DX

    mov AX, BAR_STEP_SIZE
    mul nroVidas
    mov DX, AX
    
    mov AX, 59392 ; Linha
    mov BX, COLOR_LIGHT_GREEN
    call ATUALIZAR_BARRA_STATUS    
    
    pop DX
    pop BX
    pop AX
    ret
endp

GERA_ASTEROIDE proc
    push AX
    push DX
    push SI
    push CX
    push BX
    
    mov CX, MAX_ASTEROIDES
    mov SI, offset ASTEROIDES
    LOOP_VERIFICA_ASTEROIDE:
        mov AX, [SI]
        cmp AX, 0 
        je GERA_ASTEROIDE_EFET
        add SI, WORD_SIZE
        loop LOOP_VERIFICA_ASTEROIDE
    
    jmp FIM_GERA_ASTEROIDE
    
    GERA_ASTEROIDE_EFET:
        mov BX, SI
        mov AX, 6400
        call RAND_NUMBER
        
        mul DX
        add AX, SCREEN_WIDTH - 20
        
        mov SI, offset SPRITE_METEORO
        call DESENHA_10x10
        
        mov SI, BX
        mov [SI], AX
    
    FIM_GERA_ASTEROIDE:
        pop BX
        pop CX
        pop SI
        pop DX
        pop AX
    ret
endp
    

INICIAR_JOGO proc
    push AX
    push BX
    call SETUP_MODO_VIDEO
    call RENDER_INTERFACE
    
    mov AX, VIDEO_BASE_ADDR
    mov ES, AX
    
    xor BX, BX  
    MAIN:

        call ATUALIZA_BARRA_VIDA
        call ATUALIZA_BARRA_TEMPO
        
        call MOVE_NAVE
        call LIMPA_AREA_NAVE 
        
        mov AX, naveY
        mov CX, SCREEN_WIDTH
        mul CX
        add AX, naveX
        mov DI, AX  

        mov SI, offset SPRITE_NAVE

        call DESENHA_10x10 
        call SLEEP 
        
        inc BX
        cmp BX, TARGET_FRAMERATE
        je ATUALIZA_TEMPO_RESTANTE
        
        jmp MAIN
    
    ATUALIZA_TEMPO_RESTANTE:        
        dec tempoRestante
        xor BX, BX
        call GERA_ASTEROIDE
        jmp MAIN
        
    FIM_JOGO:
        pop BX
        pop AX
    ret
endp

MOVE_NAVE proc
    push AX
    push BX
    push CX
    push DX
    
    mov AX, naveX
    mov naveXAnterior, AX
    mov AX, naveY
    mov naveYAnterior, AX
    
    mov AH, 1
    int 16h
    jz FIM_MOVE_NAVE

    mov AH, 0
    int 16h

    cmp AH, KEY_W
    je MOVE_PARA_CIMA
    
    cmp AH, KEY_S 
    je MOVE_PARA_BAIXO

    jmp FIM_MOVE_NAVE

    MOVE_PARA_CIMA:
        sub naveY, NAVE_SPEED
        jmp FIM_MOVE_NAVE

    MOVE_PARA_BAIXO:
        add naveY, NAVE_SPEED

    FIM_MOVE_NAVE:
        pop DX
        pop CX
        pop BX
        pop AX
        ret
endp


LIMPAR_TELA proc
    push AX
    push BX
    push CX
    push DX

    mov AH, 06H
    mov AL, 0H

    xor BH, BH
    xor CX, CX

    mov DH, 25
    mov DL, 80

    int 10H

    pop DX
    pop CX
    pop BX
    pop AX
    ret
endp

LIMPA_AREA_NAVE proc
    push AX
    push BX
    push CX
    push DX
    push DI

    mov AX, naveYAnterior
    mov CX, SCREEN_WIDTH
    mul CX
    add AX, naveXAnterior
    mov DI, AX

 
    mov CX, 10
    LIMPA_LINHA:
        push CX
        mov CX, 10
        mov AX, COLOR_BLACK
        rep stosb
        pop CX
        add DI, SCREEN_WIDTH - 10 ; Proxima linha
        loop LIMPA_LINHA

    pop DI
    pop DX
    pop CX
    pop BX
    pop AX
    ret
LIMPA_AREA_NAVE endp

ACAO_MENU proc
    push AX

    call LIMPAR_TELA

    cmp OPCAO_SELECIONADA, OPCAO_SAIR
    je FIM_ACAO_MENU
    
    call INICIAR_JOGO

    mov AH, 7H
    int 21H

    call MOSTRAR_TELA_INICIAL

    FIM_ACAO_MENU:

    pop AX
    ret
endp

SLEEP proc
    push AX
    push CX
    push DX

    mov AH, 86H
    mov CX, 0
    mov DX, TEMPO_ENTRE_UPDATES
    int 15H

    pop DX
    pop CX
    pop AX
    ret
endp


;retorna um numero aleatorio em DL de 0 a 9
RAND_NUMBER proc
    push AX
    push CX
    
    mov AH, 00h  
    int 1AH        

    mov  ax, dx
    xor  dx, dx
    mov  cx, 10    
    div  cx

    pop CX 
    pop AX  
    ret
endp   

MOSTRAR_TELA_INICIAL proc
    call SETUP_MODO_VIDEO
    call RENDERIZA_LOGO
    call ATUALIZA_MENU
    call SELECIONA_OPCAO_MENU
    call ACAO_MENU
    ret
endp


INICIO:
    mov AX, @data
    mov DS, AX
    
    call MOSTRAR_TELA_INICIAL

    mov AH, 4CH
    int 21H
end INICIO
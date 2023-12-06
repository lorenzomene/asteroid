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
    
    STRING_DERROTA  DB '      __      __                        '
                    DB '      \ \    / /                        '
                    DB '       \ \  / /___    ___  ___          '
                    DB '        \ \/ // _ \  / __|/ _ \         '
                    DB '         \  /| (_) || (__|  __/         '
                    DB '          \/  \___/  \___|\___|         '
                    DB '   _____                _               '
                    DB '  |  __ \              | |              '
                    DB '  | |__) |___  _ __  __| |  ___  _   _  '
                    DB '  |  ___// _ \| ,__|/ _` | / _ \| | | | '
                    DB '  | |   |  __/| |  | (_| ||  __/| |_| | '
                    DB '  |_|    \___||_|   \__,_| \___| \__,_| ', '$'
            
    STRING_VITORIA  DB '      __     __      __  ___     __     ' 
                    DB '     |__)/\ |__) /\ |__)|__ |\ |/__`    ' 
                    DB '     |  /~~\|  \/~~\|__)|___| \|.__/    '
        
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
    KEY_SPACE   EQU 39h
    
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

    SPRITE_REPARADOR DB 0  ,0  ,0  ,0  ,4  ,4  ,0  ,0  ,0  ,0, \
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

    SPRITE_PRETO   DB 0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0, \
                       0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0

    ; Sprite com borda branca para debugar                  
    SPRITE_DEBUG   DB 15,15 ,15 ,15 ,15 ,15 ,15 ,15 ,15 ,15, \
                    15  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,15, \
                    15  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,15, \
                    15  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,15, \
                    15  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,15, \
                    15  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,15, \
                    15  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,15, \
                    15  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,15, \
                    15  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,0  ,15, \
                    15  ,15 ,15 ,15 ,15 ,15 ,15 ,15 ,15 ,15

    DEBUG_MODE EQU 0 ; 1 = Ativa o sprite de debug, 0 = Desativa o sprite de debug

    SPRITE_WIDTH    EQU 10
    SPRITE_HEIGHT   EQU 10
    BAR_MAX_SIZE    EQU 100
    ; Constantes do jogo       
    NAVE_SPEED          EQU 1
    MAX_ASTEROIDES      EQU 8
    MAX_PROJETEIS       EQU 20         
    MAX_REPARADORES     EQU 1          
    MAX_ESCUDOS         EQU 1 
    MAX_NIVEIS          EQU 5
    MAX_VIDAS           EQU 10
    TEMPO_POR_NIVEL     EQU 30
    TEMPO_ENTRE_ESCUDOS EQU 10
    TEMPO_DURACAO_ESCUDO EQU 5

    ; Estado inicial do jogo
    NAVE_X_INICIAL          EQU 160
    NAVE_Y_INICIAL          EQU 100
    NIVEL_INICIAL           EQU 1

    ; Estado do jogo
    nroVidas        DB MAX_VIDAS
    tempoRestante   DW TEMPO_POR_NIVEL  
    naveX           DW NAVE_X_INICIAL
    naveY           DW NAVE_Y_INICIAL
    nivelAtual      DB NIVEL_INICIAL
    tempoImunidade  DW 0
    cooldownEscudo  DW 0

    ASTEROIDES      DW MAX_ASTEROIDES dup(0)
    PROJETEIS       DW MAX_PROJETEIS dup(0)
    REPARADORES     DW MAX_REPARADORES dup(0)
    ESCUDOS         DW MAX_ESCUDOS dup(0)

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
    mov AL, 1
    mov BH, 0
    call CALC_STRING_LENGTH
    mov DL, 0
    mov BP, SI
    mov AH, 13H
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
    push ES

    mov DH, 1 ; Linha
    mov BL, COLOR_GREEN
    mov SI, offset STRING_LOGO
    call ESCREVE_STRING
 
    mov AX, VIDEO_BASE_ADDR
    mov ES, AX
    
    mov AX, SCREEN_WIDTH * 125 + 87

    mov SI, offset SPRITE_NAVE
    call DESENHA_SPRITE
    
    add AX, 45
    mov SI, offset SPRITE_METEORO
    call DESENHA_SPRITE
    
    add AX, 45
    mov SI, offset SPRITE_REPARADOR
    call DESENHA_SPRITE
    
    add AX, 45
    mov SI, offset SPRITE_ESCUDO
    call DESENHA_SPRITE

    pop ES
    pop BX
    pop DX
    pop AX
    
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

; Limpa sprite da tela em AX
LIMPA_SPRITE proc
    push SI 
    push BX

    mov BX, DEBUG_MODE
    cmp BX, 1
    je __USA_SPRITE_DEBUG

    mov SI, offset SPRITE_PRETO
    jmp __LIMPA_SPRITE_FIM

    __USA_SPRITE_DEBUG:
        mov SI, offset SPRITE_DEBUG

    __LIMPA_SPRITE_FIM:
    call DESENHA_SPRITE

    pop BX
    pop SI
    ret
endp
;Desenha o elemento em SI (com 10x10) em AX 
DESENHA_SPRITE proc
    push CX
    push DX
    push BX
    push SI
    push DI
    
    mov DI, AX

    mov BX, SPRITE_HEIGHT    
    __DESENHA_LINHA_SPRITE:

        mov CX, SPRITE_WIDTH
        rep movsb
        
        dec BX
        add DI, SCREEN_WIDTH - SPRITE_WIDTH

        cmp BX, 0
        jne __DESENHA_LINHA_SPRITE

    pop DI
    pop SI
    pop BX
    pop DX
    pop CX
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

;ax = coordenada inicial
;bx = quantidade pixels
LIMPA_COLUNA_PIXELS proc
    push CX
    push DI
    
    mov DI, AX
    mov CX, BX
    mov AX, 0
    
    LOOP_LIMPA_COLUNA:
        stosb
        add DI, SCREEN_WIDTH 
        loop LOOP_LIMPA_COLUNA
    
    pop DI
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
    mov DX, SCREEN_WIDTH * 20
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
; DX = Quantidade de barra atual
; BX = Cor da barra
; AX = Cordenada inicial da barra
ATUALIZAR_BARRA_STATUS proc
    push CX
    push DX    
    push BX
    push AX
    
    mov CX, 10
    LOOP_LINHAS_STATUS:
        call DESENHA_LINHA
        add AX, SCREEN_WIDTH
        loop LOOP_LINHAS_STATUS
        
    pop AX
    push AX
    add AX, DX
    
    
    push AX

    mov AX, BAR_MAX_SIZE
    sub AX, DX
    mov DX, AX
    
    pop AX
    
    mov BX, COLOR_BLACK
    mov CX, 10
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

    ; Calcula o tamanho da barra
    xor DX, DX
    mov AX, tempoRestante
    mov BX, 100
    mul BX
    mov BX, TEMPO_POR_NIVEL
    div BX
    mov DX, AX

    mov AX, SCREEN_WIDTH * 185
    add AX, 10
    mov BX, COLOR_CYAN

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

    ; Calcula o tamanho da barra
    xor DX, DX
    xor AX, AX

    mov AL, nroVidas
    mov BX, 100
    mul BX
    mov BX, MAX_VIDAS
    div BX
    mov DX, AX

    mov AX, SCREEN_WIDTH * 185
    add AX, 210

    mov BX, COLOR_LIGHT_GREEN
    call ATUALIZAR_BARRA_STATUS    
    
    pop DX
    pop BX
    pop AX
    ret
endp

VERIFICA_COLISAO_SPRITE_COM_PIXEL proc
    push AX
    push BX
    push CX
    push DX
    push DI

    ; AX = coordenada linear do sprite
    ; BX = coordenada linear do pixel
    xor DI, DI
    xor CX, CX
    ; Converte coordenada do sprite para coordenada cartesiana
    call COORD_LINEAR_PARA_CARTESIANA
    push AX ; X
    push DX ; Y
    add DI, WORD_SIZE * 2 ; Itens na pilha
    ; Converte coordenada do pixel para coordenada cartesiana
    mov AX, BX
    call COORD_LINEAR_PARA_CARTESIANA
    
    pop BX; spriteY

    sub DI, WORD_SIZE; Itens na pilha

    cmp BX, DX
    jnge __NAO_COLIDE_PIXEL ; BX > DX 

    add DX, SPRITE_HEIGHT
    cmp BX, DX
    jnle __NAO_COLIDE_PIXEL ; BX < BX


    pop BX ; spriteX
    sub DI, WORD_SIZE ; Itens na pilha

    cmp BX, AX
    jnge __NAO_COLIDE_PIXEL ; BX < AX

    ; BX < AX1
    ; BX > AX2
    add AX, SPRITE_WIDTH

    cmp BX, AX
    jnle __NAO_COLIDE_PIXEL ; BX > AX

    mov CX, 1
    jmp __FIM_VERIFICA_COLISAO_SPRITE_COM_PIXEL
    ; Rect.X1
    ; Rect.Y1
    ; BX < ay1
    ; BX > ay2
    
    ; BX > ax1
    ; BX < ax2 
    __NAO_COLIDE_PIXEL:
        mov CX, 0
        jmp __FIM_VERIFICA_COLISAO_SPRITE_COM_PIXEL

    __FIM_VERIFICA_COLISAO_SPRITE_COM_PIXEL:

        add SP, DI ; Desempilha os valores que ainda estao na pilha
        cmp CX, 1


        pop DI
        pop DX
        pop CX
        pop BX
        pop AX
        ret
    ; Rect.Y2

endp

; Verifica se o sprite 1 colide com o sprite 2
; AX = coordenada linear do sprite 1
; BX = coordenada linear do sprite 2
VERIFICA_COLISAO_SPRITE proc
    push CX
    push DX
    push DI

    ; Converte coordenada do sprite 1 para coordenada cartesiana
    xor DI, DI
    call COORD_LINEAR_PARA_CARTESIANA
    push AX ; x
    mov CX, DX

    
    ; Converte coordenada do sprite 2 para coordenada cartesiana
    mov AX, BX
    call COORD_LINEAR_PARA_CARTESIANA

    push AX
    push CX
    push DX

    ; Stack agora tem
    ; RectA.X
    ; RectB.X
    ; RectA.Y
    ; RectB.Y
    

    ; Verifica colisao na vertical
    ;RectA.Y1 > RectB.Y2 && RectA.Y2 < RectB.Y1
    ;AX > DX && CX < BX
    pop BX ; bY1
    pop AX ; aY1

    mov DI, WORD_SIZE * 2 ; Itens na pilha


    mov CX, AX
    add CX, SPRITE_HEIGHT

    mov DX, BX
    add DX, SPRITE_HEIGHT

    cmp AX, DX
    jnle __NAO_COLIDE ; AX > DX 

    cmp CX, BX
    jnge __NAO_COLIDE ; CX < BX

    ; Verifica colisão horizontal
    pop AX ;aX1
    pop BX ;bX1

    xor DI, DI

    mov CX, AX
    add CX, SPRITE_HEIGHT ; aX2

    mov DX, BX
    add DX, SPRITE_HEIGHT ; bX2

    cmp AX, DX
    jnle __NAO_COLIDE ; AX < DX

    cmp CX, BX
    jnge __NAO_COLIDE ; CX > BX
    ; AX > DX && CX < BX

    mov CX, 1
    jmp __FIM_VERIFICA_COLISAO_SPRITE

    __NAO_COLIDE:
        mov CX, 0
        jmp __FIM_VERIFICA_COLISAO_SPRITE

    __FIM_VERIFICA_COLISAO_SPRITE:
        add SP, DI ; Desempilha os valores que ainda estao na pilha
 
        cmp CX, 1

        pop DI
        pop DX
        pop CX
    ret
endp


MOVE_PROJETIL proc
    push AX
    push BX
    push CX
    push DX
    push SI

    mov CX, MAX_PROJETEIS
    mov SI, offset PROJETEIS

    __VERIFICA_PROJETEIS:
        mov AX, [SI]
        cmp AX, 0 ; Se existe o projetil, move ele
        jne __MOVE_PROJETIL
        
        __CONTINUA_VERIFICA_PROJETEIS:
            add SI, WORD_SIZE ; Proximo projetil
            loop __VERIFICA_PROJETEIS

    jmp __FIM_MOVE_PROJETIL
    
    __MOVE_PROJETIL:
        ; AX = Coordenada do projetil

        ;1 - Limpa o projetil
        mov DX, 2 ; Tamanho do projetil
        mov BX, COLOR_BLACK
        call DESENHA_LINHA

        ;2 - Move o projetil
        add AX, NAVE_SPEED * 2

        ;3 - Verifica se o projetil saiu da tela
        push AX
        ; Se a posição na linha for 0, o projetil saiu da tela
        call COORD_LINEAR_PARA_CARTESIANA
        cmp DX, 0
        pop AX
        je __DESTROI_PROJETIL

        ;4 - Verifica se o projetil atingiu um asteroide
        push SI
        push AX
        push BX
        push CX

        mov CX, MAX_ASTEROIDES
        mov DI, offset ASTEROIDES
        ;1. iterar na lista de asteroides
        __VERIFICAR_COLISAO_ASTEROIDE_PROJETIL:
            mov AX, [DI]
            cmp AX, 0
            jne __VERIFICA_ASTEROIDE_PROJETIL
        
            __CONTINUA_VERIFICA_ASTEROIDE_PROJETIL:
                add DI, WORD_SIZE ; Proximo ASTEROIDE
                loop __VERIFICAR_COLISAO_ASTEROIDE_PROJETIL

        jmp _FIM_VERIFICA_ASTEROIDE_PROJETIL

        __VERIFICA_ASTEROIDE_PROJETIL:
            ;ax = coordenada no asteroide
            ;bx = coordenada do projetil
            mov BX, [DI]
            mov AX, [SI]
            add AX, 4 ; Ajusta a coordenada do projetil para a ponta do projetil
            
            ;2. Verificar se o projetil colide com o asteroide
            call VERIFICA_COLISAO_SPRITE_COM_PIXEL

            ;3. Se colidir, destruir o projetil e o asteroide
            je __DESTROI_ASTEROIDE_PROJETIL
            jmp __CONTINUA_VERIFICA_ASTEROIDE_PROJETIL

        _FIM_VERIFICA_ASTEROIDE_PROJETIL:
            pop CX
            pop BX
            pop AX
            pop SI
        ;5 - Desenha o projetil na nova posição
        mov DX, 2 
        mov BX, COLOR_WHITE
        call DESENHA_LINHA


        mov [SI], AX ; Salva a nova posição do projetil
        jmp __CONTINUA_VERIFICA_PROJETEIS

    __DESTROI_ASTEROIDE_PROJETIL:
        pop CX
        pop BX
        pop AX
        pop SI

        mov AX, [DI]
        call LIMPA_SPRITE

        mov BX, 0
        mov [DI], BX
        jmp __DESTROI_PROJETIL

    __DESTROI_PROJETIL:
        mov BX, 0
        mov [SI], BX
        jmp __CONTINUA_VERIFICA_PROJETEIS

    __FIM_MOVE_PROJETIL:
        pop SI
        pop DX
        pop CX
        pop BX
        pop AX
        ret
endp

; Recebe coordenada linear em AX
; Retorna coordenada cartesiana(x, y) em AX,DX 
COORD_LINEAR_PARA_CARTESIANA proc
    push BX

    xor DX, DX 
    mov BX, SCREEN_WIDTH
    div BX

    pop BX
    ret
endp

MOVE_ASTEROIDES proc
    push CX
    push SI
    push AX
    push BX
    push DX
    
    mov CX, MAX_ASTEROIDES
    mov SI, offset ASTEROIDES
    
    ; Calcula a velocidade do asteroide
    ; DX = nivelAtual * NAVE_SPEED
    xor BX, BX
    mov AL, nivelAtual
    mov BL, NAVE_SPEED
    mul BL
    mov DX, AX

    __VERIFICA_ASTEROIDES_EXISTENTES:
        mov AX, [SI]
        cmp AX, 0 ; Se existe o asteroide, move ele
        jne __MOVE_ASTEROIDE
        
        __CONTINUA_VERIFICA_ASTEROIDES_EXISTENTES:
            add SI, WORD_SIZE ; Proximo asteroide
            loop __VERIFICA_ASTEROIDES_EXISTENTES

    jmp FIM_MOVE_ASTEROIDES
    
    __MOVE_ASTEROIDE:
        push SI
        ; AX = Coordenada do asteroide
        
        ;1 - Limpa o asteroide
        call LIMPA_SPRITE

        ;2 - Move o asteroide
        sub AX, DX

        ;3 - Verifica se o asteroide saiu da tela
        push AX
        push DX

        call COORD_LINEAR_PARA_CARTESIANA
        cmp DX, 0

        pop DX
        pop AX

        je __DESTROI_ASTEROIDE

        ;4 - Verifica se o asteroide bateu na nave
        push AX
        push BX
        push CX

        mov CX, AX

        mov AX, naveY
        mov BX, naveX

        call CONVERTE_XY

        ; AX = coordenada linear da nave
        ; BX = coordenada linear do asteroide
        mov BX, CX
        call VERIFICA_COLISAO_SPRITE

        pop CX
        pop BX
        pop AX

        je __COLISAO_ASTEROIDE_NAVE

        ;4 - Desenha o asteroide na nova posição
        mov SI, offset SPRITE_METEORO
        call DESENHA_SPRITE

        pop SI
        mov [SI], AX ; Salva a nova posição do asteroide

        jmp __CONTINUA_VERIFICA_ASTEROIDES_EXISTENTES

    jmp FIM_MOVE_ASTEROIDES

    __COLISAO_ASTEROIDE_NAVE:
        call DIMINUI_VIDA_NAVE
        jmp __DESTROI_ASTEROIDE

    __DESTROI_ASTEROIDE:
        pop SI
        mov BX, 0
        mov [SI], BX 
        jmp __CONTINUA_VERIFICA_ASTEROIDES_EXISTENTES

    FIM_MOVE_ASTEROIDES:
        pop DX
        pop BX
        pop AX
        pop SI
        pop CX
    ret
endp

DIMINUI_TEMPO_IMUNIDADE proc
    cmp tempoImunidade, 0
    jle __FIM_DIMINUI_TEMPO_IMUNIDADE

    dec tempoImunidade

    __FIM_DIMINUI_TEMPO_IMUNIDADE:
        ret
endp

DIMINUI_TEMPO_COOLDOWN_ESCUDO proc
    cmp cooldownEscudo, 0
    jle __FIM_DIMINUI_TEMPO_COOLDOWN_ESCUDO

    dec cooldownEscudo

    __FIM_DIMINUI_TEMPO_COOLDOWN_ESCUDO:
        ret
endp

DIMINUI_VIDA_NAVE proc
    cmp tempoImunidade, 0
    jg __FIM_DIMINUI_VIDA_NAVE

    sub nroVidas, 1
    cmp nroVidas, 0

    jge __FIM_DIMINUI_VIDA_NAVE
    
    mov AL, COLOR_RED
    mov SI, offset STRING_DERROTA
    call RENDERIZA_TELA_FINAL
    call RESET_JOGO
    __FIM_DIMINUI_VIDA_NAVE:
        ret
endp

RESET_JOGO proc
    mov nroVidas, MAX_VIDAS
    mov tempoRestante, TEMPO_POR_NIVEL
    mov naveX, NAVE_X_INICIAL
    mov naveY, NAVE_Y_INICIAL
    mov nivelAtual, NIVEL_INICIAL
    mov tempoImunidade, 0
    mov cooldownEscudo, 0

    push AX
    push BX
    push ES

    mov BX, DS
    mov ES, BX

    xor AX, AX
    
    mov DI, offset ASTEROIDES
    mov CX, MAX_ASTEROIDES
    rep stosw

    mov DI, offset PROJETEIS
    mov CX, MAX_PROJETEIS
    rep stosw

    mov DI, offset REPARADORES
    mov CX, MAX_REPARADORES
    rep stosw

    mov DI, offset ESCUDOS
    mov CX, MAX_ESCUDOS
    rep stosw

    pop BX
    mov ES, BX

    pop BX
    pop AX

    call MOSTRAR_TELA_INICIAL
endp



GERA_ESCUDO proc
    push AX
    push BX
    push CX
    push DX
    push SI

    cmp nivelAtual, 2
    jl __FIM_GERA_ESCUDO

    cmp tempoImunidade, 0
    jg __FIM_GERA_ESCUDO

    cmp cooldownEscudo, 0
    jg __FIM_GERA_ESCUDO

    ; Gera um numero aleatorio entre 0 e 9
    ; Se for menor que 1, gera um reparador (20% de chance)
    call RAND_NUMBER
    cmp DX, 1
    jle __FIM_GERA_ESCUDO
    
    ; Verifica se tem um slot para reparador, se tiver, gera um reparador
    mov CX, MAX_ESCUDOS
    mov SI, offset ESCUDOS
    __LOOP_VERIFICA_ESCUDO:
        mov AX, [SI]
        cmp AX, 0
        je __GERA_ESCUDO
    
        add SI, WORD_SIZE; Proximo asteroide
        loop __LOOP_VERIFICA_ESCUDO
    
    jmp __FIM_GERA_ESCUDO
    
    __GERA_ESCUDO:
        push SI

        mov AX, SCREEN_WIDTH * 18
        call RAND_NUMBER
        
        mul DX
        add AX, SCREEN_WIDTH * 2 - 10
        
        mov SI, offset SPRITE_ESCUDO
        call DESENHA_SPRITE 
        
        pop SI
        mov [SI], AX
        mov cooldownEscudo, TEMPO_ENTRE_ESCUDOS

    __FIM_GERA_ESCUDO:
        pop SI
        pop DX
        pop CX
        pop BX
        pop AX
    ret
endp

GERA_REPARADOR proc
    push AX
    push BX
    push CX
    push DX
    push SI

    cmp nroVidas, 5
    jg __FIM_GERA_REPARADOR

    ; Gera um numero aleatorio entre 0 e 9
    ; Se for menor que 4, gera um reparador (50% de chance)
    call RAND_NUMBER
    cmp DX, 4
    jl __FIM_GERA_REPARADOR
    
    ; Verifica se tem um slot para reparador, se tiver, gera um reparador
    mov CX, MAX_REPARADORES
    mov SI, offset REPARADORES
    __LOOP_VERIFICA_REPARADOR:
        mov AX, [SI]
        cmp AX, 0
        je __GERA_REPARADOR
    
        add SI, WORD_SIZE; Proximo asteroide
        loop __LOOP_VERIFICA_REPARADOR
    
    jmp __FIM_GERA_REPARADOR
    
    __GERA_REPARADOR:
        push SI

        mov AX, SCREEN_WIDTH * 18
        call RAND_NUMBER
        
        mul DX
        add AX, SCREEN_WIDTH * 2 - 10
        
        mov SI, offset SPRITE_REPARADOR
        call DESENHA_SPRITE 
        
        pop SI
        mov [SI], AX

    __FIM_GERA_REPARADOR:
        pop SI
        pop DX
        pop CX
        pop BX
        pop AX
    ret
endp

MOVE_ESCUDO proc
    push CX
    push SI
    push AX
    push BX
    push DX
    
    mov CX, MAX_ESCUDOS
    mov SI, offset ESCUDOS
    
    ; Calcula a velocidade do reparador
    ; DX = nivelAtual * NAVE_SPEED
    xor BX, BX
    mov AL, nivelAtual
    mov BL, NAVE_SPEED
    mul BL
    mov DX, AX

    __VERIFICA_ESCUDOS_EXISTENTES:
        mov AX, [SI]
        cmp AX, 0 ; Se existe o reparador, move ele
        jne __MOVE_ESCUDO
        
        __CONTINUA_VERIFICA_ESCUDOS_EXISTENTES:
            add SI, WORD_SIZE ; Proximo reparador
            loop __VERIFICA_ESCUDOS_EXISTENTES

    jmp __FIM_MOVE_ESCUDOS
    
    __MOVE_ESCUDO:
        push SI

        ;1 - Limpa o ESCUDO da tela
        call LIMPA_SPRITE

        ;2 - Move o ESCUDO
        sub AX, DX

        ;3 - Verifica se o ESCUDO saiu da tela
        push AX
        push DX

        call COORD_LINEAR_PARA_CARTESIANA
        cmp DX, 0

        pop DX
        pop AX

        je __DESTROI_ESCUDO

        ;4 - Verifica se o ESCUDO bateu na nave
        push AX
        push BX
        push CX

        mov CX, AX

        mov AX, naveY
        mov BX, naveX

        call CONVERTE_XY

        ; AX = coordenada linear da nave
        ; BX = coordenada linear do ESCUDO
        mov BX, CX
        call VERIFICA_COLISAO_SPRITE

        pop CX
        pop BX
        pop AX

        je __COLISAO_ESCUDO_NAVE

        ;4 - Desenha o ESCUDO na nova posição
        mov SI, offset SPRITE_ESCUDO
        call DESENHA_SPRITE

        pop SI
        mov [SI], AX ; Salva a nova posição do ESCUDO

        jmp __CONTINUA_VERIFICA_ESCUDOS_EXISTENTES

    jmp __FIM_MOVE_ESCUDOS

    __COLISAO_ESCUDO_NAVE:
        mov tempoImunidade, TEMPO_DURACAO_ESCUDO
        jmp __DESTROI_ESCUDO

    __DESTROI_ESCUDO:
        pop SI
        mov BX, 0
        mov [SI], BX 
        jmp __CONTINUA_VERIFICA_ESCUDOS_EXISTENTES

    __FIM_MOVE_ESCUDOS:
        pop DX
        pop BX
        pop AX
        pop SI
        pop CX
    ret
endp

MOVE_REPARADOR proc
    push CX
    push SI
    push AX
    push BX
    push DX
    
    mov CX, MAX_REPARADORES
    mov SI, offset REPARADORES
    
    ; Calcula a velocidade do reparador
    ; DX = nivelAtual * NAVE_SPEED
    xor BX, BX
    mov AL, nivelAtual
    mov BL, NAVE_SPEED
    mul BL
    mov DX, AX

    __VERIFICA_REPARADORES_EXISTENTES:
        mov AX, [SI]
        cmp AX, 0 ; Se existe o reparador, move ele
        jne __MOVE_REPARADOR
        
        __CONTINUA_VERIFICA_REPARADORES_EXISTENTES:
            add SI, WORD_SIZE ; Proximo reparador
            loop __VERIFICA_REPARADORES_EXISTENTES

    jmp __FIM_MOVE_REPARADORES
    
    __MOVE_REPARADOR:
        push SI

        ;1 - Limpa o reparador da tela
        call LIMPA_SPRITE

        ;2 - Move o reparador
        sub AX, DX

        ;3 - Verifica se o reparador saiu da tela
        push AX
        push DX

        call COORD_LINEAR_PARA_CARTESIANA
        cmp DX, 0

        pop DX
        pop AX

        je __DESTROI_REPARADOR

        ;4 - Verifica se o reparador bateu na nave
        push AX
        push BX
        push CX

        mov CX, AX

        mov AX, naveY
        mov BX, naveX

        call CONVERTE_XY

        ; AX = coordenada linear da nave
        ; BX = coordenada linear do reparador
        mov BX, CX
        call VERIFICA_COLISAO_SPRITE

        pop CX
        pop BX
        pop AX

        je __COLISAO_REPARADOR_NAVE

        ;4 - Desenha o reparador na nova posição
        mov SI, offset SPRITE_REPARADOR
        call DESENHA_SPRITE

        pop SI
        mov [SI], AX ; Salva a nova posição do reparador

        jmp __CONTINUA_VERIFICA_REPARADORES_EXISTENTES

    jmp __FIM_MOVE_REPARADORES

    __COLISAO_REPARADOR_NAVE:
        mov nroVidas, MAX_VIDAS
        jmp __DESTROI_REPARADOR

    __DESTROI_REPARADOR:
        pop SI
        mov BX, 0
        mov [SI], BX 
        jmp __CONTINUA_VERIFICA_REPARADORES_EXISTENTES

    __FIM_MOVE_REPARADORES:
        pop DX
        pop BX
        pop AX
        pop SI
        pop CX
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

    ; Verifica se existem asteroides a serem gerados
    LOOP_VERIFICA_ASTEROIDE:
        mov AX, [SI]
        cmp AX, 0 ; Se 0, espaço do asteroide está vazio
        je __GERA_ASTEROIDE

        add SI, WORD_SIZE; Proximo asteroide
        loop LOOP_VERIFICA_ASTEROIDE
    
    jmp FIM_GERA_ASTEROIDE
    
    __GERA_ASTEROIDE:
        mov BX, SI
        mov AX, SCREEN_WIDTH * 18
        call RAND_NUMBER
        
        mul DX
        add AX, SCREEN_WIDTH * 2 - 30 ; Move o asteoide para o lado direito da tela
        
        mov SI, offset SPRITE_METEORO
        call DESENHA_SPRITE 
        
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
        call ATUALIZA_NAVE

        call SLEEP 
        call MOVE_PROJETIL
        call MOVE_ASTEROIDES
        call MOVE_REPARADOR
        call MOVE_ESCUDO

        inc BX
        cmp BX, TARGET_FRAMERATE
        je ATUALIZA_TEMPO_RESTANTE

        jmp MAIN
    ATUALIZA_TEMPO_RESTANTE:        
        dec tempoRestante
        xor BX, BX
        call GERA_ESCUDO
        call DIMINUI_TEMPO_IMUNIDADE
        call DIMINUI_TEMPO_COOLDOWN_ESCUDO
        call GERA_ASTEROIDE
        call GERA_REPARADOR
        
        cmp tempoRestante, 0
        je __PROXIMO_NIVEL

        jmp MAIN

    __PROXIMO_NIVEL:
        inc nivelAtual

        cmp nivelAtual, MAX_NIVEIS
        jg __VITORIA

        mov tempoRestante, TEMPO_POR_NIVEL
        jmp MAIN

    __VITORIA:
        mov AL, COLOR_YELLOW
        mov SI, offset STRING_VITORIA
        call RENDERIZA_TELA_FINAL

    pop BX
    pop AX
    ret
endp

ATUALIZA_NAVE proc
    push AX
    push BX
    push CX
    push DX
    
    call _MOVE_NAVE
    mov AX, naveY
    mov CX, SCREEN_WIDTH
    mul CX
    add AX, naveX
    mov DI, AX  
    mov SI, offset SPRITE_NAVE
    call DESENHA_SPRITE 


    pop DX
    pop CX
    pop BX
    pop AX
    ret
endp

_GERA_PROJETIL proc
    ;TODO: Verificar se está no fim da tela
    ;TODO: Verificar se o projetil atingiu um asteroide

    push AX
    push BX
    push CX
    push DX
    push SI

    mov CX, MAX_PROJETEIS
    mov SI, offset PROJETEIS

    ; 1 - Verificar se existe um espaço para projetil vazio
    __LOOP_VERIFICAR_PROJETEIS:
        mov AX, [SI]
        cmp AX, 0 ; Se 0, espaço do projetil está vazio
        je __GERA_PROJETIL

        add SI, WORD_SIZE; Proximo projetil
        loop __LOOP_VERIFICAR_PROJETEIS

    jmp __FIM_GERA_PROJETIL

    __GERA_PROJETIL:
        mov ax, naveY
        add ax, SPRITE_HEIGHT / 2 ; Move o projetil para o meio da nav

        mov bx, naveX
        add bx, SPRITE_WIDTH

        call CONVERTE_XY
        ; AX = Coordenada do projetil

        mov DX, 2 ; Tamanho do projetil
        mov BX, COLOR_WHITE
        call DESENHA_LINHA
        
        mov [SI], AX
        jmp __FIM_GERA_PROJETIL

    __FIM_GERA_PROJETIL:
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX
    ret
endp

_MOVE_NAVE proc
    push AX
    push BX
    push CX
    push DX
    
    push naveX
    push naveY
    
    mov AH, 1
    int 16h
    jz __MOVE_NAVE_FIM

    mov AH, 0
    int 16h

    cmp AH, KEY_W
    je __MOVER_CIMA
    
    cmp AH, KEY_S 
    je __MOVER_BAIXO

    cmp AH, KEY_SPACE
    je __ATIRAR

    jmp __MOVE_NAVE_FIM

    __MOVER_CIMA:
        sub naveY, NAVE_SPEED
        jmp __MOVE_NAVE_FIM

    __MOVER_BAIXO:
        add naveY, NAVE_SPEED
        jmp __MOVE_NAVE_FIM
    
    __ATIRAR:
        call _GERA_PROJETIL    
        jmp __MOVE_NAVE_FIM

    __MOVE_NAVE_FIM:

        ; Limpa a posição anterior da nave
        pop AX ; NaveY
        pop BX ; NaveX
        call CONVERTE_XY
        call LIMPA_SPRITE
        
        pop DX
        pop CX
        pop BX
        pop AX
        ret
endp

; Converte posicao X,Y -> coordeanda linear
; AX = X
; BX = Y
CONVERTE_XY proc
    push CX
    push DX

    mov CX, SCREEN_WIDTH
    mul CX
    add AX, BX

    pop DX
    pop CX
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

; SI = string
; AL = cor background
RENDERIZA_TELA_FINAL proc
    push AX
    push BX
    push CX
    push DX
    push DI

    mov CX, SCREEN_WIDTH * 180 / 30 ; Dividido por 30 o loop desenha 30 por vez
    mov DI, 0

    LOOP_PINTA_TELA_FIM_JOGO:
        push CX
        push AX

        mov CX, 30
        rep stosb
        

        mov CX, 0
        mov DX, 1h
        mov AH, 86H 
        int 15H

        pop AX
        pop CX 
        
        loop LOOP_PINTA_TELA_FIM_JOGO

    mov DH, 5
    mov BL, COLOR_WHITE
    call ESCREVE_STRING

    mov ah, 01h
    int 21h

    pop DI
    pop DX
    pop CX
    pop BX
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
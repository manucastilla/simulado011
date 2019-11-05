;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Simulado P3 2019-b
;;
;; Considerando que nosso hardware opera com um clock de
;; 1.000.000 Hz, escreva um código em  assembly que faz
;; com que os LEDs da placa pisquem a aproximadamente 1s.
;; (Piscar = tudo
;; aceso por um segundo e depois tudo apagado por um segundo)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


LOOP:
leaw $0, %A 
negw %A 
movw %A, %D 
leaw $21184, %A 
movw %D, (%A)

leaw$0, %A
movw %A, %D 
leaw $21184, %A 
movw %D, (%A)

leaw $LOOP, %A 
jmp
nop 
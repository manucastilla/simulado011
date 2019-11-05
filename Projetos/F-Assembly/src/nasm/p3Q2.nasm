;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Simulado P3 2019-b
;;
;; Transcreva o pseudocódigo a seguir para assembly do Z01.1:.
;; WHILE(TRUE):
;;  IF RAM[5] == 3:
;;     RAM[0] = -3
;;  ELSE:
;;      RAM[0] = 0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

LOOP:
leaw $5, %A 
movw (%A), %D
leaw $3, %A 
subw %A, %D, %D
leaw $VDD, %A 
je %D 
nop

leaw $0, %A 
movw %A, %S
leaw $0, %A
andw %A, %S, %S 

VDD:
leaw $0, %A
movw %A, %D
leaw $3, %A
negw %A
andw %A, %D, %D
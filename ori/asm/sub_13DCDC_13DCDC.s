LDR             R3, =0xF006D
MOV             R2, #1
VLDR            S0, =0.0
STRD            R2, R3, [R0],#8
MOV             R2, #0xBF0000
SUB             R3, R3, #0x20 ; ' '
STRD            R2, R3, [R0],#8
VLDR            S1, [R1]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDRNE          S0, =5.9605e-8
VMULNE.F32      S0, S1, S0
VMOV            R1, S0
BICS            R2, R1, #0x80000000
BEQ             loc_13DD34
MOV             R2, R1,LSL#1
MOV             R2, R2,LSR#24
SUB             R2, R2, #0x40 ; '@'
CMP             R2, #0
MOVLT           R1, R1,LSR#31
MOVLT           R1, R1,LSL#23
BLT             loc_13DD48
MOV             R3, R1,LSL#9
MOV             R1, R1,LSR#31
MOV             R3, R3,LSR#16
ORR             R2, R3, R2,LSL#16
ORR             R1, R2, R1,LSL#23
LDR             R2, =0xF004E
STM             R0!, {R1,R2}
BX              LR

PUSH            {R4-R6}
CMP             R2, #0
BEQ             loc_1255A0
LDR             R12, =0xF0111
MOV             R2, #1
STM             R1!, {R2,R12}
BIC             R3, R12, R2
STRD            R2, R3, [R1],#8
LDR             R2, [R0]
LDR             R5, =0x10112
LDRB            R6, [R2,#0x18]
ORR             R4, R5, R5,ASR#8
ADD             R12, R4, #1
CMP             R6, #0
ADD             R3, R4, #2
BEQ             loc_1255E4
MOV             R2, #0xF
ADD             R0, R1, #8
STM             R1, {R2,R5}
MOV             R1, #0
STM             R0!, {R2,R4}
STM             R0!, {R1,R12}
STM             R0!, {R1,R3}
POP             {R4-R6}
BX              LR
LDRB            R6, [R2,#0x50]
CMP             R6, #0
BEQ             loc_12560C
CMP             R6, #0xF
LDRBEQ          R6, [R2]
CMPEQ           R6, #0
LDRBEQ          R2, [R2,#0x10]
CMPEQ           R2, #0
MOVNE           R2, #0xF
BNE             loc_125610
MOV             R2, #0
STM             R1!, {R2,R5}
LDR             R2, [R0]
LDRB            R2, [R2,#0x50]
CMP             R2, #0
MOVNE           R2, #0xF
STR             R2, [R1],#4
MOV             R2, #0
STR             R4, [R1],#4
LDR             R0, [R0]
MOV             R4, R2
LDRB            R5, [R0,#0x54]
CMP             R5, #0
BEQ             loc_125664
LDRB            R5, [R0,#0x55]
CMP             R5, #0
MOVNE           R2, #2
MOVNE           R4, R2
BNE             loc_125664
LDRB            R5, [R0,#0x50]
CMP             R5, #0
MOVNE           R2, #2
LDRB            R5, [R0,#0x38]
CMP             R5, #0
BEQ             loc_125690
LDRB            R5, [R0,#0x39]
CMP             R5, #0
ORRNE           R2, R2, #1
ORRNE           R4, R4, #1
BNE             loc_125690
LDRB            R0, [R0,#0x50]
CMP             R0, #0
ORRNE           R2, R2, #1
STM             R1!, {R2,R12}
STR             R4, [R1],#4
ADD             R0, R1, #4
STR             R3, [R1]
POP             {R4-R6}
BX              LR

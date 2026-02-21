PUSH            {R4-R6,LR}
MOVS            R5, R1
MOV             R4, R0
BEQ             loc_16BA00
LDR             R0, =0x2686
LDRB            R0, [R0,R4]
CMP             R0, #4
BNE             loc_16BA00
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x464]
MOV             R0, R4
BLX             R2
ADD             R4, R4, #0x2700
ADD             R4, R4, #0x6E ; 'n'
STRB            R5, [R4]
POP             {R4-R6,PC}

PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x2700
ADD             R0, R0, #0x6F ; 'o'
LDRB            R2, [R0]
ORRS            R1, R1, R2
BEQ             locret_169CE0
LDR             R1, =0x269C
MOV             R5, #0
STRB            R5, [R0]
ADD             R2, R1, #8
STR             R5, [R1,R4]
STR             R5, [R2,R4]
LDR             R1, [R4,#0x464]
BIC             R1, R1, #0x700
ORR             R1, R1, #0x300
STR             R1, [R4,#0x464]
LDR             R0, [R4]
MOV             R1, #8
LDR             R2, [R0,#0x36C]
MOV             R0, R4
BLX             R2
ADD             R4, R4, #0x400
STRH            R5, [R4,#0x68]
POP             {R4-R6,PC}

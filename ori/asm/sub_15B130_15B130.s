PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, R1
LDRB            R5, [R0,#0xAB4]
LDR             R0, =off_6D1648
MOV             R8, R2
MOV             R6, #0
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x122C
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDRB            R1, [R1,R4]
CMP             R1, #0
CMPNE           R0, #0
BEQ             loc_15B1A4
LDRB            R1, [R0,#0xB4]
CMP             R1, #8
BNE             loc_15B1A4
LDR             R1, [R0,#0xAAC]
MOV             R0, #1
MOV             R1, R1,LSL#24
CMP             R0, R1,LSR#30
BNE             loc_15B1A4
LDRB            R0, [R4,#0xAB4]
MOV             R6, #1
CMP             R0, #0
MOVNE           R0, #0x64 ; 'd'
STRBNE          R0, [R4,#0xAB4]
MOV             R2, R8
MOV             R1, R7
MOV             R0, R4
BL              sub_173030
CMP             R6, #0
NOP
BEQ             locret_15B20C
LDRB            R0, [R4,#0xAB4]
CMP             R0, #0x63 ; 'c'
BNE             loc_15B208
CMP             R5, #1
SUBHI           R0, R5, #1
ANDHI           R5, R0, #0xFF
ADD             R0, R4, #0xA00
LDRH            R1, [R0,#0xAC]
BICS            R1, R1, #1
BNE             loc_15B208
LDRH            R0, [R0,#0xA8]
TST             R0, #8
BEQ             loc_15B208
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x368]
MOV             R0, R4
BLX             R2
STRB            R5, [R4,#0xAB4]
POP             {R4-R8,PC}

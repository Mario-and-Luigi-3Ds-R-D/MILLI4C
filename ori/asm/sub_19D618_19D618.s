PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x94]
CMP             R0, #0
BNE             loc_19D64C
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x124
BL              sub_10A358
CMP             R0, #0
BLNE            sub_235164
STR             R0, [R5,#0x94]
LDR             R0, [R5,#0x1B4]
MOV             R4, #0
ORR             R0, R0, #1
STR             R0, [R5,#0x1B4]
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_19D678
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_19D65C
POP             {R4-R6,PC}

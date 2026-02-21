PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R1, #0
LDR             R2, [R0,#0xF8]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BNE             locret_191204
LDR             R0, =0x13D34
LDR             R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1911E4
ADD             R5, R4, #0x13C00
ADD             R5, R5, #0x138
LDR             R1, [R5]
CMP             R1, #0
BNE             loc_1911E4
LDR             R1, =0x13D38
STR             R0, [R1,R4]
LDR             R0, [R4]
LDR             R1, [R0,#0x90]
MOV             R0, R4
BLX             R1
ORR             R1, R0, #0x2000000
MOV             R0, R5
BL              sub_62A370
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DC3C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
POP             {R4-R6,PC}

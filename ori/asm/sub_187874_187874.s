PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R3, =0xFFFEBD77
MOV             R1, #2
ADD             R2, R4, #0x13C00
LDR             R12, [R0]
LDR             R0, [R4]
ADD             R2, R2, #0x9C
SUB             R3, R4, R3
LDR             R12, [R12,#0xC8]
STR             R1, [SP,#0x10+var_10]
TST             R12, #7
BEQ             loc_1878C8
LDR             R12, [R0,#0x1B8]
MOV             R1, #0
MOV             R0, R4
BLX             R12
CMP             R0, #0
BNE             locret_187904
B               loc_1878E0
LDR             R12, [R0,#0x1A4]
MOV             R1, #0
MOV             R0, R4
BLX             R12
CMP             R0, #0
BNE             locret_187904
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DB5C
LDM             R0, {R1,R2}
ADD             SP, SP, #4
MOV             R0, R4
POP             {R4,R5,LR}
BX              R12
POP             {R3-R5,PC}

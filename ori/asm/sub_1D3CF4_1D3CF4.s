PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =0x19DFEC
ADD             R4, R5, R0
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
BNE             locret_1D3D50
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1D3D34
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R2, =dword_65400C
MOV             R0, #0
STR             R0, [R4]
ADD             R1, R5, #0x1A0000
LDM             R2, {R0,R2}
ADD             R1, R1, #0x5C ; '\'
STM             R1, {R0,R2}
POP             {R4-R6,PC}

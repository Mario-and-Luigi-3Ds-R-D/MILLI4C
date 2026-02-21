PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xAC
BL              sub_10A358
CMP             R0, #0
BEQ             locret_1439A4
MOV             R2, #1
MOV             R1, R4
BL              sub_336858
POP             {R4,PC}

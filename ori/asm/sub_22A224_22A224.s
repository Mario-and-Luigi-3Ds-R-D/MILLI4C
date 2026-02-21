LDR             R1, =0xA5F4
MOV             R2, #1
PUSH            {R4,LR}
STRB            R2, [R1,R0]
ADD             R1, R0, #4
ADD             R0, R0, #0xA000
ADD             R0, R0, #0x5F0
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_22A274
ADD             R4, R1, #0xA400
ADD             R4, R4, #0x1E8
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             locret_22A274
MOV             R1, #0
STR             R1, [R0,#0x64]
STR             R1, [R4,#4]
POP             {R4,PC}

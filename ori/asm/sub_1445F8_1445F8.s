PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #1
BEQ             loc_144640
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xFB0
BL              sub_10A358
CMP             R0, #0
BEQ             locret_14464C
MOV             R1, R4
POP             {R4,LR}
B               sub_38907C
MOV             R0, R4
POP             {R4,LR}
B               sub_144920
POP             {R4,PC}

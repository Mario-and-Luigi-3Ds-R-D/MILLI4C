PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R2, #0xFFFFFFFF
MOV             R1, #0x25 ; '%'
LDR             R0, [R0]
ADD             R0, R0, #0x120000
ADD             R0, R0, #0x12C0
BL              sub_5F15E4
MOV             R1, R0
ADD             R0, R4, #0x194
BL              sub_123C70
LDR             R1, =0x19A
MOV             R0, #0
STRH            R0, [R1,R4]
POP             {R4,PC}

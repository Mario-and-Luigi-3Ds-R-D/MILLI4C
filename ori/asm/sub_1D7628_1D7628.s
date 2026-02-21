PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #1
STRB            R0, [R4,#0x1AE]
LDR             R0, =off_6CE970
MOV             R2, #0xFFFFFFFF
MOV             R1, #0x26 ; '&'
LDR             R0, [R0]
ADD             R0, R0, #0x120000
ADD             R0, R0, #0x12C0
BL              sub_5F15E4
MOV             R1, R0
ADD             R0, R4, #0x1A0
POP             {R4,LR}
B               sub_123C70

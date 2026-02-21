PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #1
STRB            R0, [R4]
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x43C
BL              sub_10A358
CMP             R0, #0
BEQ             loc_281704
LDR             R2, [R4,#0x30]
LDRSB           R3, [R4,#0x34]
ADD             R1, R2, #0x30 ; '0'
BL              sub_282828
MOV             R1, R0
ADD             R0, R4, #0x20 ; ' '
BL              sub_629488
POP             {R4,PC}

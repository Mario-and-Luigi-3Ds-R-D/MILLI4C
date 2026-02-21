PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
MOV             R1, #7
LDR             R0, [R5]
BL              sub_5EEDA0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
CMP             R0, #1
BEQ             loc_143850
LDR             R0, [R5]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x154
BL              sub_10A358
CMP             R0, #0
BEQ             locret_14385C
MOV             R1, R4
POP             {R4-R6,LR}
B               sub_5283F4
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_143864
POP             {R4-R6,PC}

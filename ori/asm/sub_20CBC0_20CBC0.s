LDR             R0, =off_6CE970
PUSH            {R3,LR}
LDR             R0, [R0]
ADD             R0, R0, #0x120000
ADD             R0, R0, #0xF70
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_20CC04
ADD             R3, R2, #0x20 ; ' '
ADD             R1, R2, #0x68 ; 'h'
LDM             R3, {R3,R12}
ADD             R2, R2, #0x74 ; 't'
UXTH            R3, R3
UXTH            R12, R12
STR             R12, [SP,#8+var_8]
BL              sub_2A3154
MOV             R0, #0
POP             {R3,PC}

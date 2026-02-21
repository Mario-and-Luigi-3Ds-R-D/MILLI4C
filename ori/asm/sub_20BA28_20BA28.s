PUSH            {R3-R5,LR}
LDR             R3, [R2,#0x14]
ADD             R2, R2, #8
LDM             R2, {R1,R4,R12}
AND             R3, R3, #0xFF
MOV             R5, R1,LSL#20
UXTH            R2, R12
MOV             R5, R5,LSR#20
AND             R1, R4, #0xFF
ADD             R0, R0, R5,LSL#3
LDR             R0, [R0,#0x2B4]
CMP             R0, #0
BEQ             loc_20BA68
MOV             R12, #0
STR             R12, [SP,#0x10+var_10]
BL              sub_149160
MOV             R0, #0
POP             {R3-R5,PC}

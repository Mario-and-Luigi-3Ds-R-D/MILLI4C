PUSH            {R4-R7,LR}
ADD             R5, R2, #0x78 ; 'x'
ADD             R4, R2, #0x6C ; 'l'
VPUSH           {D8-D9}
SUB             SP, SP, #0x24
LDR             R0, [R2,#0x2C]
LDR             R1, [R2,#8]
LDR             R3, [R2,#0x20]
CMP             R0, #0
LDR             R0, =off_6CE970
ADD             R2, R2, #0x84
VLDM            R5, {S16-S17}
UXTH            R1, R1
LDR             R0, [R0]
AND             R5, R3, #0xFF
VLDM            R2, {S18-S19}
MOVNE           R6, #1
MOVEQ           R6, #0
BL              sub_52A63C
MOV             R7, R0
MOV             R0, SP
BL              sub_219D38
LDM             R4, {R0-R2}
STMEA           SP, {R0-R2}
ADD             R0, SP, #0x48+var_3C
MOV             R1, SP
VSTM            R0, {S16-S19}
MOV             R0, R7
STRB            R5, [SP,#0x48+var_2C]
STRB            R6, [SP,#0x48+var_2B]
BL              sub_127EAC
ADD             SP, SP, #0x24 ; '$'
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R7,PC}

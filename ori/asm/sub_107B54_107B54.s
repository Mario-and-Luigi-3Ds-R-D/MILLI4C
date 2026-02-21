PUSH            {R4,LR}
SUB             SP, SP, #0x18
MOV             R4, R1
MOV             R1, #0xFFFFFFFF
ADD             R3, SP, #0x20+var_10
MOV             R2, R1
STM             R3, {R1,R2}
ADD             R2, SP, #0x20+var_14
STR             R1, [SP,#0x20+var_14]
LDR             R0, [R0]
ADD             R1, SP, #0x20+var_10
STMEA           SP, {R1,R2}
ADD             R3, SP, #0x20+var_18
LDR             R0, [R0,#4]
MOV             R2, #1
MOV             R1, R4
BL              sub_10FE74
BL              sub_10F2FC
CMP             R0, #0
BEQ             loc_107BC0
BL              sub_11B5E0
CMP             R0, #0
BNE             loc_107BC0
MOV             R0, #0
STRH            R0, [R4]
STRH            R0, [R4,#2]
STRB            R0, [R4,#4]
LDR             R0, [SP,#0x20+var_18]
ADD             SP, SP, #0x18
CMP             R0, #0
MOVGT           R0, #1
MOVLE           R0, #0
POP             {R4,PC}

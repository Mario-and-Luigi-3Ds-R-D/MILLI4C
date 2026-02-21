PUSH            {R4,R5,LR}
SUB             SP, SP, #0x1FC
MOV             R4, R1
MOV             R5, R2
LDR             R1, =unk_68E088
MOV             R2, #0x1C0
MOV             R0, SP
BL              sub_127EB8
LDR             R0, =unk_68E030
CMP             R4, #0xFE
ADD             R1, R0, #0x218
ADD             R0, R0, #0x234
VLDM            R1, {S0-S6}
ADD             R1, SP, #0x208+var_48
VSTM            R1, {S0-S6}
VLDM            R0, {S0-S6}
ADD             R0, SP, #0x208+var_2C
VSTM            R0, {S0-S6}
BEQ             loc_1BD6E0
CMP             R4, #0xFF
BEQ             loc_1BD6F8
CMP             R4, #4
SUBHI           R0, R4, #0xC
MOV             R1, SP
UXTHHI          R4, R0
MOV             R2, #0x1C
RSB             R0, R4, R4,LSL#3
ADD             R1, R1, R0,LSL#2
MOV             R0, R5
BL              sub_1103A4
ADD             SP, SP, #0x1FC
POP             {R4,R5,PC}
MOV             R2, #0x1C
ADD             R1, SP, #0x208+var_48
MOV             R0, R5
BL              sub_1103A4
ADD             SP, SP, #0x1FC
POP             {R4,R5,PC}
MOV             R2, #0x1C
ADD             R1, SP, #0x208+var_2C
MOV             R0, R5
BL              sub_1103A4
ADD             SP, SP, #0x1FC
POP             {R4,R5,PC}

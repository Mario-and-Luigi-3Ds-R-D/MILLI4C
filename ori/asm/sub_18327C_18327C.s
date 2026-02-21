ADD             R2, R3, #0x6C ; 'l'
PUSH            {R4,LR}
SUB             SP, SP, #0x28
VLDM            R2, {S0-S2}
ADD             R4, SP, #0x30+var_14
ADD             R1, R3, #8
MOV             R3, #1
VSTM            R4, {S0-S2}
MOV             R2, #0xFFFFFFFF
LDR             R12, [R1,#0x20]
ADD             LR, SP, #0x30+var_24
MOV             R4, #0
CMP             R12, #0
MOVNE           R12, #1
STRD            R2, R3, [SP,#0x30+var_1C]
STM             LR, {R4,R12}
LDR             R3, [R1,#0x18]
LDR             R12, [R1,#0x14]
LDR             R2, [R1,#0x1C]
CMP             R12, #0
SXTH            R3, R3
MOVNE           R12, #1
STR             R2, [SP,#0x30+var_28]
STR             R3, [SP,#0x30+var_2C]
STR             R12, [SP,#0x30+var_30]
LDR             R0, [R0,#4]
LDR             R2, [R1,#0x10]
LDR             R1, [R1]
LDR             R12, [R0]
AND             R3, R2, #0xFF
ADD             R2, SP, #0x30+var_14
LDR             R12, [R12,#0x288]
BLX             R12
ADD             SP, SP, #0x28 ; '('
MOV             R0, #2
POP             {R4,PC}

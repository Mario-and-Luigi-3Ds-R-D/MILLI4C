PUSH            {R4,R5,LR}
SUB             SP, SP, #0x34
MOV             R3, R2
LDR             R2, [SP,#0x40+arg_0]
ADD             R12, SP, #0x40+var_30
MOV             R4, R0
ADD             R5, R0, #0x400
VLDM            R2, {S0-S7}
ADD             R5, R5, #0x358
VSTM            R12, {S0-S7}
LDRB            R0, [R0,#0xA4C]
TST             R0, #0x40
BEQ             loc_1E7D78
VMOV            R0, S4
ORR             R0, R0, #0x800
ORR             R0, R0, #0x34 ; '4'
STR             R0, [SP,#0x40+var_20]
LDR             R0, [R4,#4]
ADD             R2, SP, #0x40+var_30
STR             R2, [SP,#0x40+var_38]
ADD             R12, R0, #0xCC
MOV             R2, R1
STMEA           SP, {R0,R12}
MOV             R1, R5
MOV             R0, R4
BL              sub_1F33A0
LDR             R3, [R4]
MOV             R1, #0x178
MOV             R0, R4
LDRH            R2, [R1,R5]
LDR             R3, [R3,#0x278]
LDR             R1, [R5,#0x16C]
BLX             R3
ADD             SP, SP, #0x34 ; '4'
POP             {R4,R5,PC}

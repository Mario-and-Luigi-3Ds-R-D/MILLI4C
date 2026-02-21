PUSH            {R4,R5,LR}
SUB             SP, SP, #0x34
MOV             R5, R0
LDR             R0, [SP,#0x40+arg_4]
MOV             R4, R1
ADD             R1, SP, #0x40+var_30
VLDM            R0, {S0-S7}
VSTM            R1, {S0-S7}
LDRB            R0, [R4,#0x2F4]
TST             R0, #0x40
BEQ             loc_1E7CC0
VMOV            R0, S4
ORR             R0, R0, #0x800
ORR             R0, R0, #0x34 ; '4'
STR             R0, [SP,#0x40+var_20]
LDR             R0, [R5,#4]
ADD             R1, SP, #0x40+var_30
STR             R1, [SP,#0x40+var_38]
ADD             R12, R0, #0xCC
STMEA           SP, {R0,R12}
MOV             R1, R4
MOV             R0, R5
BL              sub_1F33A0
LDR             R3, [R5]
MOV             R1, #0x178
MOV             R0, R5
LDRH            R2, [R1,R4]
LDR             R3, [R3,#0x278]
LDR             R1, [R4,#0x16C]
BLX             R3
ADD             SP, SP, #0x34 ; '4'
POP             {R4,R5,PC}

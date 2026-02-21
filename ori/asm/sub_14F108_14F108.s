PUSH            {R4,LR}
SUB             SP, SP, #0x10
ADD             R4, R0, #0x1B0
MOV             R2, #0
MOV             R1, SP
BL              sub_5C4198
LDRB            R1, [R4,#5]
ADD             R1, R1, #1
SXTB            R1, R1
CMP             R1, #0
LDRSBLT         R2, [R4,#4]
BGE             loc_14F148
ADD             R1, R1, R2
SXTB            R1, R1
CMP             R1, #0
BLT             loc_14F138
LDRSB           R2, [R4,#4]
CMP             R2, R1
BGT             loc_14F164
SUB             R1, R1, R2
SXTB            R1, R1
CMP             R2, R1
BLE             loc_14F154
STRB            R1, [R4,#5]
LDR             R2, [R4]
ADD             R1, R1, R1,LSL#1
VLDM            R0, {S0-S2}
ADD             R0, R2, R1,LSL#2
VSTM            R0, {S0-S2}
LDRSB           R0, [R4,#6]
LDRSB           R1, [R4,#4]
CMP             R0, R1
ADDLT           R0, R0, #1
STRBLT          R0, [R4,#6]
ADD             SP, SP, #0x10
POP             {R4,PC}

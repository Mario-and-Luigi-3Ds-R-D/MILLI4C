PUSH            {R4,LR}
MOV             R4, R0
LDRSB           R0, [R0,#0xF6]
SUB             SP, SP, #0x18
CMP             R0, #0
BLE             loc_24D57C
LDRB            R0, [R4,#0xF2]
CMP             R0, #0
BEQ             loc_24D57C
ADD             R0, R4, #0x24 ; '$'
ADD             R3, R4, #0x5C ; '\'
VLDM            R0, {S0-S2}
LDR             R0, =0x18D8
VSTMEA          SP, {S0-S2}
VLDM            R3, {S0-S2}
ADD             R3, SP, #0x20+var_14
VSTM            R3, {S0-S2}
LDRB            R0, [R0,R4]
CMP             R0, #0
MOVEQ           R0, R4
BLEQ            sub_24E51C
LDR             R0, [R4]
MOV             R1, SP
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, SP, #0x20+var_14
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
ADD             SP, SP, #0x18
POP             {R4,PC}

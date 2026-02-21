PUSH            {R4,R5,LR}
MOV             R4, R0
LDM             R1, {R0,R2,R3}
SUB             SP, SP, #0x3C
LDR             R1, [R1,#0xC]
ADD             R5, R4, #0x248
STR             R1, [R4,#0x254]
STM             R5, {R0,R2,R3}
MOV             R0, #1
STR             R0, [R4,#0x190]
BL              sub_4635D8
LDR             R3, [R4,#8]
MOV             R2, #0x188
LDR             R1, [R3,#4]
STR             R0, [SP,#0x48+var_48]
LDR             R0, =off_6D1648
ADD             R1, R1, #0x14000
LDRH            R2, [R2,R4]
LDR             R1, [R1,#0x180]
LDR             R0, [R0]
AND             R1, R1, #0xFF
LDR             R0, [R0,#0xA0]
BL              sub_2D4020
MOV             R5, R0
LDR             R0, [R4,#8]
MOV             R2, #0
LDR             R1, [R0,#0xE0]!
LDR             R3, [R1,#0xC]
ADD             R1, SP, #0x48+var_40
BLX             R3
ADD             R1, SP, #0x48+var_40
ADD             LR, SP, #0x48+var_20
VLDM            R1, {S0-S7}
ADD             R1, R5, #0x7C ; '|'
ADD             R0, R5, #0x9C
VSTM            R1, {S0-S7}
LDM             LR, {R1-R3,R12}
VLDR            S0, =0.0
STM             R0, {R1-R3}
MOV             R2, #0
VMOV.F32        S1, S0
STR             R12, [R5,#0xA8]
LDR             R1, [R4,#8]
LDR             R0, =0x2033D
BL              sub_1459F8
LDR             R1, =off_67E548
LDRD            R0, R1, [R1,#(off_67E560 - 0x67E548)]
STRD            R0, R1, [R4]
ADD             SP, SP, #0x3C ; '<'
POP             {R4,R5,PC}

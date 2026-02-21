PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x74]
SUB             SP, SP, #8
ADD             R1, R4, #0x154
STRD            R0, R1, [SP,#0x10+var_10]
LDR             R0, [R4]
LDR             R1, [R4,#0x70]
LDR             R2, [R4,#0x90]
LDR             R3, [R4,#0x154]
LDR             R12, [R0,#0x8C]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x154]
LDR             R1, [R4,#0x74]
CMP             R0, R1
BCC             loc_1EB87C
LDR             R1, =off_67E324
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x4C]
ADD             SP, SP, #8
POP             {R4,PC}

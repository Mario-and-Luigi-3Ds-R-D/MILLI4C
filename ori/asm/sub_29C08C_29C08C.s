PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x18
VLDR            S16, =1.0
ADD             R0, R0, #0x194
VMOV.F32        S0, S16
BL              sub_5A176C
LDR             R0, [R4,#0x190]
CMP             R0, #0
BLE             loc_29C0D8
SUBS            R0, R0, #1
STR             R0, [R4,#0x190]
BNE             loc_29C0D8
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #0
BLX             R2
ADD             R0, R4, #0x194
BL              sub_5F1964
CMP             R0, #0
NOP
BEQ             loc_29C13C
MOV             R0, #0
VLDR            S1, =0.0
STR             R0, [SP,#0x28+var_18]
VSTR            S1, [SP,#0x28+var_28]
VSTR            S1, [SP,#0x28+var_24]
VSTR            S1, [SP,#0x28+var_20]
MOV             R1, R0
VSTR            S16, [SP,#0x28+var_1C]
MOV             R3, SP
ADD             R2, SP, #0x28+var_18
MOV             R0, R4
BL              sub_29CCC0
LDR             R0, [R4,#0x198]
MOV             R1, SP
STR             R0, [SP,#0x28+var_1C]
ADD             R0, SP, #0x28+var_18
BL              sub_4BE9C4
NOP
NOP
B               loc_29C148
MOV             R1, #0
ADD             R0, R4, #0xC
BL              sub_1E8FFC
LDR             R0, [R4,#0x190]
CMP             R0, #0
BNE             loc_29C174
ADD             R0, R4, #0x194
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             loc_29C174
LDR             R1, =off_67E548
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4,PC}

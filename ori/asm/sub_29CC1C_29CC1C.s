PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
VLDR            S16, =1.0
ADD             R0, R0, #0x1C8
VMOV.F32        S0, S16
BL              sub_5A2484
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x20+var_18]
STMEA           SP, {R1,R2}
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
MOV             R1, SP
BLX             R2
ADD             R0, R4, #0x194
BL              sub_5F1964
CMP             R0, #0
BEQ             loc_29CC84
VMOV.F32        S0, S16
ADD             R0, R4, #0x194
BL              sub_5A176C
LDR             R0, [R4,#8]
VSTR            S0, [R0,#0xF4]
ADD             R0, R4, #0x1C8
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_29CCAC
LDR             R0, [R4,#0x190]
LDR             R1, =off_67E548
STRB            R0, [R4,#0x18D]
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}

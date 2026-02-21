ADD             R0, R2, #0xC
PUSH            {R4-R6,LR}
SUB             SP, SP, #0x10
LDM             R0, {R0,R3}
LDR             R1, [R2,#8]
AND             R5, R0, #0xFF
LDR             R0, [R2,#0x74]
AND             R6, R3, #0xFF
UXTH            R1, R1
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R2,#0x78]
STR             R0, [SP,#0x20+var_1C]
LDR             R0, [R2,#0x7C]
STR             R0, [SP,#0x20+var_18]
LDR             R0, [R2,#0x20]
UXTH            R4, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
CMP             R5, #1
BNE             loc_2045B0
VLDR            S1, [R0,#0x5C]
VLDR            S0, [SP,#0x20+var_20]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_20]
VLDR            S1, [R0,#0x60]
VLDR            S0, [SP,#0x20+var_1C]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_1C]
VLDR            S1, [R0,#0x64]
VLDR            S0, [SP,#0x20+var_18]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_18]
CMP             R4, #0
BEQ             loc_2045D4
CMP             R6, #0
BEQ             loc_2045F8
CMP             R6, #1
BEQ             loc_20461C
CMP             R6, #2
BEQ             loc_204640
B               loc_204658
ADD             R4, R0, #0x158
MOV             R0, R4
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R4, #0x1C
ADD             R4, R4, #4
STM             R3, {R0-R2}
STM             R4, {R0-R2}
B               loc_204658
VMOV            S0, R4
MOV             R2, SP
MOV             R1, #0
ADD             R0, R0, #0x158
VCVT.F32.U32    S0, S0
BL              sub_5A2074
NOP
NOP
B               loc_204658
VMOV            S0, R4
MOV             R2, SP
MOV             R1, #0
ADD             R0, R0, #0x158
VCVT.F32.U32    S0, S0
BL              sub_5A2298
NOP
NOP
B               loc_204658
VMOV            S0, R4
MOV             R2, SP
MOV             R1, #0
ADD             R0, R0, #0x158
VCVT.F32.U32    S0, S0
BL              sub_5A1EE8
ADD             SP, SP, #0x10
MOV             R0, #0
POP             {R4-R6,PC}

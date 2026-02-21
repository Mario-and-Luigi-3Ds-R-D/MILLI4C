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
BNE             loc_205BFC
VLDR            S1, [R0,#0x44]
VLDR            S0, [SP,#0x20+var_20]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_20]
VLDR            S1, [R0,#0x48]
VLDR            S0, [SP,#0x20+var_1C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_1C]
VLDR            S1, [R0,#0x4C]
VLDR            S0, [SP,#0x20+var_18]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_18]
CMP             R4, #0
BEQ             loc_205C20
CMP             R6, #0
BEQ             loc_205C44
CMP             R6, #1
BEQ             loc_205C68
CMP             R6, #2
BEQ             loc_205C8C
B               loc_205CA4
ADD             R4, R0, #0x100
MOV             R0, R4
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R4, #0x1C
ADD             R4, R4, #4
STM             R3, {R0-R2}
STM             R4, {R0-R2}
B               loc_205CA4
VMOV            S0, R4
MOV             R2, SP
MOV             R1, #0
ADD             R0, R0, #0x100
VCVT.F32.U32    S0, S0
BL              sub_5A2074
NOP
NOP
B               loc_205CA4
VMOV            S0, R4
MOV             R2, SP
MOV             R1, #0
ADD             R0, R0, #0x100
VCVT.F32.U32    S0, S0
BL              sub_5A2298
NOP
NOP
B               loc_205CA4
VMOV            S0, R4
MOV             R2, SP
MOV             R1, #0
ADD             R0, R0, #0x100
VCVT.F32.U32    S0, S0
BL              sub_5A1EE8
ADD             SP, SP, #0x10
MOV             R0, #0
POP             {R4-R6,PC}

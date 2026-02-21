PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R0, [R0,#8]
LDR             R4, [R0,#0x18]
ADD             R1, R4, #0x1B0
LDRSB           R3, [R1,#5]
SUBS            R0, R3, #0
LDRSBLT         R2, [R1,#4]
BGE             loc_153F2C
ADD             R0, R0, R2
SXTB            R0, R0
CMP             R0, #0
BLT             loc_153F1C
LDRSB           R2, [R1,#4]
CMP             R2, R0
BGT             loc_153F48
SUB             R0, R0, R2
SXTB            R0, R0
CMP             R2, R0
BLE             loc_153F38
LDR             R1, [R1]
ADD             R0, R0, R0,LSL#1
ADD             R2, R4, #0x1B0
ADD             R0, R1, R0,LSL#2
VLDR            S0, [R0,#4]
SUB             R0, R3, #1
SXTB            R0, R0
CMP             R0, #0
LDRSBLT         R1, [R2,#4]
BGE             loc_153F80
ADD             R0, R0, R1
SXTB            R0, R0
CMP             R0, #0
BLT             loc_153F70
LDRSB           R1, [R2,#4]
CMP             R1, R0
BGT             loc_153F9C
SUB             R0, R0, R1
SXTB            R0, R0
CMP             R1, R0
BLE             loc_153F8C
LDR             R1, [R2]
ADD             R0, R0, R0,LSL#1
VLDR            S1, =0.0
ADD             R0, R1, R0,LSL#2
VLDR            S2, [R0,#4]
VSUB.F32        S0, S0, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             locret_154044
MOV             R0, R4
BL              sub_5C55B8
CMP             R0, #5
NOP
BHI             locret_154044
MOV             R0, R4
BL              sub_5C55B8
ADD             R0, R0, #3
AND             R1, R0, #0xFF
MOV             R3, #0x100
MOV             R2, #0
MOV             R0, R4
BL              sub_14C548
CMP             R5, #0
NOP
BEQ             locret_154044
LDR             R4, =off_6CE970
LDR             R0, [R4]
BL              sub_5EE83C
CMP             R0, #0
NOP
BEQ             locret_154044
LDR             R0, =unk_6E1FD0
VLDR            S1, =256.0
MOV             R2, #1
VLDR            S0, [R0,#(flt_6E231C - 0x6E1FD0)]
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
LDR             R0, [R4]
POP             {R4-R6,LR}
B               sub_530184
POP             {R4-R6,PC}

PUSH            {R3-R9,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_5C55B8
CMP             R0, #3
BEQ             loc_14FF74
ADD             R1, R5, #0x1B0
LDRSB           R0, [R1,#5]
SUBS            R3, R0, #0
LDRSBLT         R2, [R1,#4]
BGE             loc_14FECC
ADD             R0, R0, R2
SXTB            R0, R0
CMP             R0, #0
BLT             loc_14FEBC
LDRSB           R2, [R1,#4]
CMP             R2, R0
BGT             loc_14FEE8
SUB             R0, R0, R2
SXTB            R0, R0
CMP             R2, R0
BLE             loc_14FED8
LDR             R1, [R1]
ADD             R0, R0, R0,LSL#1
ADD             R2, R5, #0x1B0
ADD             R0, R1, R0,LSL#2
VLDR            S0, [R0,#4]
SUB             R0, R3, #1
SXTB            R0, R0
CMP             R0, #0
LDRSBLT         R1, [R2,#4]
BGE             loc_14FF20
ADD             R0, R0, R1
SXTB            R0, R0
CMP             R0, #0
BLT             loc_14FF10
LDRSB           R1, [R2,#4]
CMP             R1, R0
BGT             loc_14FF3C
SUB             R0, R0, R1
SXTB            R0, R0
CMP             R1, R0
BLE             loc_14FF2C
LDR             R1, [R2]
ADD             R0, R0, R0,LSL#1
VLDR            S1, =0.0
ADD             R0, R1, R0,LSL#2
VLDR            S2, [R0,#4]
VSUB.F32        S0, S0, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_14FF74
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #3
MOV             R0, R5
BL              sub_14C548
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             locret_14FFDC
BL              sub_48004C
LDR             R8, =unk_63E868
CMP             R0, #0
MOV             R7, #0
BEQ             loc_14FFE0
LDR             R6, [R4,#8]
LDRH            R1, [R6,#0x10]
SUB             R0, R1, #0x1000
SUBS            R0, R0, #1
BNE             loc_14FFE0
LDR             R0, [R6,#0x18]!
CMP             R0, #0
BEQ             loc_14FFCC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R6]
ADD             R0, R4, #0x24 ; '$'
BL              sub_47D780
LDRD            R0, R1, [R8,#(off_63E8A0 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R3-R9,PC}
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #5
MOV             R0, R5
BL              sub_14C548
LDR             R9, =off_6CE970
LDR             R6, [R9]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R5
MOV             R1, #0
MOV             R0, R6
STR             R7, [SP,#0x20+var_20]
BL              sub_52AE88
LDR             R0, [R4,#8]
LDR             R12, [R9]
LDR             R2, =0x3000A
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
LDRD            R0, R1, [R8,#(off_63E8A8 - 0x63E868)]
NOP
B               loc_14FFD8

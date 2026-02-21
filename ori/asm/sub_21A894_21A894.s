PUSH            {R4-R9,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
ADD             R1, R5, #0x1B0
LDRSB           R3, [R1,#5]
SUBS            R0, R3, #0
LDRSBLT         R2, [R1,#4]
BGE             loc_21A8D0
ADD             R0, R0, R2
SXTB            R0, R0
CMP             R0, #0
BLT             loc_21A8C0
LDRSB           R2, [R1,#4]
CMP             R2, R0
BGT             loc_21A8EC
SUB             R0, R0, R2
SXTB            R0, R0
CMP             R2, R0
BLE             loc_21A8DC
LDR             R1, [R1]
ADD             R0, R0, R0,LSL#1
ADD             R2, R5, #0x1B0
ADD             R0, R1, R0,LSL#2
VLDR            S0, [R0,#4]
SUB             R0, R3, #1
SXTB            R0, R0
CMP             R0, #0
LDRSBLT         R1, [R2,#4]
BGE             loc_21A924
ADD             R0, R0, R1
SXTB            R0, R0
CMP             R0, #0
BLT             loc_21A914
LDRSB           R1, [R2,#4]
CMP             R1, R0
BGT             loc_21A940
SUB             R0, R0, R1
SXTB            R0, R0
CMP             R1, R0
BLE             loc_21A930
LDR             R1, [R2]
ADD             R0, R0, R0,LSL#1
VLDR            S16, =0.0
ADD             R0, R1, R0,LSL#2
VLDR            S1, [R0,#4]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_21A9BC
MOV             R0, R5
BL              sub_5C55B8
MOV             R1, R0
LDRB            R0, [R4,#0x19]
ADD             R0, R0, #3
CMP             R1, R0
BEQ             loc_21A9BC
AND             R1, R0, #0xFF
MOV             R3, #0x100
MOV             R2, #0
MOV             R0, R5
BL              sub_14C430
LDRB            R0, [R4,#0x1A]
CMP             R0, #5
BNE             loc_21A9BC
MOV             R0, #0x10
STR             R0, [SP,#0x30+var_30]
LDR             R1, =sub_21AC1C
MOV             R3, #0
MOV             R2, #1
MOV             R0, R5
BL              sub_501E58
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_21AAB4
LDR             R0, =dword_6E1330
LDR             R8, =off_6CE970
LDR             R0, [R0]
LDR             R6, [R8]
TST             R0, #1
BNE             loc_21AA14
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_21AA14
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R7, #0
MOV             R0, #7
STMEA           SP, {R0,R7}
LDR             R3, =flt_711FE4
MOV             R2, R5
MOV             R1, R7
MOV             R0, R6
BL              sub_52AE1C
LDR             R0, [R4,#8]
LDR             R12, [R8]
LDR             R2, =0x300A6
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
MOV             R0, R5
NOP
BL              sub_501804
LDR             R0, [R4,#8]
NOP
BL              sub_4E2F30
LDRB            R0, [R4,#0x19]
MOV             R3, #0x100
MOV             R2, #1
ADD             R0, R0, #5
AND             R1, R0, #0xFF
MOV             R0, R5
BL              sub_14C430
LDR             R0, [R4,#0x14]
LDR             R8, =off_64E794
VLDR            S0, [R0,#0xC]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_21AAC0
MOV             R1, #0
ADD             R0, R5, #0x1DC
BL              sub_5A2708
LDRD            R0, R1, [R8,#(off_64E7BC - 0x64E794)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R9,PC}
LDR             R0, [R4,#8]
MOV             R9, #1
MOV             R6, #0
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_502348
LDR             R0, [R5,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_21AAB4
LDR             R0, [R4,#8]
LDRB            R1, [R4,#0x1A]
LDRB            R2, [R0,#0x488]
CMP             R2, R1
BNE             loc_21AB20
ADD             SP, SP, #0xC
MOV             R2, R6
VPOP            {D8}
MOV             R1, R9
MOV             R0, R4
POP             {R4-R9,LR}
B               loc_21B50C
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
STR             R7, [SP,#0x30+var_30]
BL              sub_4E3CA0
LDRD            R0, R1, [R8,#(dword_64E79C - 0x64E794)]
STRD            R0, R1, [R4,#0xC]
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x18]
BL              sub_501804
LDR             R0, [R4,#8]
STRB            R7, [R0,#0x48A]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R9,PC}

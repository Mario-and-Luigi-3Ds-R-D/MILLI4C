PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
MOV             R6, #0
LDR             R0, [R0,#8]
LDR             R8, =off_6CE970
LDR             R5, [R0,#0x18]
LDR             R7, [R8]
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_152BAC
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R7]; byte_19CF30
CMP             R0, #0
BEQ             loc_152C0C
LDR             R0, [R5,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_152C0C
LDR             R0, [R8]
BL              sub_52FC34
MOV             R6, R0
LDRB            R0, [R0,#0x1D9]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BEQ             loc_152C0C
LDRB            R0, [R4,#0x15]
CMP             R0, #0
BNE             loc_152C0C
MOV             R0, R6
BL              sub_147708
STR             R0, [R6,#0x13C]
MOV             R1, #1
STRB            R1, [R4,#0x15]
MOV             R1, #0
MOV             R0, R4
BL              sub_151F00
MOV             R0, R5
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_152FE0
LDRSB           R0, [R4,#0x14]
LDR             R9, =0xFFE683CC
MOV             R10, #0
CMN             R0, #1
MOV             R11, #7
BEQ             loc_152D58
CMP             R0, #3
MOV             R3, #0x100
MOV             R2, #1
BEQ             loc_152C70
MOV             R1, #8
MOV             R0, R5
BL              sub_14C548
LDR             R7, [R8]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_152E38
B               loc_152E28
MOV             R1, #0xC
MOV             R0, R5
BL              sub_14C548
LDR             R7, [R8]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_152CA4
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R7]; byte_19CF30
CMP             R0, #0
BEQ             loc_152CB8
LDRB            R0, [R6,#0x1D9]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BNE             loc_152D28
B               loc_152D04
LDR             R6, [R8]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R5
MOV             R1, #0x69 ; 'i'
MOV             R0, R6
STR             R10, [SP,#0x30+var_2C]
STR             R11, [SP,#0x30+var_30]
BL              sub_52AE1C
LDR             R0, [R4,#8]
LDR             R2, =0x3009F
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, [R8]
SUB             R0, R0, R9
BL              sub_503808
NOP
NOP
B               loc_152D4C
MOV             R0, R4
BL              sub_153968
LDR             R0, [R4,#8]
LDR             R2, =0x30096
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, [R8]
SUB             R0, R0, R9
BL              sub_503808
LDR             R6, [R8]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R5
MOV             R1, #0x10
MOV             R0, R6
STR             R10, [SP,#0x30+var_2C]
STR             R11, [SP,#0x30+var_30]
BL              sub_52AE1C
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FCB8 - 0x63FC24)]
B               loc_152E20
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x10
MOV             R0, R5
BL              sub_14C548
LDR             R7, [R8]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_152D94
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R7]; byte_19CF30
CMP             R0, #0
BEQ             loc_152DA8
LDRB            R0, [R6,#0x1D9]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BNE             loc_152E18
B               loc_152DF4
LDR             R6, [R8]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R5
MOV             R1, #0x6B ; 'k'
MOV             R0, R6
STR             R10, [SP,#0x30+var_2C]
STR             R11, [SP,#0x30+var_30]
BL              sub_52AE1C
LDR             R0, [R4,#8]
LDR             R2, =0x300A1
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, [R8]
SUB             R0, R0, R9
BL              sub_503808
NOP
NOP
B               loc_152E18
MOV             R0, R4
BL              sub_153968
LDR             R0, [R4,#8]
LDR             R2, =0x30098
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, [R8]
SUB             R0, R0, R9
BL              sub_503808
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FCC0 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
B               loc_152EEC
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R7]; byte_19CF30
CMP             R0, #0
BEQ             loc_152E4C
LDRB            R0, [R6,#0x1D9]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BNE             loc_152EBC
B               loc_152E98
LDR             R6, [R8]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R5
MOV             R1, #0x6A ; 'j'
MOV             R0, R6
STR             R10, [SP,#0x30+var_2C]
STR             R11, [SP,#0x30+var_30]
BL              sub_52AE1C
LDR             R0, [R4,#8]
LDR             R2, =0x300A0
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, [R8]
SUB             R0, R0, R9
BL              sub_503808
NOP
NOP
B               loc_152EE0
MOV             R0, R4
BL              sub_153968
LDR             R0, [R4,#8]
LDR             R2, =0x30097
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, [R8]
SUB             R0, R0, R9
BL              sub_503808
LDR             R6, [R8]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R5
MOV             R1, #0x13
MOV             R0, R6
STR             R10, [SP,#0x30+var_2C]
STR             R11, [SP,#0x30+var_30]
BL              sub_52AE1C
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FCB8 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
LDR             R5, [R8]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_152FE0
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_152FE0
LDRSB           R0, [R4,#0x14]
BL              sub_49A430
LDR             R0, [R0]
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_151000
MOV             R0, R4
NOP
BL              sub_151660
ADD             R0, R4, #0x100
LDRH            R1, [R0,#0x5C]
LDRH            R0, [R0,#0x5E]
CMP             R1, R0
BNE             loc_152F5C
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R11,LR}
MOV             R1, #0
B               sub_151F00
LDRSB           R0, [R4,#0x14]
MOV             R5, #0
ADD             R0, R0, #1
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_152F6C; jumptable 00152F6C default case
DCD loc_152FBC; jump table for switch statement
MOV             R5, #4; jumptable 00152F6C case 4
B               loc_152FB0
MOV             R5, #3; jumptable 00152F6C case 3
B               loc_152FB0
MOV             R5, #2; jumptable 00152F6C case 2
B               loc_152FB0
MOV             R5, #1; jumptable 00152F6C case 1
B               loc_152FB0
CMP             R5, #0; jumptable 00152F6C default case
BEQ             loc_152FBC; jumptable 00152F6C case 0
MOV             R1, R5
MOV             R0, R4
BL              sub_151F00
LDRB            R0, [R4,#0x1A]; jumptable 00152F6C case 0
CMP             R0, #0
BNE             loc_152FE0
LDR             R0, [R8]
ADD             SP, SP, #0xC
MOV             R1, R5
POP             {R4-R11,LR}
MOV             R2, #1
B               sub_52C6FC
ADD             SP, SP, #0xC
POP             {R4-R11,PC}

PUSH            {R4-R9,LR}
MOV             R5, R0
VPUSH           {D8}
SUB             SP, SP, #0x14
LDR             R0, [R0,#0x18]
LDR             R4, [R0]
LDRH            R0, [R4,#0x10]
BL              sub_47FF28
LDR             R9, =off_6CE970
VLDR            S16, =0.0
CMP             R0, #0
MOV             R8, #0
BEQ             loc_1CD420
LDRH            R0, [R4,#0x10]
BL              sub_47FF28
CMP             R0, #0
BEQ             loc_1CD378
LDRH            R1, [R4,#0x10]
LDR             R0, [R9]
BL              sub_52F368
LDRB            R1, [R5,#0x28]
CMP             R1, #2
LDRB            R1, [R0,#0x495]
BEQ             loc_1CD3B8
LDR             R6, =0x356
CMP             R1, #0
ORR             R0, R6, R6,ASR#8
BEQ             loc_1CD39C
MOV             R6, R0
LDR             R0, =dword_6E1330
LDR             R7, [R4,#0x18]
LDR             R4, [R9]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1CD3F8
B               loc_1CD3CC
LDR             R6, =0x352
CMP             R1, #0
ORR             R0, R6, R6,ASR#8
BEQ             loc_1CD39C
B               loc_1CD398
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1CD3F8
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #0x27 ; '''
STMEA           SP, {R0,R8}
LDR             R3, =flt_711FE4
MOV             R2, R7
MOV             R1, R6
MOV             R0, R4
BL              sub_52C764
MOV             R6, R0
NOP
B               loc_1CD4EC
LDRB            R0, [R5,#0x28]
ADD             R3, SP, #0x38+var_30
CMP             R0, #2
ADD             R0, R4, #0x158
LDRNE           R1, =0x35E
LDM             R0, {R0,R2}
MOVEQ           R1, #0x35C
STM             R3, {R0,R2}
LDR             R3, =0x307
VSTR            S16, [SP,#0x38+var_28]
LDR             R0, [R9]
LDR             R2, [R4,#0x18]
STMEA           SP, {R3,R8}
ADD             R3, SP, #0x38+var_30
BL              sub_52C764
MOV             R6, R0
MOV             R0, R4
BL              sub_5ED140
CMP             R0, #0
NOP
BEQ             loc_1CD4EC
LDR             R4, [R5,#0x18]
MOV             R7, #0x14
LDR             R0, [R4,#0xF8]
CMP             R0, #0
STRNE           R7, [R0,#0x1C]
BNE             loc_1CD4EC
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063BC - 0x106000)]
MOV             R0, #0x20 ; ' '
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1CD4D4
MOV             R2, #0
MOV             R1, #1
BL              sub_1DFBC4
LDR             R1, =off_6BB6B4
STR             R1, [R0]
ADD             R1, R0, #0x18
STM             R1, {R4,R7}
MOV             R1, R0
STR             R0, [R4,#0xF8]
LDR             R0, =0x1064D8
LDR             R2, [R9]
ADD             R0, R0, R2; loc_1064D8
BL              sub_1DFCE0
CMP             R6, #0
BEQ             loc_1CD510
STRH            R8, [R6,#0xA]
LDR             R0, [R5,#0x34]!
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
STR             R6, [R5,#4]
STR             R5, [R6,#0x184]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R9,PC}

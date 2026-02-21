PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_1D1AC0
LDR             R0, =loc_19CF5C
ADD             R5, R4, R0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1D71CC
LDR             R1, [R0]
CMP             R1, #2
CMPNE           R1, #4
BEQ             locret_1D7304
BL              sub_4F38AC
BL              sub_300FD4
MOV             R0, #0
STR             R0, [R5]
ADD             R0, R4, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x368
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             locret_1D7304
ADD             R0, R0, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             locret_1D7304
MOV             R0, R4
BL              sub_5295A8
CMP             R0, #0
NOP
BNE             locret_1D7304
MOV             R0, R4
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             locret_1D7304
LDR             R0, =0x121B7C
ADD             R0, R0, R4
BL              sub_590EE0
LDR             R0, =0xFFE683CC
SUB             R0, R4, R0
NOP
LDR             R0, =0x19DFE8
LDR             R0, [R4,R0]
CMP             R0, #0
BLNE            sub_1CC5F8
LDR             R5, =dword_6E2378
LDRB            R0, [R5,#(byte_6E2387 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1D72C0
MOV             R1, #2
MOV             R0, R4
BL              sub_529254
MOV             R0, R4
NOP
BL              sub_52FA94
CMP             R0, #0
NOP
BEQ             loc_1D72C0
MOV             R0, R4
BL              sub_52FA94
LDRH            R0, [R0,#0x10]
NOP
BL              sub_47FF28
CMP             R0, #0
NOP
BEQ             loc_1D72C0
MOV             R0, R4
BL              sub_52FA94
NOP
NOP
BL              sub_5EC8BC
CMP             R0, #0
MOVNE           R0, R4
BLNE            sub_1D0704
NOP
BL              sub_48004C
LDR             R1, =unk_653FC0
CMP             R0, #0
ADD             R0, R4, #0x1A0000
BEQ             loc_1D72F4
LDR             R2, =0x19CF48
LDR             R2, [R4,R2]
TST             R2, #0x10
BNE             loc_1D72F4
LDRB            R2, [R5,#(byte_6E2387 - 0x6E2378)]
CMP             R2, #0
BEQ             loc_1D7308
LDR             R2, [R1,#(dword_654058 - 0x653FC0)]
LDR             R1, [R1,#(off_654054 - 0x653FC0)]; sub_1D2E50
STR             R1, [R0,#0x5C]
STR             R2, [R0,#0x60]
POP             {R4-R6,PC}
LDR             R2, =0x19DF43
LDRB            R2, [R4,R2]
CMP             R2, #0xFF
LDRNE           R2, [R1,#(off_65404C - 0x653FC0)]; sub_1D2738
LDRNE           R1, [R1,#(off_654050 - 0x653FC0)]
LDREQ           R2, [R1,#0x84]
LDREQ           R1, [R1,#0x88]
STR             R2, [R0,#0x5C]!
STR             R1, [R0,#4]
POP             {R4-R6,PC}

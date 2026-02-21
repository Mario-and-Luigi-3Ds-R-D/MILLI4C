PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R1, #1
LDR             R6, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #0x14
LDR             R0, [R6]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58F5A4
LDR             R0, [R6]
VLDR            S16, =0.0
MOV             R1, #0
BL              sub_5EE8E0
VMOV.F32        S0, S16
MOV             R1, R0
MOV             R0, R4
BL              sub_1DB5F8
LDR             R7, =flt_6E34B0
ADD             R5, R4, #0x11C0
MOV             R2, SP
ADD             R0, R7, #0x148
LDM             R0, {R0,R1,R3}
STMEA           SP, {R0,R1,R3}
ADD             R0, R4, #0x1000
VLDR            S0, [R7,#(flt_6E3604 - 0x6E34B0)]
MOV             R1, #0
ADD             R0, R0, #0x39C
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x30+var_24
REV             R0, R0
STR             R0, [SP,#0x30+var_24]
VLDR            S0, [R7,#(flt_6E35F4 - 0x6E34B0)]
ADD             R0, R5, #0x32C
BL              sub_4E6784
ADD             R0, R4, #0xC00
ADD             R0, R0, #0x1C8
BL              sub_214964
ADD             R0, R4, #0x8800
ADD             R0, R0, #0x98
LDRB            R1, [R0,#0xFD]
CMP             R1, #1
CMPNE           R1, #2
BLNE            sub_2A5AA8
LDR             R0, [R6]
MOV             R1, #2
BL              sub_529274
MOV             R0, #0
MOV             R2, #0
ADD             R1, R0, R0,LSL#1
ADD             R0, R0, #1
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #0x20800
ADD             R1, R1, #0x2C4
CMP             R0, #2
STRB            R2, [R1]
BLT             loc_1DE544
LDR             R0, [R6]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x10C000
MOV             R1, #1
ADD             R0, R0, #0x214
BL              sub_58E7CC
LDR             R7, =unk_656B78
LDR             R0, [R6]
MOV             R1, #0
VLDR            S16, [R7,#(flt_656B80 - 0x656B78)]
BL              sub_5EE8E0
VMOV.F32        S0, S16
MOV             R1, R0
MOV             R0, R4
BL              sub_1DB5F8
LDR             R0, [R6]
NOP
BL              sub_5EE520
ADD             R5, R4, #0x20000
CMP             R0, #5
ADD             R5, R5, #0xA00
BEQ             loc_1DE5D8
LDR             R0, [R6]
BL              sub_5EE520
CMP             R0, #6
NOP
BNE             loc_1DE614
LDR             R0, [R6]
LDR             R1, =0x19D258
LDRB            R1, [R1,R0]
CMP             R1, #0
BNE             loc_1DE614
LDR             R1, =0x8996
LDRB            R1, [R1,R4]
CMP             R1, #0
BEQ             loc_1DE614
ADD             R1, R0, #0x100000
ADD             R1, R1, #0x9D000
MOV             R0, #1
STRB            R0, [R1,#(loc_19D258 - 0x19D000)]
LDRD            R0, R1, [R7,#(off_656C14 - 0x656B78)]
B               loc_1DE618
LDRD            R0, R1, [R7,#(off_656C1C - 0x656B78)]
STRD            R0, R1, [R5,#0xBC]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}

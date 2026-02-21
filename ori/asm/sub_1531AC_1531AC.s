PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R0, [R0,#0x20]
CMP             R0, #0
BNE             loc_153274
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xB
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_14C548
MOV             R0, R5
BL              sub_5C5724
MOV             R2, R0,LSR#1
MOV             R1, #0xFFFFFFFF
MOV             R0, R5
BL              sub_5C55C8
VMOV            S0, R0
MOV             R1, #0
ADD             R0, R5, #0x1DC
VCVT.F32.S32    S0, S0
BL              sub_5A2708
LDR             R5, =off_6CE970
MOV             R3, #0
ADR             R2, aExsetask; "ExSeTask"
LDR             R0, [R5]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063BC - 0x106000)]
MOV             R0, #0x1C
BL              sub_10A358
CMP             R0, #0
BEQ             loc_153254
VLDR            S16, [R4,#8]
MOV             R2, #0
MOV             R1, #1
BL              sub_1DFBC4
LDR             R1, =off_63FD50
STR             R1, [R0]
VSTR            S16, [R0,#0x18]
MOV             R1, R0
LDR             R0, =0x1064D8
LDR             R2, [R5]
ADD             R0, R0, R2; loc_1064D8
BL              sub_1DFCE0
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FCA8 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
VPOP            {D8}
POP             {R4-R6,PC}

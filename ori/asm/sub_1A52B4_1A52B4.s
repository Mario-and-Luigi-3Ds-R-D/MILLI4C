PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R6, R1
LDR             R0, =off_6CE388
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
VLDR            S0, =1.0
VLDR            S19, =0.0
CMP             R6, #0
VMOVEQ.F32      S16, S0
VMOVEQ.F32      S17, S19
MOV             R7, R0
MOV             R0, #0
STRB            R0, [R4,#0x19]
ADD             R5, R4, #0x2C ; ','
STRB            R6, [R4,#0x18]
BEQ             loc_1A533C
CMP             R6, #1
VLDR            S1, =-1.0
VMOVEQ.F32      S17, S19
VMOVEQ.F32      S16, S1
BEQ             loc_1A533C
CMP             R6, #2
VMOVEQ.F32      S16, S19
VMOVEQ.F32      S18, S0
BEQ             loc_1A5334
CMP             R6, #3
VMOVEQ.F32      S16, S19
VMOVEQ.F32      S18, S1
BNE             loc_1A5340
VMOV.F32        S17, S16
B               loc_1A5340
VMOV.F32        S18, S17
MOV             R0, R5
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
ADD             R0, R5, #0x40 ; '@'
VSTR            S19, [R5,#4]
ADD             R5, R5, #0x34 ; '4'
VSTM            R0, {S16-S18}
MOV             R6, #1
MOV             R0, #0x100
VSTM            R5, {S16-S18}
MOV             R3, #0
STR             R0, [SP,#0x30+var_2C]
STR             R6, [SP,#0x30+var_30]
LDR             R0, [R4,#0x1C]
MOV             R2, #0xD
MOV             R1, R3
BL              sub_14F048
MOV             R2, #0
LDR             R0, [R4,#0x1C]
MOV             R1, R2
BL              sub_5ECC58
MOV             R5, R0
VLDR            S0, [R7,#0xC4]
BL              sub_5924AC
MOV             R0, R5
NOP
BL              sub_5F159C
CMP             R0, #0
STRBEQ          R6, [R4,#0x19]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R7,PC}

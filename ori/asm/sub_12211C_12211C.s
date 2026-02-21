PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #4
VLDM            R0, {S0-S1}
LDR             R0, =dword_70EE68
VMUL.F32        S0, S0, S1
BL              sub_129570
MOV             R5, #0
LDR             R0, =dword_70EE68
SXTB            R6, R5
MOV             R1, R6
ADD             R7, R4, R6,LSL#2
VLDR            S0, [R7,#0xC]
BL              sub_12967C
LDR             R0, [R7,#0x14]
CMP             R0, #0
BNE             loc_122174
ADD             R0, R4, R6
LDRB            R0, [R0,#0x30]
CMP             R0, #0
MOVEQ           R2, #0
BEQ             loc_122178
MOV             R2, #1
LDR             R0, =dword_70EE68
MOV             R1, R6
BL              sub_12922C
ADD             R0, R4, R6
MOV             R1, R6
LDRSB           R2, [R0,#0x24]
LDR             R0, =dword_70EE68
BL              sub_129610
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_12213C
LDRB            R1, [R4,#2]
LDR             R0, =dword_70EE68
BL              sub_1296EC
LDRB            R1, [R4,#1]
LDR             R0, =dword_70EE68
BL              sub_129528
LDRH            R1, [R4,#0x28]
LDR             R0, =dword_70EE68
BL              sub_1295BC
LDRB            R1, [R4,#0x27]
LDR             R0, =dword_70EE68
BL              sub_1335CC
LDRH            R1, [R4,#0x2A]
LDR             R0, =dword_70EE68
BL              sub_129298
LDRH            R1, [R4,#0x32]
LDR             R0, =dword_70EE68
BL              sub_129734
MOV             R0, #0
STR             R0, [R4,#0x2C]
LDRB            R1, [R4,#3]
POP             {R4-R8,LR}
LDR             R0, =dword_70EE68
B               sub_1291E8

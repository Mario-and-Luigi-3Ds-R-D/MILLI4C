PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8}
LDRB            R0, [R0]
VLDR            S16, =1.0
CMP             R0, #0
BEQ             loc_121F94
VMOV.F32        S0, S16
LDR             R0, =dword_70EE68
VSTR            S0, [R4,#4]
VLDR            S1, [R4,#8]
VMUL.F32        S0, S0, S1
BL              sub_129570
LDRB            R0, [R4]
CMP             R0, #0
BEQ             loc_121FB8
VMOV.F32        S0, S16
LDR             R0, =dword_70EE68
VSTR            S0, [R4,#8]
VLDR            S1, [R4,#4]
VMUL.F32        S0, S1, S0
BL              sub_129570
VMOV.F32        S0, S16
LDRB            R0, [R4]
MOV             R1, #0
CMP             R0, #0
BEQ             loc_121FD8
LDR             R0, =dword_70EE68
VSTR            S0, [R4,#0xC]
BL              sub_12967C
VMOV.F32        S0, S16
LDRB            R0, [R4]
MOV             R1, #1
CMP             R0, #0
BEQ             loc_121FF8
LDR             R0, =dword_70EE68
VSTR            S0, [R4,#0x10]
BL              sub_12967C
MOV             R6, #0
ADD             R0, R4, #0x34 ; '4'
MOV             R7, R6
MOV             R8, R6
MOV             R5, R0
BL              sub_13273C
STR             R7, [R4,#0x14]
STR             R8, [R4,#0x1C]
LDRSB           R2, [R4,#0x30]
LDR             R0, =dword_70EE68
MOV             R1, R6
BL              sub_12922C
MOV             R0, R5
NOP
BL              sub_1327BC
MOV             R7, #0
ADD             R5, R4, #0x34 ; '4'
MOV             R6, #1
MOV             R8, R7
MOV             R0, R5
BL              sub_13273C
STR             R7, [R4,#0x18]
STR             R8, [R4,#0x20]
LDRSB           R2, [R4,#0x31]
LDR             R0, =dword_70EE68
MOV             R1, R6
BL              sub_12922C
MOV             R0, R5
NOP
BL              sub_1327BC
MOV             R2, #0
LDR             R0, =dword_70EE68
MOV             R1, R2
STRB            R2, [R4,#0x24]
BL              sub_129610
MOV             R2, #0
LDR             R0, =dword_70EE68
MOV             R1, #1
STRB            R2, [R4,#0x25]
BL              sub_129610
MOV             R1, #0x8000
LDR             R0, =dword_70EE68
STRH            R1, [R4,#0x2A]
BL              sub_129298
RSB             R1, R6, R6,LSL#15
LDR             R0, =dword_70EE68
STRH            R1, [R4,#0x28]
BL              sub_1295BC
MOV             R5, #1
NOP
BL              sub_13DF78
CMP             R0, #0
NOP
BEQ             loc_1220E0
LDR             R0, =dword_70EE68
MOV             R1, R5
STRB            R5, [R4,#1]
BL              sub_129528
MOV             R0, #0
STRB            R0, [R4,#0x30]
STRB            R0, [R4,#0x31]
MOV             R1, #2
LDR             R0, =dword_70EE68
STRH            R1, [R4,#0x32]
BL              sub_129734
MOV             R1, #0
STRB            R1, [R4,#3]
LDR             R0, =dword_70EE68
VPOP            {D8}
POP             {R4-R8,LR}
B               sub_1291E8

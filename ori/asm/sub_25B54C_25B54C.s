PUSH            {R4-R8,LR}
ADD             R0, R0, #4
VPUSH           {D8-D9}
VMOV.F32        S16, S0
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R4, #1
STR             R1, [R0,#0x28]
STRB            R4, [R0,#0x2C]
ADD             R0, R0, #0x58 ; 'X'
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
LDR             R2, =off_6CE970
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R4, [R0,#0x14]
LDR             R2, [R2]
SUB             R4, R0, #0x5C ; '\'
LDR             R7, =off_6CE098
ADD             R0, R2, #0x10C000
ADD             R0, R0, #0x214
MOV             R1, #0
STR             R0, [R4,#0x90]
STRB            R1, [R4,#0x94]
STRB            R1, [R4]
LDR             R0, [R7]
ADD             R5, R4, #4
LDR             R6, [R0,#0x8C]
MOV             R0, R5
BL              sub_5A26D0
ADD             R1, R6, #0x1B0
ADD             R3, R5, #0x1C
LDM             R1, {R0-R2}
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
LDR             R0, [R4,#0x90]
ADD             R5, R0, #0x1C4
MOV             R0, R5
BL              sub_5A26D0
ADD             R6, R6, #0x1BC
ADD             R3, R5, #0x1C
LDM             R6, {R0-R2}
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
ADD             R0, R4, #0x5C ; '\'
BL              sub_5A18EC
VLDR            S0, =1.0
VSTR            S0, [R4,#0x68]
VSTR            S0, [R4,#0x60]
LDR             R0, [R7]
LDR             R1, [R4,#0x90]
LDR             R0, [R0,#0x8C]
ADD             R5, R1, #0x1C4
ADD             R6, R0, #0x3E8
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
VLDR            S0, =0.0
STM             R3, {R0-R2}
STM             R5, {R0-R2}
LDR             R0, [R7]
LDR             R0, [R0,#0x8C]
ADD             R0, R0, #0x3DC
VLDM            R0, {S1-S3}
LDR             R0, [R4,#0x90]
VADD.F32        S17, S0, S1
VADD.F32        S18, S0, S2
VADD.F32        S16, S16, S3
ADD             R5, R0, #0x11C
MOV             R0, R5
BL              sub_5A26D0
VSTR            S16, [R5,#0x24]
ADD             R1, R5, #0x1C
MOV             R0, R4
VSTM            R1, {S17-S18}
VSTR            S16, [R5,#0xC]
ADD             R5, R5, #4
VSTM            R5, {S17-S18}
VPOP            {D8-D9}
POP             {R4-R8,PC}

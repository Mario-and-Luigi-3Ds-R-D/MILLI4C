PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R8, #0
LDR             R0, [R0,#0xA8]
STR             R8, [R4,#0xB4]
STR             R8, [R4,#0xB8]
CMP             R0, #0
BLNE            sub_1F6244
LDR             R0, [R4,#0xAC]
CMP             R0, #0
BLNE            sub_1E1E94
LDR             R0, [R4,#0xB0]
CMP             R0, #0
BLNE            sub_29BE24
LDR             R0, [R4,#0x90]
LDR             R7, =off_6D1648
CMP             R0, #0
BEQ             loc_19CC60
STR             R8, [R4,#0x90]
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_19CCA8
MOV             R1, #1
MOV             R0, R4
BL              sub_19AD54
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_19CCA8
MOV             R1, #1
MOV             R0, R4
BL              loc_19AFEC
LDR             R0, [R4,#0x1B4]
TST             R0, #0x1000000
BEQ             loc_19CCA8
BIC             R0, R0, #0x1000000
STR             R0, [R4,#0x1B4]
LDR             R0, [R7]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x648]
ORR             R1, R1, #0x40 ; '@'
STR             R1, [R0,#0x648]
MOV             R5, #0
ADD             R6, R4, R5,LSL#2
LDR             R0, [R6,#0x10]
CMP             R0, #0
BEQ             loc_19CCE4
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R6,#0x10]!
CMP             R0, #0
BEQ             loc_19CCE4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R6]
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BLT             loc_19CCAC
MOV             R2, #0x80
MOV             R1, #0
ADD             R0, R4, #0x10
BL              sub_110BE4
LDR             R0, [R4,#0x94]
CMP             R0, #0
BEQ             loc_19CD1C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R4,#0x94]
STRB            R8, [R4,#0x9E]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_19CD44
BL              sub_110D10
ADD             R0, R4, #0xC
NOP
BL              sub_4BE0F8
MOV             R0, #0
STR             R0, [R4,#0xC]
ADD             R0, R4, #0xC
MOV             R2, #4
MOV             R1, #0
BL              sub_110BE4
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_19CD68
BL              sub_300FD4
STR             R8, [R4,#4]
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #0x200000
BIC             R0, R0, #0x200
STR             R0, [R4,#0x1B4]
STRH            R8, [R4,#0xDC]
LDR             R0, [R4,#0xD4]
CMP             R0, #0
BEQ             loc_19CD90
BL              sub_300FD4
STR             R8, [R4,#0xD4]
LDR             R0, [R4,#0xA8]
CMP             R0, #0
BEQ             loc_19CDB0
BL              sub_1F6740
NOP
NOP
BL              sub_300FD4
STR             R8, [R4,#0xA8]
LDR             R0, [R4,#0xAC]
CMP             R0, #0
BEQ             loc_19CDD0
BL              sub_1E201C
NOP
NOP
BL              sub_300FD4
STR             R8, [R4,#0xAC]
LDR             R0, [R4,#0xB0]
CMP             R0, #0
BEQ             loc_19CDF0
BL              sub_29BF6C
NOP
NOP
BL              sub_300FD4
STR             R8, [R4,#0xB0]
MOV             R2, #0xFF
MOV             R1, #0x11
ADD             R0, R4, #0x1B8
BL              sub_116B10
LDR             R1, [R4,#0x1B4]
MOV             R3, #0x3000
STR             R8, [R4,#0x98]
AND             R12, R1, #0x400000
MOV             R0, R1,LSL#18
MOV             R2, #0xFF
MOV             R0, R0,LSR#30
STRH            R8, [R4,#0x9C]
AND             R1, R3, R0,LSL#12
MOV             R0, R12,LSR#22
STRB            R2, [R4,#0x9F]
ORR             R0, R1, R0,LSL#22
STR             R0, [R4,#0x1B4]
STR             R8, [R4,#0xA4]
LDR             R1, [R7]
CMP             R1, #0
BEQ             loc_19CEC0
TST             R0, #4
ADD             R5, R4, #0x100
BNE             loc_19CE5C
LDRSH           R2, [R5,#0xD2]
CMP             R2, #0
BLT             loc_19CEC0
BIC             R0, R0, #4
VLDR            S0, =570.0
STR             R0, [R4,#0x1B4]
MOV             R12, #1
VSTR            S0, [R4,#0x1CC]
MOV             R3, #0xFFFFFFFF
STRH            R12, [R5,#0xD0]
TST             R0, #0x400000
STRH            R3, [R5,#0xD2]
BEQ             loc_19CEC0
MOV             R0, R1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
BL              sub_5A18EC
LDR             R0, [R7]
NOP
LDR             R0, [R0,#0xBC]
LDRSH           R1, [R5,#0xD0]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VMOV            S1, R1
VLDR            S0, [R4,#0x1CC]
VCVT.F32.S32    S1, S1
BL              sub_5A12F8
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #3
STR             R0, [R4,#0x1B4]
ADD             R0, R4, #0xF8
POP             {R4-R8,LR}
B               sub_194954

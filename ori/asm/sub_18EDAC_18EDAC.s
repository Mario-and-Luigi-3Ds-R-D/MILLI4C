PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R0, #0
ADD             R2, R4, #0x15000
MOV             R1, R0
VPUSH           {D8}
ADD             R3, R4, #0x13800
STRD            R0, R1, [R2,#0x10]
LDR             R0, =0x13B10
VLDR            S16, =0.0
VSTR            S16, [R3,#0x308]
LDR             R0, [R0,R4]
BL              sub_3A1724
ADD             R0, R4, #0x14000
ADD             R1, R4, #0x14400
LDR             R3, [R0,#0x31C]
ADD             R1, R1, #0x1C8
ADD             R2, R4, #0x14400
BIC             R3, R3, #7
STR             R3, [R0,#0x31C]
LDR             R3, [R0,#0x35C]
ADD             R2, R2, #0x1EC
ADD             R5, R4, #0x48 ; 'H'
BIC             R3, R3, #7
STR             R3, [R0,#0x35C]
LDRB            R3, [R0,#0x39C]
VLDR            S0, =1.0
BIC             R3, R3, #7
STRB            R3, [R0,#0x39C]
LDR             R3, [R0,#0x3D8]
BIC             R3, R3, #1
STR             R3, [R0,#0x3D8]
LDR             R3, [R1]
BIC             R3, R3, #1
STR             R3, [R1]
LDR             R1, [R2]
BIC             R1, R1, #1
STR             R1, [R2]
ADD             R1, R4, #0x54 ; 'T'
LDM             R1, {R1-R3}
STM             R5, {R1-R3}
VSTR            S16, [R4,#0x60]
VSTR            S0, [R4,#0x64]
VSTR            S16, [R4,#0x68]
LDR             R1, [R4,#0xB8]
STR             R1, [R4,#0xA4]
VSTR            S0, [R4,#0xA8]
LDR             R1, [R0,#0x180]
ADD             R0, R4, #0xAC
VLDM            R0, {S0-S2}
ADD             R0, R4, #8
BL              sub_1E50EC
LDR             R0, =0x13C7C
LDR             R1, =0x14FF8
MOV             R9, #0
ADD             R2, R0, #0xE4
ADD             R5, R4, #0x10000
STR             R9, [R0,R4]
ADD             R5, R5, #0x3D00
STR             R9, [R1,R4]
STR             R9, [R2,R4]
LDRH            R0, [R5,#4]
BL              sub_2AF718
LDR             R0, [R0]
AND             R1, R0, #1
LDR             R0, =dword_6E7CD0
BL              sub_586C50
LDR             R0, [R4]
LDR             R1, [R0,#0x14]
MOV             R0, R4
BLX             R1
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0x138
LDR             R1, [R0]
CMP             R1, #0
BLNE            sub_4BE0F8
ADD             R0, R4, #0x14800
ADD             R0, R0, #0x368
LDR             R1, [R0]
CMP             R1, #0
BLNE            sub_4BE0F8
LDRH            R0, [R5,#4]
BL              sub_2AF718
MOV             R6, R0
LDRH            R0, [R5,#0x44]
BL              sub_2AF718
MOV             R7, R0
LDR             R1, [R6,#0x10]
LDR             R0, [R0,#0x10]
CMP             R1, R0
BEQ             loc_18EF40
ADD             R8, R4, #0x13C00
ADD             R8, R8, #0x134
LDR             R1, [R8]
CMP             R1, #0
BEQ             loc_18EF40
MOV             R0, #0
STR             R0, [R5,#0x38]
MOV             R0, R1
BL              sub_2FF5D4
STR             R9, [R8]
LDR             R0, [R6,#0x14]
LDR             R1, [R7,#0x14]
CMP             R0, R1
BEQ             loc_18EF7C
ADD             R8, R4, #0x14800
ADD             R8, R8, #0x364
LDR             R1, [R8]
CMP             R1, #0
BEQ             loc_18EF7C
LDR             R2, =0x14B68
MOV             R0, #0
STR             R0, [R2,R4]
MOV             R0, R1
BL              sub_2FF5D4
STR             R9, [R8]
LDRH            R0, [R5,#4]
BL              sub_2B41D0
MOV             R8, R0
LDRH            R0, [R5,#0x44]
BL              sub_2B41D0
CMP             R8, R0
NOP
BEQ             loc_18EFAC
LDR             R0, [R4]
LDR             R1, [R0,#0x20]
MOV             R0, R4
BLX             R1
LDR             R0, [R6]
LDR             R2, [R7]
AND             R1, R0, #1
LDR             R0, =off_6D1648
AND             R2, R2, #1
CMP             R1, R2
BNE             loc_18F028
LDRH            R1, [R5,#0x44]
STRH            R1, [R5,#4]
LDR             R1, [R6]
LDR             R2, [R7]
MOV             R1, R1,LSL#1
MOV             R2, R2,LSL#1
MOV             R1, R1,LSR#16
CMP             R1, R2,LSR#16
BNE             loc_18F004
LDR             R0, [R0]
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
VPOP            {D8}
POP             {R4-R10,LR}
BX              R1
LDR             R2, =0x1430A
LDRH            R1, [R5,#0x46]
STRH            R1, [R2,R4]
LDR             R0, [R0]
LDR             R1, [R0]
LDR             R1, [R1,#0x30]
VPOP            {D8}
POP             {R4-R10,LR}
BX              R1
LDR             R0, [R0]
ADD             R1, R4, #0x10000
VPOP            {D8}
ADD             R1, R1, #0x3D40
POP             {R4-R10,LR}
B               sub_1F0ED0

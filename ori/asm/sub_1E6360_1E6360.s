ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
PUSH            {R4-R11,LR}
MOV             R6, R0
ADD             R0, R1, #0x100
MOV             R4, R1
VPUSH           {D8-D10}
SUB             SP, SP, #0xEC
STR             R0, [SP,#0x128+var_5C]
LDRSH           R0, [R0,#0x74]
CMP             R0, #0
STR             R0, [SP,#0x128+var_68]
BLT             loc_1E671C
LDRB            R0, [R4,#0x2F4]
LDR             R1, [R6,#0x5BC]
ADD             R2, R6, #0x150
STR             R0, [SP,#0x128+var_60]
VLDR            S16, [R6,#0x15C]
VLDR            S20, [R6,#0x160]
ADD             R5, R6, #0x400
VLDM            R2, {S17-S19}
STR             R1, [SP,#0x128+var_120]
LDR             R2, [R6,#0x5C0]
AND             R1, R0, #7
STR             R1, [SP,#0x128+var_6C]
STR             R2, [SP,#0x128+var_110]
LDR             R1, [R6,#0x5C4]
STR             R1, [SP,#0x128+var_F0]
LDR             R1, [R6,#0x5C8]
STR             R1, [SP,#0x128+var_E0]
LDR             R1, [R5,#0x1CC]
STR             R1, [SP,#0x128+var_D0]
AND             R1, R0, #7
SUB             R3, R1, #1
CMP             R3, #0
MOV             R0, #0
ADDGT           R11, SP, #0x128+var_120
ADDGT           R2, SP, #0x128+var_D0
BLE             loc_1E645C
ADD             R1, R4, R0,LSL#4
ADD             R12, R11, R0,LSL#2
VLDR            S0, [R1,#0x240]
ADD             R7, SP, #0x128+var_110
VSTR            S0, [R12,#4]
ADD             R7, R7, R0,LSL#2
VLDR            S0, [R1,#0x244]
ADD             R8, SP, #0x128+var_F0
VSTR            S0, [R7,#4]
ADD             R8, R8, R0,LSL#2
VLDR            S0, [R1,#0x248]
ADD             R9, SP, #0x128+var_E0
VSTR            S0, [R8,#4]
ADD             R9, R9, R0,LSL#2
VLDR            S0, [R1,#0x24C]
ADD             R10, R4, R0,LSL#2
ADD             LR, R2, R0,LSL#2
VSTR            S0, [R9,#4]
VLDR            S0, [R10,#0x270]
ADD             R0, R0, #1
CMP             R3, R0
VSTR            S0, [LR,#4]
BGT             loc_1E6400
LDR             R0, [R5,#0x224]
STR             R0, [SP,#0x128+var_C0]
LDR             R0, [SP,#0x128+var_60]
LDR             R2, [R5,#0x228]
MOV             R1, R0,LSL#26
STR             R2, [SP,#0x128+var_100]
MOV             R0, R1,LSR#29
STR             R0, [SP,#0x128+var_64]
LDR             R0, [R5,#0x22C]
MOV             R2, #0xFFFFFFFF
ADD             R2, R2, R1,LSR#29
STR             R0, [SP,#0x128+var_B0]
LDR             R0, [R5,#0x230]
CMP             R2, #0
ADDGT           LR, SP, #0x128+var_100
STR             R0, [SP,#0x128+var_A0]
LDR             R0, [R5,#0x234]
STR             R0, [SP,#0x128+var_90]
LDR             R0, [R5,#0x238]
STR             R0, [SP,#0x128+var_80]
MOV             R0, #0
BLE             loc_1E6524
ADD             R1, R4, R0,LSL#4
ADD             R3, SP, #0x128+var_C0
ADD             R7, R3, R0,LSL#2
VLDR            S0, [R1,#0x27C]
ADD             R8, LR, R0,LSL#2
VSTR            S0, [R7,#4]
VLDR            S0, [R1,#0x280]
ADD             R3, SP, #0x128+var_B0
ADD             R9, R3, R0,LSL#2
VSTR            S0, [R8,#4]
VLDR            S0, [R1,#0x284]
ADD             R3, SP, #0x128+var_A0
VSTR            S0, [R9,#4]
ADD             R10, R3, R0,LSL#2
ADD             R12, SP, #0x128+var_90
VLDR            S0, [R1,#0x288]
ADD             R3, R4, R0,LSL#2
ADD             R11, R12, R0,LSL#2
VSTR            S0, [R10,#4]
VLDR            S0, [R3,#0x2AC]
ADD             R12, SP, #0x128+var_80
ADD             R12, R12, R0,LSL#2
VSTR            S0, [R11,#4]
VLDR            S0, [R3,#0x2B8]
ADD             R0, R0, #1
CMP             R2, R0
VSTR            S0, [R12,#4]
BGT             loc_1E64B4
LDR             R0, =byte_6EC430
STR             R0, [SP,#0x128+var_128]
LDR             R1, [R4]
LDR             R0, [R6,#4]
LDR             R12, [R1,#0x170]
LDR             R1, [SP,#0x128+var_5C]
ADD             R3, R0, #0xCC
MOV             R0, R4
LDRSH           R2, [R1,#0x78]
LDR             R1, [SP,#0x128+var_68]
BLX             R12
MOV             R1, R6
MOV             R0, R4
BL              sub_2FC5BC
VSTR            S16, [R6,#0x15C]
VSTR            S20, [R6,#0x160]
ADD             R6, R6, #0x150
VSTM            R6, {S17-S19}
LDR             R0, [SP,#0x128+var_6C]
LDRB            R1, [R4,#0x2F4]
AND             R0, R0, #7
BIC             R1, R1, #7
ORR             R0, R0, R1
STRB            R0, [R4,#0x2F4]
LDR             R0, [SP,#0x128+var_120]
STR             R0, [R5,#0x1BC]
LDR             R0, [SP,#0x128+var_110]
STR             R0, [R5,#0x1C0]
LDR             R0, [SP,#0x128+var_F0]
STR             R0, [R5,#0x1C4]
LDR             R0, [SP,#0x128+var_E0]
STR             R0, [R5,#0x1C8]
LDR             R0, [SP,#0x128+var_D0]
STR             R0, [R5,#0x1CC]
LDRB            R1, [R4,#0x2F4]
MOV             R0, #0
AND             R1, R1, #7
SUB             R1, R1, #1
CMP             R1, #0
BLE             loc_1E6634
ADD             R7, SP, #0x128+var_120
ADD             R8, SP, #0x128+var_110
ADD             R9, SP, #0x128+var_F0
ADD             R10, SP, #0x128+var_E0
ADD             LR, SP, #0x128+var_D0
ADD             R2, R7, R0,LSL#2
ADD             R1, R4, R0,LSL#4
VLDR            S0, [R2,#4]
ADD             R2, R8, R0,LSL#2
VSTR            S0, [R1,#0x240]
VLDR            S0, [R2,#4]
ADD             R3, R9, R0,LSL#2
VSTR            S0, [R1,#0x244]
LDR             R2, [R3,#4]
ADD             R12, R10, R0,LSL#2
ADD             R6, LR, R0,LSL#2
STR             R2, [R1,#0x248]
LDR             R2, [R12,#4]
ADD             R11, R4, R0,LSL#2
ADD             R0, R0, #1
STR             R2, [R1,#0x24C]
LDR             R1, [R6,#4]
STR             R1, [R11,#0x270]
LDRB            R1, [R4,#0x2F4]
AND             R1, R1, #7
SUB             R1, R1, #1
CMP             R1, R0
BGT             loc_1E65D8
LDR             R0, [SP,#0x128+var_64]
LDRB            R1, [R4,#0x2F4]
MOV             R2, #0x38 ; '8'
MOV             R8, #0xFFFFFFFF
AND             R0, R2, R0,LSL#3
BIC             R1, R1, #0x38 ; '8'
ORR             R0, R0, R1
STRB            R0, [R4,#0x2F4]
LDR             R0, [SP,#0x128+var_C0]
STR             R0, [R5,#0x224]
LDR             R0, [SP,#0x128+var_100]
STR             R0, [R5,#0x228]
LDR             R0, [SP,#0x128+var_B0]
STR             R0, [R5,#0x22C]
LDR             R0, [SP,#0x128+var_A0]
STR             R0, [R5,#0x230]
LDR             R0, [SP,#0x128+var_90]
STR             R0, [R5,#0x234]
LDR             R0, [SP,#0x128+var_80]
STR             R0, [R5,#0x238]
LDRB            R1, [R4,#0x2F4]
MOV             R0, #0
MOV             R1, R1,LSL#26
ADD             R1, R8, R1,LSR#29
CMP             R1, #0
BLE             loc_1E671C
ADD             R9, SP, #0x128+var_B0
ADD             R11, SP, #0x128+var_A0
ADD             LR, SP, #0x128+var_90
ADD             R2, SP, #0x128+var_80
ADD             R1, SP, #0x128+var_C0
ADD             R3, R1, R0,LSL#2
ADD             R1, R4, R0,LSL#4
VLDR            S0, [R3,#4]
ADD             R3, SP, #0x128+var_100
ADD             R12, R3, R0,LSL#2
VSTR            S0, [R1,#0x27C]
LDR             R12, [R12,#4]
ADD             R5, R9, R0,LSL#2
ADD             R6, R11, R0,LSL#2
STR             R12, [R1,#0x280]
LDR             R12, [R5,#4]
ADD             R7, LR, R0,LSL#2
ADD             R3, R4, R0,LSL#2
STR             R12, [R1,#0x284]
LDR             R12, [R6,#4]
ADD             R10, R2, R0,LSL#2
ADD             R0, R0, #1
STR             R12, [R1,#0x288]
LDR             R1, [R7,#4]
STR             R1, [R3,#0x2AC]
LDR             R1, [R10,#4]
STR             R1, [R3,#0x2B8]
LDRB            R1, [R4,#0x2F4]
MOV             R1, R1,LSL#26
ADD             R1, R8, R1,LSR#29
CMP             R1, R0
BGT             loc_1E66AC
ADD             SP, SP, #0xEC
VPOP            {D8-D10}
POP             {R4-R11,PC}

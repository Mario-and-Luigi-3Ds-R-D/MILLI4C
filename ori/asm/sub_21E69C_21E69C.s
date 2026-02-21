PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R8, R1
MOV             R7, R2
SMULBB          R2, R2, R3
VPUSH           {D8-D9}
VMOV.F32        S16, S0
VMOV.F32        S18, S1
LDR             R1, [R0,#0x13C]
LDRB            R0, [R0,#0x110]
VMOV.F32        S19, S2
SUB             SP, SP, #0x5C
CMP             R1, #0
STR             R0, [SP,#0x90+var_78]
SXTH            R9, R2
MOVEQ           R0, R4
BLEQ            sub_21DD2C
MOV             R5, #0
MOV             R0, #1
STRB            R0, [SP,#0x90+var_60]
ADD             R0, SP, #0x90+var_4C
MOV             R1, #0xFFFFFFFF
STR             R5, [SP,#0x90+var_5C]
STR             R5, [SP,#0x90+var_58]
STR             R5, [SP,#0x90+var_50]
STM             R0, {R1,R5}
ADD             R10, R4, #0x100
STR             R5, [SP,#0x90+var_44]
STRB            R5, [SP,#0x90+var_5F]
STR             R5, [SP,#0x90+var_54]
LDRH            R2, [R10,#0x50]
LDR             R1, [R4,#0x14C]
ADD             R3, SP, #0x90+var_60
MOV             R0, R4
BL              sub_21EB80
CMP             R9, #0
MOV             R11, R0
MOV             R6, #0
BLE             loc_21E844
LDR             R0, =_ZTV9CrashRock; `vtable for'CrashRock ...
VLDR            S17, =0.0
ADD             R1, R0, #8
ADD             R0, R0, #0x348
STRD            R0, R1, [SP,#0x90+var_40]
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #0x900
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_21E7D4
LDR             R1, [R4,#0x13C]
LDR             R12, [R4,#4]
ADD             R3, R4, #0x124
LDRB            R2, [R1,#0xDC]
MOV             R1, #1
STR             R1, [SP,#0x90+var_90]
MOV             R1, R12
BL              sub_580DD4
LDR             R1, [SP,#0x90+var_3C]
STR             R1, [R0]
LDR             R1, [SP,#0x90+var_40]
STR             R1, [R0,#0xE0]!
ADD             R0, R0, #0x400
ADD             R0, R0, #0x278
BL              sub_1E9F04
SUB             R5, R0, #0x400
ADD             R0, R0, #0xA8
MOV             R1, #0
SUB             R5, R5, #0x358
STRH            R1, [R0,#0xD8]
STR             R1, [R5,#0x8E4]
STR             R1, [R5,#0x8E8]
VSTR            S17, [R0,#0xEC]
VSTR            S17, [R0,#0xF0]
STR             R1, [R5,#0x8F4]
STR             R1, [R5,#0x8F8]
LDRB            R0, [R4,#0x110]
AND             R1, R8, #0xFF
MOV             R2, R4
ADD             R0, R4, R0,LSL#2
STR             R5, [R0,#0x10]
MOV             R0, R5
BL              sub_594200
LDR             R0, [R5]
ADD             R1, R4, #0x15C
VLDM            R1, {S0-S4}
LDR             R2, [R0,#0x2D0]
MOV             R0, R5
BLX             R2
LDR             R1, =0x8D8
LDRH            R0, [R10,#0x52]
STR             R11, [R5,#0x8D4]
ADD             R6, R6, #1
STRH            R0, [R1,R5]
ADD             R0, R4, #0x154
ADD             R5, R5, #0x800
LDM             R0, {R0,R1}
ADD             R5, R5, #0xDC
CMP             R6, R9
STM             R5, {R0,R1}
LDRB            R0, [R4,#0x110]
ADD             R0, R0, #1
STRB            R0, [R4,#0x110]
BLT             loc_21E74C
LDR             R0, [SP,#0x90+var_78]
CMP             R0, #0
LDRGT           R1, [R4,#0x144]
MOV             R0, #0
BLE             loc_21E890
ADD             R2, R4, R0,LSL#2
LDR             R2, [R2,#0x10]
LDR             R2, [R2,#0x8C4]
CMP             R2, R1
BNE             loc_21E880
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x7FC]
STR             R0, [SP,#0x90+var_48]
B               loc_21E890
LDR             R2, [SP,#0x90+var_78]
ADD             R0, R0, #1
CMP             R2, R0
BGT             loc_21E858
VSTR            S16, [SP,#0x90+var_84]
ADD             R0, SP, #0x90+var_80
ADD             R11, SP, #0x90+var_84
VSTM            R0, {S18-S19}
MOV             R2, #0
LDR             R0, [SP,#0x90+var_78]
LDR             R1, [R4,#0x144]
LDRH            R6, [R10,#0x48]
ADD             R8, R4, R0,LSL#2
ADD             R0, SP, #0x90+var_60
LDR             R5, [R8,#0x10]
STR             R0, [SP,#0x90+var_90]
LDR             R0, [R5,#4]
ADD             R3, R0, #0xCC
ADD             R0, R5, #0x400
ADD             R0, R0, #0x358
BL              sub_1E9348
LDR             R0, =0x8CC
MOV             R1, R11
STRH            R6, [R0,R5]
LDR             R0, [R5]
LDR             R2, [R0,#0x6C]
MOV             R0, R5
BLX             R2
CMP             R9, #1
BLE             loc_21E9C4
LDR             R0, [SP,#0x90+var_48]
CMP             R0, #0
BNE             loc_21E910
LDR             R0, [R8,#0x10]
LDR             R0, [R0,#0x7FC]
STR             R0, [SP,#0x90+var_48]
LDR             R0, [SP,#0x90+var_78]
LDRB            R1, [R4,#0x110]
MOV             R9, #1
ADD             R6, R0, #1
CMP             R1, R6
BLE             loc_21E9C4
CMP             R9, R7
BLT             loc_21E94C
VLDR            S0, [R4,#0x168]
VLDR            S1, [SP,#0x90+var_80]
MOV             R9, #1
VSUB.F32        S0, S1, S0
VSTR            S0, [SP,#0x90+var_80]
VSTR            S16, [SP,#0x90+var_84]
B               loc_21E964
VLDR            S1, [R4,#0x164]
VLDR            S0, [SP,#0x90+var_84]
ADD             R0, R9, #1
VADD.F32        S0, S0, S1
SXTH            R9, R0
VSTR            S0, [SP,#0x90+var_84]
ADD             R1, R4, R6,LSL#2
LDRH            R11, [R10,#0x48]
LDR             R5, [R1,#0x10]
LDR             R1, [R4,#0x144]
ADD             R0, SP, #0x90+var_60
STR             R0, [SP,#0x90+var_90]
LDR             R0, [R5,#4]
ADD             R8, SP, #0x90+var_84
MOV             R2, #0
ADD             R3, R0, #0xCC
ADD             R0, R5, #0x400
ADD             R0, R0, #0x358
BL              sub_1E9348
LDR             R0, =0x8CC
MOV             R1, R8
STRH            R11, [R0,R5]
LDR             R0, [R5]
LDR             R2, [R0,#0x6C]
MOV             R0, R5
BLX             R2
LDRB            R0, [R4,#0x110]
ADD             R6, R6, #1
CMP             R0, R6
BGT             loc_21E928
LDR             R7, =off_6D1648
LDR             R0, [R7]
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             loc_21EB10
LDRB            R0, [R4,#0x110]
LDR             R8, [SP,#0x90+var_78]
CMP             R0, R8
MOVGT           R9, #4
BLE             loc_21EB10
AND             R0, R8, #0xFF
ADD             R1, R0, R0,LSL#2
ADD             R0, R4, R0,LSL#2
ADD             R5, R4, R1,LSL#2
LDR             R6, [R0,#0x10]
LDR             R0, [R5,#0x178]!
ANDS            R1, R0, #1
MOV             R0, R6
MOVEQ           R2, #0
LDRBNE          R2, [R0,#0x649]
STRB            R2, [R0,#0x648]
LDRB            R2, [R0,#0xDE]
BIC             R2, R2, #1
ORR             R2, R2, R1
STRB            R2, [R0,#0xDE]
LDR             R2, [R0]
LDR             R2, [R2,#0x84]
BLX             R2
LDR             R1, [R5]
LDR             R2, [R6,#0x8F4]
AND             R1, R9, R1,LSL#1
BIC             R2, R2, #4
ORR             R1, R1, R2
STR             R1, [R6,#0x8F4]
LDR             R0, [R5]
TST             R0, #1
BEQ             loc_21EAB8
TST             R0, #4
BEQ             loc_21EA88
LDR             R0, [R7]
BL              sub_1E4614
MOV             R1, R0
LDR             R0, [R4,#0x13C]
LDRB            R0, [R0,#0xDC]
STRB            R0, [R1,#0x65E]
LDR             R0, [R4,#0x13C]
MOV             R1, R6
BL              sub_598B34
LDR             R0, [R5]
TST             R0, #8
BEQ             loc_21EAB8
LDR             R0, [R7]
BL              sub_1E4604
MOV             R1, R0
LDR             R0, [R4,#0x140]
LDRB            R0, [R0,#0xDC]
STRB            R0, [R1,#0x65E]
LDR             R0, [R4,#0x140]
MOV             R1, R6
BL              sub_598B34
ADD             R0, R5, #4
ADD             R3, SP, #0x90+var_6C
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R1, SP, #0x90+var_6C
LDR             R0, [R6]
B               loc_21EAEC
DCD _ZTV9CrashRock
DCFS 0.0
DCD dword_6ED9B8
DCD 0x8D8
DCD 0x8CC
DCD off_6D1648
LDR             R2, [R0,#0x6C]
MOV             R0, R6
BLX             R2
LDR             R0, [R5,#0x10]
ADD             R8, R8, #1
STR             R0, [R6,#0x4C4]
LDRB            R0, [R4,#0x110]
CMP             R0, R8
BGT             loc_21E9F0
LDRB            R0, [R4,#0x110]
LDR             R7, [SP,#0x90+var_78]
CMP             R0, R7
BLE             loc_21EB50
ADD             R0, R4, R7,LSL#2
LDR             R0, [R0,#0x10]
LDR             R1, [R0,#0x8F4]
TST             R1, #0x800
BEQ             loc_21EB40
LDR             R0, [R0,#0x7FC]
MOV             R1, #0
BL              sub_146E50
LDRB            R0, [R4,#0x110]
ADD             R7, R7, #1
CMP             R0, R7
BGT             loc_21EB20
MOV             R0, #1
STRB            R0, [R4,#0x111]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
LDRH            R1, [R0,#8]
ORR             R1, R1, #1
STRH            R1, [R0,#8]
LDR             R0, [SP,#0x90+var_78]
ADD             SP, SP, #0x5C ; '\'
VPOP            {D8-D9}
POP             {R4-R11,PC}

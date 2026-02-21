PUSH            {R4-R11,LR}
MOV             R7, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x44; int
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_234468
LDR             R0, [R7,#0xC]
LDR             R8, =off_6D1648
VLDR            S17, =1.0
VLDR            S16, =0.0
CMP             R0, #0
BNE             loc_233EC4
LDR             R0, [R8]
VLDR            S1, =0.5
ADD             R1, SP, #0x78+var_74
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0xA0]
MOV             R0, SP
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_462B20
VLDMEA          SP, {S0-S1}
MOV             R0, #0x400
VDIV.F32        S18, S0, S1
BL              sub_485BDC
LDR             R0, [R8]
VMUL.F32        S0, S18, S0
LDR             R0, [R0,#0xBC]
VLDR            S1, [R0,#0x98]
ADD             R0, R0, #0xCC
VMUL.F32        S18, S0, S1
BL              sub_59CA44
VNEG.F32        S2, S18
STR             R0, [R7,#0xC]
LDR             R1, [R8]
VLDR            S6, =2.0
ADD             R0, R0, #0x1A8
VSUB.F32        S3, S18, S2
LDR             R1, [R1,#0xBC]
VADD.F32        S8, S18, S2
VLDR            S2, =-1.0
ADD             R1, R1, #0x98
VLDM            R1, {S0-S1}
ADD             R1, R0, #4
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#0xC]
VDIV.F32        S4, S17, S3
VSUB.F32        S7, S1, S0
VMUL.F32        S5, S1, S0
VMUL.F32        S0, S0, S6
VSTR            S16, [R0,#0x10]
VSTR            S16, [R0,#0x1C]
VSTR            S16, [R0,#0x20]
VSTR            S16, [R0,#0x24]
VSTR            S16, [R0,#0x30]
VSTR            S16, [R0,#0x34]
VSTR            S2, [R0,#0x38]
VSTR            S16, [R0,#0x3C]
VMUL.F32        S2, S0, S4
VMUL.F32        S0, S8, S4
VDIV.F32        S3, S17, S7
VMUL.F32        S1, S1, S3
VMUL.F32        S4, S5, S3
VSTR            S2, [R0]
VSTR            S0, [R0,#8]
VSTR            S2, [R0,#0x14]
VSTR            S0, [R0,#0x18]
VSTR            S1, [R0,#0x28]
VSTR            S4, [R0,#0x2C]
VLDR            S3, [R0]
VLDM            R1, {S0-S2}
ADD             R1, R0, #0x10
VNEG.F32        S3, S3
LDM             R1, {R1-R3,R12}
VNEG.F32        S0, S0
VNEG.F32        S2, S2
VNEG.F32        S1, S1
STM             R0, {R1-R3,R12}
VSTR            S3, [R0,#0x10]
ADD             R0, R0, #0x14
VSTM            R0, {S0-S2}
LDR             R2, [R8]
LDR             R1, [R7,#0xC]
LDR             R0, [R2,#0xBC]
ADD             R3, R1, #0x148
LDR             R0, [R0,#0xC0]
ADD             R4, R0, #0x148
VLDM            R4, {S0-S7}
VSTR            S0, [R1,#0x148]
ADD             R1, R1, #0x14C
VSTM            R1, {S1-S7}
ADD             R1, R0, #0x168
LDR             R4, [R0,#0x170]
LDR             R0, [R0,#0x174]
LDM             R1, {R1,R12}
STR             R4, [R3,#0x28]
STR             R0, [R3,#0x2C]
ADD             R3, R3, #0x20 ; ' '
STM             R3, {R1,R12}
MOV             R3, #0
LDR             R0, [R2,#0xBC]
LDR             R2, [R7,#0xC]
ADD             R4, R0, #0x154
LDR             R0, [R0,#0xE0]
LDR             R1, [R4,#0xBC]
BL              sub_59C660
LDR             R0, [R4,#0xBC]
ADD             R2, R4, #4
ADD             R1, R4, #0x6C ; 'l'
ADD             R11, R2, #0x88
LDR             R0, [R0,#0xA4]
ADD             R3, R0, #0x168
LDM             R3, {R3-R5,R12}
STM             R1, {R3-R5,R12}
LDR             R3, [R0,#0x1D0]
STR             R3, [R1,#0x10]
LDR             R3, [R0,#0x1D4]
STR             R3, [R1,#0x14]
LDR             R3, [R0,#0x1E0]
STR             R3, [R1,#0x18]
LDR             R3, [R0,#0x1E4]
STR             R3, [R1,#0x1C]
ADD             R1, R0, #0x148
LDM             R1, {R1,R3-R6,R9,R10,R12}
STM             R11, {R1,R3-R6,R9,R10,R12}
ADD             R1, R0, #0x168
ADD             R4, SP, #0x78+var_6C
LDR             R0, [R0,#0x174]
LDM             R1, {R1,R3,R12}
STR             R0, [R2,#0xB4]
ADD             R2, R2, #0xA8
STM             R2, {R1,R3,R12}
MOV             R2, #0
LDR             R0, [R8]
MOV             R12, #0
LDR             R1, [R0,#0xBC]
STR             R2, [R1,#0x16C]
LDR             R0, [R0,#0xBC]
LDR             R1, [R0,#0xE0]
LDR             R3, [R0,#0x210]
ADD             R0, R0, #0x158
ADD             R1, R1, #0x2C ; ','
LDM             R1, {R1,R2}; int
LDR             R3, [R3,#0xA4]; int
STMEA           SP, {R0,R4,R12}
ADD             R0, SP, #0x78+var_48; int
BL              sub_63A9DC
LDR             R0, [R8]
LDR             R2, [R0,#0xA0]
LDR             R1, [R0,#0xBC]
ADD             R2, R2, #0x180
STR             R2, [R1,#0x17C]
LDR             R1, [R0,#0xBC]
LDR             R0, [R0,#0xA0]
MOV             R2, #0
ADD             R1, R1, #0x154
BL              sub_32F6BC
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x16C]
CMP             R6, #0
BEQ             loc_2340D0
LDR             R0, [R8]
MOV             R2, #0
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R3, [R1,#0x130]
MOV             R1, R6
BLX             R3
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             loc_234058
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #1
BNE             loc_2340C4
LDR             R0, [R6]
LDR             R1, [R0,#0x3C4]
MOV             R0, R6
BLX             R1
MOV             R5, R0
LDR             R0, [R6]
MOV             R4, #0
LDR             R1, [R0,#0x3CC]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BLS             loc_2340C4
LDR             R0, [R8]
LDR             R1, [R5]
LDR             R0, [R0,#0xBC]
LDR             R2, [R0]
LDR             R3, [R2,#0x130]
MOV             R2, #0
BLX             R3
LDR             R0, [R6]
ADD             R5, R5, #4
ADD             R4, R4, #1
LDR             R1, [R0,#0x3CC]
MOV             R0, R6
BLX             R1
CMP             R0, R4
BHI             loc_234088
LDR             R6, [R6,#8]
CMP             R6, #0
BNE             loc_23400C
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x364
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R4, R0, #0x104
BEQ             loc_234134
LDRB            R0, [R4,#0x110]
CMP             R0, #0
BEQ             loc_234124
LDR             R0, [R8]
LDR             R1, [R4,#0x118]
MOV             R3, #0xFF
MOV             R2, #2
LDR             R0, [R0,#0xBC]
STR             R1, [SP,#0x78+var_78]
LDR             R12, [R4,#0x114]
ADD             R0, R0, #0x158
MOV             R1, R4
BLX             R12
LDR             R0, [R4,#0x10C]
CMP             R0, #0
SUBSNE          R4, R0, #0x104
BNE             loc_2340F0
MOV             R4, #0
B               loc_234158
DCFS 1.0
DCFS 0.0
DCD off_6D1648
DCFS 0.5
DCFS 0.71111
DCFS 2.0
DCFS -1.0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R0, [R0]
CMP             R0, #0
BLE             loc_2341B8
LDR             R0, [R8]
ADD             R1, R4, R4,LSL#1
ADD             R2, R1, R4,LSL#7
LDR             R1, =0x14FFC
LDR             R0, [R0,#0xBC]
LDR             R1, [R1,R0]
ADD             R1, R1, R2,LSL#4
LDR             R2, [R0]
LDR             R3, [R2,#0x130]
MOV             R2, #0
BLX             R3
LDR             R0, [R8]
ADD             R4, R4, #1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDRB            R0, [R0]
CMP             R0, R4
BGT             loc_234170
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R4, [R0,#0x168]!
LDR             R2, [R0,#4]
ADD             R5, R4, R2,LSL#2
CMP             R4, R5
BEQ             loc_234378
SUB             R6, R5, R4
MOV             R1, R5
MOV             R2, R6,ASR#2
MOV             R0, R4
BL              sub_639B80
MOV             R1, #0x10
CMP             R1, R6,ASR#2
BGE             loc_2342E0
ADD             R6, R4, #0x40 ; '@'
ADD             R2, R4, #4
CMP             R2, R6
MOV             R3, R4
BEQ             loc_234298
LDR             R12, [R2]
LDR             R1, [R3]
MOV             R0, R2
LDR             R8, [R12,#4]
LDR             R1, [R1,#4]
CMP             R8, R1
MOVCS           R1, R2
BCS             loc_23426C
SUB             R8, R0, R3
ADD             R9, R0, #4
MOV             R1, R8,ASR#2
CMP             R1, #0
MOVGT           R1, #0
MOVGT           R8, R8,ASR#2
BLE             loc_234264
ADD             R10, R0, R1,LSL#2
ADD             R11, R9, R1,LSL#2
LDR             R10, [R10,#-4]
SUBS            R8, R8, #1
SUB             R1, R1, #1
STR             R10, [R11,#-4]
BNE             loc_234248
STR             R12, [R3]
B               loc_23428C
LDR             R8, [R1,#-4]!
LDR             R9, [R12,#4]
LDR             R10, [R8,#4]
CMP             R9, R10
STRCC           R8, [R0]
MOVCC           R0, R1
BCC             loc_23426C
STR             R12, [R0]
ADD             R2, R2, #4
CMP             R2, R6
BNE             loc_23420C
CMP             R6, R5
MOV             R12, R6
BEQ             loc_234378
LDR             R3, [R12]
MOV             R0, R12
MOV             R1, R12
LDR             R2, [R1,#-4]!
LDR             R4, [R3,#4]
LDR             R6, [R2,#4]
CMP             R4, R6
STRCC           R2, [R0]
MOVCC           R0, R1
BCC             loc_2342B0
ADD             R12, R12, #4
CMP             R12, R5
STR             R3, [R0]
BNE             loc_2342A4
B               loc_234378
ADD             R12, R4, #4
CMP             R12, R5
BEQ             loc_234378
LDR             R1, [R12]
LDR             R2, [R4]
MOV             R0, R12
LDR             R3, [R1,#4]
LDR             R2, [R2,#4]
CMP             R3, R2
MOVCS           R2, R12
BCS             loc_23434C
SUB             R3, R0, R4
ADD             R6, R0, #4
MOV             R2, R3,ASR#2
CMP             R2, #0
MOVGT           R2, #0
MOVGT           R3, R3,ASR#2
BLE             loc_234344
ADD             R9, R0, R2,LSL#2
ADD             R8, R6, R2,LSL#2
LDR             R9, [R9,#-4]
SUBS            R3, R3, #1
SUB             R2, R2, #1
STR             R9, [R8,#-4]
BNE             loc_234328
STR             R1, [R4]
B               loc_23436C
LDR             R3, [R2,#-4]!
LDR             R6, [R1,#4]
LDR             R8, [R3,#4]
CMP             R6, R8
STRCC           R3, [R0]
MOVCC           R0, R2
BCC             loc_23434C
STR             R1, [R0]
ADD             R12, R12, #4
CMP             R12, R5
BNE             loc_2342EC
LDR             R4, =off_6D1648
LDR             R1, [R7,#8]
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
LDR             R0, [R0,#0x210]
BL              sub_4AC8F8
VSTR            S16, [SP,#0x78+var_58]
VSTR            S16, [SP,#0x78+var_54]
VSTR            S16, [SP,#0x78+var_50]
VSTR            S16, [SP,#0x78+var_4C]
LDR             R0, [R4]
VMOV.F32        S0, S17
ADD             R2, SP, #0x78+var_58
MOV             R1, #0x4500
LDR             R0, [R0,#0xBC]
LDR             R0, [R0,#0x210]
BL              sub_5E60B0
LDR             R0, [R4]
LDR             R1, [R7,#0xC]
MOV             R2, #0
LDR             R0, [R0,#0xBC]
CMP             R1, #0
ADD             R0, R0, #0x154
LDREQ           R1, [R0,#0xBC]
LDR             R0, [R0,#0xBC]
LDREQ           R1, [R1,#0xA4]
BL              sub_4AC814
LDR             R0, [R4]
MOV             R1, #0
LDR             R0, [R0,#0xBC]
LDR             R0, [R0,#0x210]
BL              sub_4AC624
LDR             R0, [R4]
MOV             R6, #0xFF
LDR             R0, [R0,#0xBC]
ADD             R7, R0, #0x158
LDR             R0, [R0,#0x16C]
LDR             R4, [R7,#0x10]
ADD             R8, R4, R0,LSL#2
CMP             R4, R8
BEQ             loc_234468
LDR             R0, [R4]
LDRB            R5, [R0]
CMP             R5, R6
BEQ             loc_234448
ADD             R0, R7, R5,LSL#2
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R6
BLX             R2
MOV             R6, R5
LDR             R0, [R4]
ADD             R1, R7, R6,LSL#2
LDR             R1, [R1,#0x18]
LDR             R2, [R0,#0x18]
BLX             R2
ADD             R4, R4, #4
CMP             R4, R8
BNE             loc_23441C
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8-D9}
POP             {R4-R11,PC}

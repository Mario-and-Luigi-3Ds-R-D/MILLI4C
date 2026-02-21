PUSH            {R0-R12,LR}
MOV             R7, #0
MOV             R9, R2
MOV             R11, R1
MOV             R10, R3
VPUSH           {D0-D1}
VPUSH           {D8-D11}
VMOV.F64        D8, D0
VMOV.F32        S18, S2
SUB             SP, SP, #0x2800
VLDR            S0, [R1]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
MOVCC           R7, #2
BCC             loc_1B0400
MOVGT           R7, #8
VLDR            S0, [R11,#8]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
ORRCC           R7, R7, #4
BCC             loc_1B0418
ORRGT           R7, R7, #1
VLDR            S0, [R11,#4]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
ORRCC           R7, R7, #0x10
BCC             loc_1B0430
ORRGT           R7, R7, #0x20 ; ' '
ADD             R4, SP, #0x2868+var_2818
VLDR            S20, =61.0
MOV             R0, R4
BL              sub_17293C
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x830]
LDR             R0, [R0,#4]
LDRB            R0, [R0,#0xDC]
STRB            R0, [SP,#0x2868+var_273C]
LDR             R0, [SP,#0x2868+var_232C]
BIC             R0, R0, #0x10
STR             R0, [SP,#0x2868+var_232C]
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x830]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x610]
MOV             R0, R4
STR             R1, [R0,#0x610]
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
VLDR            S21, =122.0
STR             R0, [SP,#0x2868+var_2814]
LDRB            R0, [SP,#0x2868+var_273A]
VLDR            S19, =0.0
VLDR            S23, =-61.0
VLDR            S22, =8.0
ORR             R0, R0, #1
VMOV.F32        S3, S21
VMOV.F32        S4, S22
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S23
STRB            R0, [SP,#0x2868+var_273A]
MOV             R0, R4
BL              sub_575D3C
VMOV.F32        S4, S22
VMOV.F32        S3, S21
VMOV.F32        S1, S19
VLDR            S2, =132.0
VLDR            S0, =-66.0
MOV             R0, R4
BL              sub_22D56C
VMOV.F32        S4, S22
VMOV.F32        S3, S21
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S23
MOV             R0, R4
BL              sub_575C24
VMOV.F32        S3, S22
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S23
MOV             R0, R4
BL              sub_53FA70
VMOV.F32        S3, S22
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S23
MOV             R0, R4
BL              sub_53FAA0
VMOV.F32        S3, S22
VMOV.F32        S2, S21
VMOV.F32        S1, S19
VMOV.F32        S0, S23
MOV             R0, R4
BL              sub_53FA50
VMOV.F32        S2, S18
VMOV.F32        S0, S16
VMOV.F32        S1, S17
ADD             R0, SP, #0x2868+var_2710
ADD             R3, SP, #0x2868+var_2700
MOV             R6, R4
VSTM            R0, {S0-S2}
LDM             R11, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R11, #4
VLDR            S2, [R11]
LDR             R1, =0x40490FDB
ADD             R2, SP, #0x2868+var_2468
VSUB.F32        S2, S16, S2
VLDM            R0, {S0-S1}
ADD             R0, SP, #0x2868+var_2468
VSUB.F32        S0, S17, S0
VSUB.F32        S1, S18, S1
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S0, S0
VMLA.F32        S2, S1, S1
VSQRT.F32       S0, S2
VSTR            S0, [R0,#0xCC]
VLDR            S1, [R11]
VSUB.F32        S1, S16, S1
VCMPE.F32       S1, S19
VMRS            APSR_nzcv, FPSCR
VLDR            S21, =-1.0
VLDR            S22, =1.0
VLDRCC          S1, =4.7124
VLDRCS          S1, =1.5708
VMOV            R0, S1
VSTR            S1, [R2,#0xC4]
CMP             R0, R1
VMOVGT.F32      S1, S21
VMOVLE.F32      S1, S22
ADD             R0, SP, #0x2868+var_868
VMUL.F32        S0, S0, S1
VSTR            S0, [R2,#0xC8]
LDR             R0, [R0,#0x830]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
STR             R0, [SP,#0x2868+var_2810]
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x830]
LDR             R0, [R0,#4]
LDRB            R0, [R0,#0xDD]
STRB            R0, [SP,#0x2868+var_273B]
LDR             R0, [SP,#0x2868+var_2238]
ORR             R0, R0, #0x10
STR             R0, [SP,#0x2868+var_2238]
MOV             R0, R4
BL              sub_171C88
MOV             R0, R6
NOP
BL              sub_169ED8
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x174]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
MOV             R2, R4
LDR             R1, [R0,#0x170]
MOV             R0, R6
BL              sub_169CE8
MOV             R0, R6
NOP
BL              sub_1464E8
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x13800
ADD             R1, R1, #0x3A4
MOV             R0, R6
BL              sub_22D25C
ADD             R0, SP, #0x2868+var_2368
VADD.F32        S17, S17, S20
LDRH            R0, [R0,#6]
AND             R0, R0, #2
MOV             R1, R0,LSR#1
STRB            R1, [R9,#0x14]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R6, =off_6B7BFC
LDR             R12, [R0,#4]
LDRB            R2, [R0,#0x110]
ADD             R0, SP, #0x2868+var_868
LDR             R1, [SP,#0x2868+var_20C8]
STR             R6, [R0,#0x7D8]
LDR             R6, =off_6B7BEC
ADD             R4, SP, #0x2868+var_868
LDR             R3, =_ZTV10DreamMario; `vtable for'DreamMario ...
ADD             R4, R4, #0x760
STR             R4, [R0,#0x7D4]
STR             R6, [R0,#0x7C0]!
ADD             R4, R3, #8
STR             R4, [R0,#8]
LDR             R0, =0x1428D
CMP             R1, #0
LDRB            R1, [R0,R12]
ADD             R12, R3, #0x480
ADD             R0, SP, #0x2868+var_868
ADD             R3, R3, #0x400
STR             R12, [R0,#0x7CC]!
ADD             R3, R3, #0x98
STR             R3, [R0,#4]
ADD             R0, R1, R2
AND             R1, R0, #0xFF
ADD             R0, SP, #0x2868+var_868
STR             R1, [R0,#0x7EC]
BNE             loc_1B071C
LDR             R0, [SP,#0x2868+var_21C0]
TST             R0, #0x3F
BEQ             loc_1B0DA0
ADD             R0, SP, #0x2868+var_868
MOV             R6, #2
LDR             R0, [R0,#0x7EC]
CMP             R0, #2
BLS             loc_1B0DA0
MOV             R0, #0xFC0
ADD             R1, SP, #0x2868+var_868
AND             R0, R0, R7,LSL#6
ADD             R5, SP, #0x2868+var_2850
ADD             R4, SP, #0x2868+var_2848
STR             R0, [R1,#0x7DC]
LDR             R8, =off_6D1648
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R6
BLE             loc_1B07C8
LDR             R0, [R0,#4]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x14000
LDR             R7, [R0,#0x184]
B               loc_1B07E0
DCFS 61.0
DCD off_6D1648
DCFS 0.0
DCFS 122.0
DCFS -61.0
DCFS 8.0
DCFS 132.0
DCFS -66.0
DCFS 4.7124
DCFS 1.5708
DCD 0x40490FDB
DCFS -1.0
DCFS 1.0
DCD _ZTV10DreamMario
DCD off_6B7BFC
DCD off_6B7BEC
DCD 0x1428D
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
SUB             R1, R6, R1
ADD             R0, R0, R1,LSL#2
LDR             R7, [R0,#0x10]
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #4
BLS             loc_1B0D88
LDRB            R0, [R7,#0xDE]
TST             R0, #1
BEQ             loc_1B0D88
TST             R0, #4
BNE             loc_1B0D88
LDR             R0, [R7,#0x648]
TST             R0, #2
BEQ             loc_1B0D88
ADD             R0, SP, #0x2868+var_868
MOV             R1, R7
LDR             R0, [R0,#0x830]
BL              sub_542D24
CMP             R0, #0
NOP
BNE             loc_1B0850
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R6
MOVHI           R3, #0
BHI             loc_1B0854
MOV             R3, #1
VMOV.F32        S0, S16
ADD             R0, SP, #0x2868+var_468
ADD             R12, SP, #0x2868+var_868
ADD             R2, R7, #0x400
ADD             LR, SP, #0x2868+var_2838
VSTR            S0, [R0,#0x3E0]
VSTR            S17, [R0,#0x3E4]
VMOV.F32        S0, S20
STR             R3, [R12,#0x7F8]
MOV             R3, #1
STR             R3, [R12,#0x7E8]
VLDR            S1, [R11,#4]
LDR             R3, [R11]
ADD             R12, R7, #0x108
VADD.F32        S1, S1, S0
STR             R3, [SP,#0x2868+var_2840]
ADD             R8, SP, #0x2868+var_2830
ADD             R1, SP, #0x2868+var_2828
ADD             R0, SP, #0x2868+var_2820
VSTR            S1, [SP,#0x2868+var_283C]
VLDR            S3, [R2,#0x234]
VLDR            S4, [R2,#0x224]
VLDM            R12, {S1-S2}
ADD             R12, R7, #0x108
VADD.F32        S1, S1, S4
VADD.F32        S2, S2, S3
VSTM            LR, {S1-S2}
VLDR            S3, [R2,#0x234]
VLDR            S4, [R2,#0x228]
VLDM            R12, {S1-S2}
VADD.F32        S1, S1, S4
VADD.F32        S2, S2, S3
VSTM            R8, {S1-S2}
VLDR            S1, [R7,#0x108]
VLDR            S2, [R2,#0x224]
LDR             R3, [R7,#0x10C]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x2868+var_2828]
STR             R3, [SP,#0x2868+var_2824]
VLDR            S2, [R2,#0x228]
VLDR            S1, [R7,#0x108]
LDR             R2, [R7,#0x10C]
MOV             R3, R8
VADD.F32        S1, S1, S2
ADD             R8, SP, #0x2868+var_2864
VSTR            S1, [SP,#0x2868+var_2820]
STR             R2, [SP,#0x2868+var_281C]
STR             R1, [SP,#0x2868+var_2868]
STR             R4, [SP,#0x2868+var_285C]
STM             R8, {R0,R5}
ADD             R0, SP, #0x2868+var_868
MOV             R2, LR
ADD             R1, SP, #0x2868+var_2840
ADD             R0, R0, #0x7E0
BL              sub_45A300
CMP             R0, #0
NOP
BNE             loc_1B0948
ADD             R1, SP, #0x2868+var_868
MOV             R0, #0
STR             R0, [R1,#0x7E8]
ADD             R0, SP, #0x2868+var_868
LDR             R1, [R0,#0x7E8]
LDR             R0, [R0,#0x868]
TST             R0, R1
BEQ             loc_1B0BC8
ADD             R0, SP, #0x2868+var_868
MOV             R2, R6
LDR             R0, [R0,#0x830]
MOV             R1, R7
BL              sub_1B316C
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x830]
LDR             R1, [R0,#4]
ADD             R1, R1, #0x800
LDRSH           R1, [R1,#0xB8]
SUB             R0, R1, #0x200
SUBS            R0, R0, #0x67 ; 'g'
BEQ             loc_1B0AD4
LDR             R0, [SP,#0x2868+var_20C8]
CMP             R0, R7
BNE             loc_1B0A44
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #7
BEQ             loc_1B0A44
ADD             R0, SP, #0x2868+var_868
LDR             R1, [SP,#0x2868+var_20C8]
LDR             R0, [R0,#0x830]
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x750]
CMP             R2, #0
BEQ             loc_1B0A14
LDR             R3, [R1,#0x4EC]
TST             R3, #0xE0
BNE             loc_1B09E8
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1B0A14
AND             R3, R3, #0xE0
CMP             R3, #0x80
BNE             loc_1B0A44
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1B0A14
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BEQ             loc_1B0A44
STR             R1, [R0,#0x750]
LDR             R1, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R12, R1, #0xFC0
ADD             R1, SP, #0x2868+var_868
LDR             R1, [R1,#0x7DC]
ORR             R1, R1, R12
STR             R1, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
MOVS            R8, R7
BEQ             loc_1B0BC8
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #8
BNE             loc_1B0BC8
LDRB            R0, [R8,#0xAAC]
CMP             R0, #0x11
BNE             loc_1B0BC8
ADD             R0, SP, #0x2868+var_868
MOV             R1, R7
LDR             R0, [R0,#0x830]
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x750]
CMP             R2, #0
BEQ             loc_1B0B98
LDR             R3, [R1,#0x4EC]
TST             R3, #0xE0
BNE             loc_1B0AA4
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1B0B98
AND             R3, R3, #0xE0
CMP             R3, #0x80
BNE             loc_1B0BC8
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1B0B98
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BNE             loc_1B0B98
B               loc_1B0BC8
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #7
BEQ             loc_1B0BC8
MOVS            R8, R7
BEQ             loc_1B0B18
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #8
BNE             loc_1B0B18
LDRB            R0, [R8,#0xAAC]
CMP             R0, #0x11
BEQ             loc_1B0B44
ADD             R0, SP, #0x2868+var_868
MOV             R1, R7
LDR             R0, [R0,#0x830]
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x750]
CMP             R2, #0
BEQ             loc_1B0B98
LDR             R3, [R1,#0x4EC]
TST             R3, #0xE0
BEQ             loc_1B0B60
B               loc_1B0B6C
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x830]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BNE             loc_1B0BC8
B               loc_1B0B98
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1B0B98
AND             R3, R3, #0xE0
CMP             R3, #0x80
BNE             loc_1B0BC8
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1B0B98
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BEQ             loc_1B0BC8
STR             R7, [R0,#0x750]
LDR             R1, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R12, R1, #0xFC0
ADD             R1, SP, #0x2868+var_868
LDR             R1, [R1,#0x7DC]
ORR             R1, R1, R12
STR             R1, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x7E8]
CMP             R0, #0
BEQ             loc_1B0D88
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #7
BEQ             loc_1B0C70
LDR             R8, [SP,#0x2868+var_21C8]
LDR             R1, [SP,#0x2868+var_21C4]
LDRB            R2, [R7,#0xDC]
MOV             R0, R8
STR             R8, [SP,#0x2868+var_2860]
MOV             R8, R1
BL              sub_14351C
TST             R0, #1
NOP
BEQ             loc_1B0D88
LDR             R0, [SP,#0x2868+var_21C0]
TST             R0, #0x3F
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x830]
BEQ             loc_1B0D54
LDR             R12, [SP,#0x2868+var_2860]
LDR             R3, [R0,#4]
ADD             R0, R3, #0x650
ADD             R3, R3, #0x650
LDM             R0, {R0,R2}
ORR             R0, R0, R12
ORR             R1, R2, R8
STM             R3, {R0,R1}
ADD             R0, SP, #0x2868+var_868
MOV             R2, R6
LDR             R0, [R0,#0x830]
MOV             R1, R7
BL              sub_1B316C
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x7F8]
CMP             R0, #0
BNE             loc_1B0D88
LDR             R0, [SP,#0x2868+var_2238]
MOV             R3, #1
MOV             R2, #0x28 ; '('
MOV             R0, R0,LSL#17
MOV             R0, R0,LSR#26
STR             R0, [R9,#0xC]
LDR             R0, [SP,#0x2868+var_21C0]
AND             R0, R0, #0x3F ; '?'
STR             R0, [R9,#0x10]
LDR             R0, [SP,#0x2868+var_2850]
STR             R0, [R9]
VLDR            S0, [SP,#0x2868+var_284C]
VSUB.F32        S0, S0, S20
VSTR            S0, [R9,#4]
LDR             R0, [SP,#0x2868+var_2848]
STR             R0, [R10]
LDR             R1, [SP,#0x2868+var_2844]
ADD             R0, SP, #0x2868+var_868
STR             R1, [R10,#4]
VSTR            S19, [R10,#8]
LDR             R0, [R0,#0x7C8]
STR             R0, [SP,#0x2868+var_2818]
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x7CC]
STR             R0, [SP,#0x2868+var_2738]
ADD             R0, SP, #0x2868+var_868
LDR             R1, [R0,#0x7D0]
STR             R1, [SP,#0x2868+var_20C0]
LDR             R1, [R0,#0x7D8]
LDR             R4, [R0,#0x7D4]
STR             R1, [R0,#0x760]
LDR             R1, =sub_5A2F60
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
ADD             R0, SP, #0x2868+var_868
MOV             R3, #1
LDR             R1, [R0,#0x7C0]
MOV             R2, #0x1C
ADD             R0, R4, #0x18
STR             R1, [R4]
LDR             R1, =nullsub_300
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x2400
SUB             R0, R0, #0x2DC
BL              sub_540C2C
MOV             R0, #1
ADD             SP, SP, #0x2800
VPOP            {D8-D11}
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R12,PC}
LDR             R2, [R0,#4]
ADD             R3, R7, #0x650
STR             R3, [SP,#0x2868+var_2860]
LDR             R8, [R7,#0x650]
LDR             R7, [R7,#0x654]
LDRB            R2, [R2,#0xDC]
MOV             R0, #1
MOV             R1, #0
BL              sub_300CF8
LDR             R3, [SP,#0x2868+var_2860]
BIC             R0, R8, R0
BIC             R1, R7, R1
STRD            R0, R1, [R3]
ADD             R0, R6, #1
AND             R6, R0, #0xFF
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x7EC]
CMP             R6, R0
BCC             loc_1B0748
MOV             R0, #0
MOV             R1, R0
STR             R0, [SP,#0x2868+var_2854]
ADD             R0, SP, #0x2868+var_868
VMOV.F32        S18, S20
STR             R1, [R0,#0x7DC]
LDR             R0, [R0,#0x830]
VLDR            S23, =100000.0
ADD             R4, SP, #0x2868+var_868
ADD             R7, SP, #0x2868+var_2838
LDR             R0, [R0,#4]
ADD             R6, SP, #0x2868+var_2830
ADD             R5, SP, #0x2868+var_2820
ADD             R4, R4, #0x7E0
LDR             R8, [R0,#0x610]
LDR             R0, [R8]
TST             R0, #2
BNE             loc_1B0DFC
LDR             R0, [SP,#0x2868+var_2854]
CMP             R0, #0
ADD             R0, SP, #0x2868+var_868
STREQ           R8, [SP,#0x2868+var_2854]
STR             R8, [R0,#0x7DC]
LDR             R0, [R8,#8]
TST             R0, #0x400
BNE             loc_1B10E0
TST             R0, #1
BEQ             loc_1B10E0
VMOV.F32        S0, S16
ADD             LR, SP, #0x2868+var_2838
ADD             R1, SP, #0x2868+var_2850
ADD             R2, SP, #0x2868+var_2848
VSTR            S0, [SP,#0x2868+var_2828]
VMOV.F32        S0, S18
VSTR            S17, [SP,#0x2868+var_2824]
VLDR            S1, [R11,#4]
LDR             R0, [R11]
VADD.F32        S1, S1, S0
STR             R0, [SP,#0x2868+var_2850]
ADD             R0, R8, #8
VSTR            S1, [SP,#0x2868+var_284C]
LDM             R0, {R0,R3}
TST             R0, #0x800
VMOVNE.F32      S1, S23
VLDREQ          S1, [R8,#0x14]
STR             R3, [SP,#0x2868+var_2848]
ADD             R3, SP, #0x2868+var_2840
VSTR            S1, [SP,#0x2868+var_2844]
LDR             R0, [R8,#8]
LDR             R12, [R8,#0x2C]
TST             R0, #0x800
VMOVNE.F32      S1, S23
VLDREQ          S1, [R8,#0x34]
ADD             R0, R8, #0xC
STR             R12, [SP,#0x2868+var_2840]
VSTR            S1, [SP,#0x2868+var_283C]
LDM             R0, {R0,R12}
STM             LR, {R0,R12}
LDR             R0, [R8,#0x2C]
VLDR            S1, [R8,#0x30]
STR             R0, [SP,#0x2868+var_2830]
VSTR            S1, [SP,#0x2868+var_282C]
ADD             R0, SP, #0x2868+var_2828
STR             R4, [SP,#0x2868+var_285C]
STR             R5, [SP,#0x2868+var_2860]
STR             R6, [SP,#0x2868+var_2864]
STR             R7, [SP,#0x2868+var_2868]
BL              sub_45A300
CMP             R0, #0
NOP
BEQ             loc_1B0F9C
LDR             R0, [SP,#0x2868+var_2238]
MOV             R3, #1
MOV             R2, #0x28 ; '('
MOV             R0, R0,LSL#17
MOV             R0, R0,LSR#26
STR             R0, [R9,#0xC]
LDR             R0, [SP,#0x2868+var_21C0]
AND             R0, R0, #0x3F ; '?'
STR             R0, [R9,#0x10]
LDR             R0, [SP,#0x2868+var_2820]
STR             R0, [R9]
VLDR            S0, [SP,#0x2868+var_281C]
ADD             R0, SP, #0x2868+var_868
VSUB.F32        S0, S0, S18
VSTR            S0, [R9,#4]
LDR             R1, [R0,#0x7E0]
STR             R1, [R10]
LDR             R0, [R0,#0x7E4]
STR             R0, [R10,#4]
ADD             R0, SP, #0x2868+var_868
VSTR            S19, [R10,#8]
LDR             R0, [R0,#0x7C8]
STR             R0, [SP,#0x2868+var_2818]
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x7CC]
STR             R0, [SP,#0x2868+var_2738]
ADD             R0, SP, #0x2868+var_868
LDR             R1, [R0,#0x7D0]
STR             R1, [SP,#0x2868+var_20C0]
LDR             R1, [R0,#0x7D8]
LDR             R4, [R0,#0x7D4]
STR             R1, [R0,#0x760]
LDR             R1, =sub_5A2F60
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
ADD             R0, SP, #0x2868+var_868
MOV             R3, #1
LDR             R1, [R0,#0x7C0]
MOV             R2, #0x1C
ADD             R0, R4, #0x18
STR             R1, [R4]
LDR             R1, =nullsub_300
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x2400
SUB             R0, R0, #0x2DC
BL              sub_540C2C
MOV             R0, #1
NOP
B               loc_1B0D44
LDR             R0, [R8]
TST             R0, #1
BEQ             loc_1B10E0
ADD             R0, SP, #0x2868+var_2468
VLDR            S1, [R0,#0x20C]
VLDR            S0, [R0,#0x210]
LDR             R0, [SP,#0x2868+var_2854]
VADD.F32        S3, S1, S16
VADD.F32        S0, S0, S16
VLDR            S2, [R0,#0x78]
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x7DC]
VCMPE.F32       S3, S2
VLDR            S1, [R0,#0x7C]
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S1, S0
VMRSCS          APSR_nzcv, FPSCR
BCS             loc_1B10E8
LDR             R0, [SP,#0x2868+var_2238]
ADD             R3, SP, #0x2868+var_2710
VCMPE.F32       S1, S0
MOV             R0, R0,LSL#17
MOV             R0, R0,LSR#26
STR             R0, [R9,#0xC]
LDR             R0, [SP,#0x2868+var_21C0]
VMRS            APSR_nzcv, FPSCR
AND             R0, R0, #0x3F ; '?'
STR             R0, [R9,#0x10]
LDM             R3, {R0-R2}
VMOVCC.F32      S21, S22
STM             R9, {R0-R2}
LDM             R3, {R0-R2}
MOV             R3, #1
VMOV            S0, R0
STM             R10, {R0-R2}
ADD             R0, SP, #0x2868+var_868
MOV             R2, #0x28 ; '('
VMLA.F32        S0, S21, S18
VSTR            S0, [R10]
VMOV            S0, R1
VADD.F32        S0, S0, S18
VSTR            S0, [R10,#4]
VSTR            S19, [R10,#8]
LDR             R0, [R0,#0x7C8]
STR             R0, [SP,#0x2868+var_2818]
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x7CC]
STR             R0, [SP,#0x2868+var_2738]
ADD             R0, SP, #0x2868+var_868
LDR             R1, [R0,#0x7D0]
STR             R1, [SP,#0x2868+var_20C0]
LDR             R1, [R0,#0x7D8]
LDR             R4, [R0,#0x7D4]
STR             R1, [R0,#0x760]
LDR             R1, =sub_5A2F60
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
ADD             R0, SP, #0x2868+var_868
MOV             R3, #1
LDR             R1, [R0,#0x7C0]
MOV             R2, #0x1C
ADD             R0, R4, #0x18
STR             R1, [R4]
LDR             R1, =nullsub_300
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x2400
SUB             R0, R0, #0x2DC
BL              sub_540C2C
MOV             R0, #1
NOP
B               loc_1B0D44
DCD sub_5A2F60
DCD nullsub_300
DCFS 100000.0
ADD             R8, R8, #0x88
B               loc_1B0DDC
ADD             R0, SP, #0x2868+var_868
MOV             R3, #1
LDR             R0, [R0,#0x7C8]
MOV             R2, #0x28 ; '('
STR             R0, [SP,#0x2868+var_2818]
ADD             R0, SP, #0x2868+var_868
LDR             R0, [R0,#0x7CC]
STR             R0, [SP,#0x2868+var_2738]
ADD             R0, SP, #0x2868+var_868
LDR             R1, [R0,#0x7D0]
STR             R1, [SP,#0x2868+var_20C0]
LDR             R1, [R0,#0x7D8]
LDR             R4, [R0,#0x7D4]
STR             R1, [R0,#0x760]
LDR             R1, =sub_5A2F60
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
ADD             R0, SP, #0x2868+var_868
MOV             R3, #1
LDR             R1, [R0,#0x7C0]
MOV             R2, #0x1C
ADD             R0, R4, #0x18
STR             R1, [R4]
LDR             R1, =nullsub_300
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x2400
SUB             R0, R0, #0x2DC
BL              sub_540C2C
MOV             R0, #0
B               loc_1B0D44

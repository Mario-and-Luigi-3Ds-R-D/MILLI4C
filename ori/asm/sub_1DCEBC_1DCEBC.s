PUSH            {R4-R11,LR}
MOV             R4, R0
LDR             R7, =off_6CE970
LDR             R1, =0xA005
VPUSH           {D8-D9}
SUB             SP, SP, #0x1CC
LDR             R0, [R7]
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             loc_1DDAFC
LDR             R0, [R7]
BL              sub_5EE764
CMP             R0, #0
BNE             loc_1DDAFC
LDR             R0, [R7]
BL              sub_528E64
MOV             R11, R0
LDR             R6, [R7]
LDR             R0, =byte_19CF31
VLDR            S16, =0.0
LDRB            R0, [R0,R6]
CMP             R0, #0
MOVNE           R8, #0x10
MOVEQ           R5, #0xA
BNE             loc_1DD00C
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_1DCF4C
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]
CMP             R0, #0
LDREQ           R0, =0xD003
BEQ             loc_1DCF50
LDR             R0, =0xD001
NOP
BL              sub_50F020
LDRH            R0, [R0,#0x18]
CMP             R0, #0
BEQ             loc_1DCF80
MOV             R2, #0
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
MOVEQ           R0, #0
BEQ             loc_1DCF84
MOV             R0, #1
CMP             R0, #0
ORRNE           R8, R5, #4
BICEQ           R8, R5, #4
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1DCFC0
MOV             R2, #0
LDR             R0, =0xE01A
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
ORRNE           R8, R8, #0x20 ; ' '
B               loc_1DCFF0
NOP
BL              sub_48004C
CMP             R0, #0
NOP
BEQ             loc_1DCFF0
MOV             R2, #0
LDR             R0, =0xE01B
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
ORRNE           R8, R8, #0x40 ; '@'
MOV             R2, #0
LDR             R0, =0xE01C
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
ORRNE           R8, R8, #0x10
LDR             R2, =0x20F0E
MOV             R0, #0
ADD             R5, R4, R2
ORR             R1, R2, R2,ASR#8
ADD             R6, R4, R1
STRB            R0, [R5]
STRB            R0, [R6]
LDR             R0, [R7]
LDR             R1, [R0,#4]
LDRB            R2, [R1]
ADD             R1, R4, #0x20000
ADD             R1, R1, #0xF00
CMP             R2, #0
STR             R1, [SP,#0x200+var_40]
BEQ             loc_1DD098
BL              sub_5EE4D4
CMP             R0, #0
NOP
BNE             loc_1DD098
ADD             R0, SP, #0x200+var_1F4
MOV             R1, #2
STR             R0, [SP,#0x200+var_64]
STR             R0, [SP,#0x200+var_60]
BL              sub_1CF4B8
LDR             R0, [SP,#0x200+var_60]
LDR             R1, [SP,#0x200+var_64]
SUB             R0, R0, R1
MOVS            R0, R0,ASR#2
MOVNE           R0, #1
CMP             R0, #0
STRB            R0, [R5]
BEQ             loc_1DD098
LDRB            R0, [SP,#0x200+var_5C]
ORR             R8, R8, #0x80
STRB            R0, [R6]
LDR             R1, =off_6CE970
LDR             R0, [R11,#0x2A8]
LDR             R1, [R1]
CMP             R0, #0
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xDE00
LDR             R6, [R1,#0xF8]
BEQ             loc_1DD0CC
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BNE             loc_1DD0D0
ORR             R6, R6, #0x20 ; ' '
TST             R8, #0x20
BEQ             loc_1DD150
TST             R6, #0x20
BNE             loc_1DD150
BL              sub_50F1A4
LDRB            R1, [R11,#0x495]
LDM             R0, {R5,R9}
CMP             R1, #0
MOVEQ           R10, #1
MOVNE           R10, #2
CMP             R5, R9
BEQ             loc_1DD14C
LDRH            R0, [R5]
BL              sub_50F020
MOV             R7, R0
LDRH            R0, [R0,#0x18]
CMP             R0, #0
BEQ             loc_1DD130
MOV             R2, #0
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1DD140
LDRB            R0, [R7,#5]
CMP             R0, #3
CMPNE           R0, R10
BEQ             loc_1DD150
ADD             R5, R5, #2
CMP             R5, R9
BNE             loc_1DD100
ORR             R6, R6, #0x20 ; ' '
LDR             R10, =off_6CE970
LDR             R0, [R10]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRB            R0, [R0,#0x30]
CMP             R0, #0
ORRNE           R6, R6, #0x40 ; '@'
BL              sub_50F220
LDR             R1, [R0,#4]
LDR             R5, [R0]
MOV             R7, R0
CMP             R1, R5
BEQ             loc_1DD1C4
LDRH            R1, [R5]
LDR             R0, [R10]
BL              sub_5EE478
MOV             R9, R0
LDRH            R0, [R5]
BL              sub_50EFA0
CMP             R9, #0
NOP
BEQ             loc_1DD1B4
LDRH            R0, [R0,#0x18]
TST             R0, #2
BNE             loc_1DD1C8
LDR             R0, [R7,#4]
ADD             R5, R5, #2
CMP             R0, R5
BNE             loc_1DD184
ORR             R6, R6, #0x10
MOV             R2, #1
MOV             R1, R2
ADD             R0, R11, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
NOP
BNE             loc_1DD20C
LDR             R0, [R11,#0x2A8]
CMP             R0, #0
BEQ             loc_1DD210
MOV             R2, #1
MOV             R1, R2
ADD             R0, R0, #0x40 ; '@'
BL              sub_5C71F0
CMP             R0, #0
NOP
BEQ             loc_1DD210
ORR             R6, R6, #0x60 ; '`'
LDR             R5, [R11,#0x2A8]
CMP             R5, #0
BEQ             loc_1DD248
ADD             R0, R5, #0x40 ; '@'
BL              sub_5C72DC
CMP             R0, #0
NOP
BEQ             loc_1DD244
MOV             R0, R5
BL              sub_5EC230
CMP             R0, #0
NOP
BEQ             loc_1DD248
ORR             R6, R6, #8
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_5EE6F4
CMP             R0, #0
MOV             R7, #0
ORRNE           R6, R6, #8
MOV             R0, R7
ADD             R9, SP, #0x200+var_50
MOV             R10, #1
MOV             R1, R10,LSL R0
TST             R8, R1
BEQ             loc_1DD290
TST             R1, R6
ORRNE           R1, R0, #0x80
STRB            R0, [R9,R7]
STRBNE          R1, [R9,R7]
ADD             R1, R7, #1
AND             R7, R1, #0xFF
ADD             R0, R0, #1
AND             R0, R0, #0xFF
CMP             R0, #0x20 ; ' '
BCC             loc_1DD26C
MOV             R5, #0
LDR             R0, =off_6CE970
MOV             R1, #0xA000
STRB            R5, [R4,#0x50]
B               loc_1DD2E0
DCD 0xA005
DCD off_6CE970
DCFS 0.0
DCD byte_19CF31
DCD byte_19CF30
DCD 0xD003
DCD 0xD001
DCD 0xE01A
DCD 0xE01B
DCD 0xE01C
DCD 0x20F0E
LDR             R0, [R0]
BL              sub_52FACC
STR             R0, [SP,#0x200+var_1D8]
LDR             R0, =0x498
STRB            R5, [R4,#0x4D]
STRB            R7, [R4,#0x53]
CMP             R7, #0
LDRH            R3, [R0,R11]
MOVEQ           R0, #0
BEQ             loc_1DD338
AND             R0, R7, #1
CMP             R0, #0
MOV             R1, #0
ANDGT           R2, R3, #0x7F
BLE             loc_1DD338
LDRB            R12, [R9,R1]
AND             R12, R12, #0x7F
CMP             R2, R12
STRBEQ          R1, [R4,#0x4D]
ADD             R1, R1, #1
CMP             R1, R0
BLT             loc_1DD31C
CMP             R0, R7
ANDLT           R1, R3, #0x7F
BGE             loc_1DD378
LDRB            R2, [R9,R0]
AND             R2, R2, #0x7F
CMP             R1, R2
ADD             R2, R9, R0
STRBEQ          R0, [R4,#0x4D]
LDRB            R2, [R2,#1]
AND             R2, R2, #0x7F
CMP             R1, R2
ADDEQ           R2, R0, #1
ADD             R0, R0, #2
STRBEQ          R2, [R4,#0x4D]
CMP             R0, R7
BLT             loc_1DD344
CMP             R7, #0
MOV             R5, #0
BLE             loc_1DD4D0
LDR             R0, =off_6B92CC
STR             R0, [SP,#0x200+var_1EC]
LDR             R0, =off_6B7BFC
STR             R0, [SP,#0x200+var_1F8]
LDR             R0, =off_6B2A84
STR             R0, [SP,#0x200+var_1DC]
LDR             R0, =off_6CE970
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x460
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_1DD448
BL              sub_14F198
LDR             R2, [SP,#0x200+var_1EC]
MOV             R8, #0
MOV             R1, #0x3F8
STR             R2, [R0]
STRB            R8, [R0,#0x3F4]
STRB            R8, [R0,#0x3F5]
STRB            R8, [R0,#0x3F6]
STRH            R8, [R1,R0]
ADD             R0, R0, #0x3FC
BL              sub_5A2BD0
LDR             R1, [SP,#0x200+var_1F8]
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
SUB             R6, R0, #0x3FC
STRB            R10, [R0,#0x2C]
STR             R4, [R0,#0x58]!
STR             R8, [R0,#8]
LDR             R1, [SP,#0x200+var_1DC]
ADD             R0, R0, #4
STR             R1, [R0]
MOV             R1, #1
MOV             R0, R6
STRB            R10, [R6,#0xF7]
BL              sub_14C450
MOV             R0, #3
STRB            R0, [R6,#0xF1]
ADD             R9, R4, R5,LSL#2
ADD             R0, SP, #0x200+var_50
STR             R6, [R9,#0x54]
LDRB            R8, [R0,R5]
LDR             R0, =unk_656C84
LDR             R1, [SP,#0x200+var_1D8]
AND             R2, R8, #0x7F
STRB            R5, [R6,#0x3F5]
LDRB            R2, [R0,R2]
MOV             R3, #0
MOV             R0, R6
BL              sub_14EEC0
TST             R8, #0x80
MOVNE           R0, #0
MOVEQ           R0, #0xFF
ADD             R1, SP, #0x200+var_1D0
REV             R0, R0
MOV             R3, #8
STR             R0, [SP,#0x200+var_1D0]
LDR             R0, [R6,#0x3B0]
MOV             R2, #1
BL              sub_4FD30C
MOV             R0, #0xF
STRB            R0, [R6,#0xF6]
MOV             R1, #0
MOV             R0, R6
STRB            R8, [R6,#0x3F6]
BL              sub_14C3E8
LDR             R0, [R9,#0x54]
NOP
BL              sub_592584
ADD             R5, R5, #1
CMP             R5, R7
BLT             loc_1DD39C
LDRB            R0, [R4,#0x4D]
LDR             R9, =off_6CE970
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x54]
LDRB            R1, [R0,#0x3F6]
LDR             R0, [R9]
BL              sub_52A450
STR             R11, [SP,#0x200+var_48]
LDR             R0, [R11,#0x2A8]
MOV             R1, #0
MOV             R8, R1
ADD             R7, SP, #0x200+var_48
STR             R0, [SP,#0x200+var_44]
ADD             R0, R1, R1,LSL#1
LDR             R2, [R7,R1,LSL#2]
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x20800
ADD             R0, R0, #0x2C4
ADD             R1, R1, #1
STR             R2, [R0,#4]
STRB            R10, [R0,#1]
STRB            R8, [R0,#2]
STR             R4, [R0,#8]
CMP             R1, #2
STRB            R8, [R0]
BLT             loc_1DD504
ADD             R0, R4, #0x74 ; 't'
BL              sub_214E30
ADD             R0, R4, #0x74 ; 't'
NOP
BL              sub_214B40
LDR             R0, [R9]
MOV             R1, #1
BL              sub_529274
LDR             R6, =0xA002
LDR             R0, [R9]
ADD             R5, R4, #0x11C0
MOV             R1, R6
BL              sub_52FACC
LDR             R1, [R5]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R5
BLX             R3
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x12
MOV             R0, R5
BL              sub_14C548
LDR             R0, [R5,#0xC]
CMP             R0, #0
BNE             loc_1DD5B0
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
MOV             R2, #0xFFFFFF00
MOV             R0, R5
REV             R2, R2
ADD             R1, SP, #0x200+var_1F0
STR             R2, [SP,#0x200+var_1F0]
LDR             R2, [R5]
LDR             R2, [R2,#0x3C]
BLX             R2
ADD             R0, R5, #0x400
BL              sub_2C0EF0
ADD             R0, R5, #0x5000
LDR             R2, =off_6CFA08
ADD             R0, R0, #0xEB0
ADD             R1, R5, #0x5E00
ADD             R1, R1, #0xB1
STRB            R10, [R0]
STRB            R10, [R1]
LDR             R0, [R2]; dword_6581A8
ADD             R5, R5, #0x5C00
LDR             R0, [R0]
STR             R0, [R5,#0x18]
STR             R0, [R5,#0x1C]
ADD             R5, R4, #0x8800
ADD             R5, R5, #0x98
LDR             R0, [R5,#0xC]
CMP             R0, #0
BNE             loc_1DD628
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
LDR             R0, [R5,#0x318]
CMP             R0, #0
BNE             loc_1DD650
MOV             R1, R6
ADD             R0, R5, #0x314
BL              sub_2A5A0C
ADD             R0, R5, #0x400
LDR             R1, =0xA005
ADD             R0, R0, #0x11C
BL              sub_2A5A0C
MOV             R0, #0xFFFFFF00
VMOV.F32        S0, S16
REV             R0, R0
ADD             R1, SP, #0x200+var_1EC
STR             R0, [SP,#0x200+var_1EC]
ADD             R0, R5, #0xDF0
BL              sub_29FBAC
LDR             R0, [R5]
LDR             R11, =flt_6E34B0
LDR             R2, [R0,#0x20]
ADD             R1, R11, #0x164
MOV             R0, R5
BLX             R2
ADD             R0, R11, #0x15C
ADD             R1, R11, #0x1A8
VLDM            R0, {S0-S1}
ADD             R6, R5, #0x158
VLDR            S4, [R11,#(flt_6E3608 - 0x6E34B0)]
VLDR            S5, [R11,#(flt_6E3654 - 0x6E34B0)]
MOV             R0, R6
VLDM            R1, {S2-S3}
VADD.F32        S18, S4, S5
VADD.F32        S19, S0, S2
VADD.F32        S17, S1, S3
BL              sub_5A26D0
VSTR            S17, [R6,#0x24]
ADD             R0, R6, #0x1C
LDR             R1, =0xC020
VSTM            R0, {S18-S19}
MOV             R0, #0
VSTR            S17, [R6,#0xC]
ADD             R6, R6, #4
VSTM            R6, {S18-S19}
STRB            R0, [R5,#0xFD]
LDR             R0, [R9]
BL              sub_52FACC
MOV             R1, R0
ADD             R0, R4, #0x10C00
ADD             R0, R0, #0x254
BL              sub_2C66E4
LDR             R0, [R9]
NOP
BL              sub_5EE6F4
CMP             R0, #0
MOV             R6, #0x100
BEQ             loc_1DD7FC
ADD             R5, R4, #0x1C000
ADD             R5, R5, #0x3AC0
LDR             R0, [R5,#0xC]
CMP             R0, #0
BNE             loc_1DD78C
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
LDR             R1, =0xA004
LDR             R0, [R9]
BL              sub_52FACC
MOV             R8, R0
NOP
ADD             R0, R0, #0xA0
STR             R0, [SP,#0x200+var_1F0]
MOV             R0, R8
MOV             R1, #0
BL              sub_5F0474
MOV             R1, R0
MOV             R0, #0
ADD             R2, SP, #0x200+var_1FC
STR             R0, [SP,#0x200+var_200]
STM             R2, {R0,R6}
MOV             R3, R0
LDR             R2, [SP,#0x200+var_1F0]
ADD             R0, R5, #0x190
BL              sub_1137FC
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R5, #0x190
BL              sub_11DCDC
STRB            R10, [R5,#0x1FF]
VLDR            S2, [R11,#(flt_6E3758 - 0x6E34B0)]
VLDR            S6, [R11,#(flt_6E3764 - 0x6E34B0)]
VLDR            S0, [R11,#(flt_6E375C - 0x6E34B0)]
VLDR            S1, [R11,#(flt_6E3768 - 0x6E34B0)]
VSUB.F32        S2, S2, S6
VLDR            S4, [R11,#(flt_6E3760 - 0x6E34B0)]
VSUB.F32        S0, S0, S1
VLDR            S5, [R11,#(flt_6E376C - 0x6E34B0)]
VLDR            S3, [R11,#(flt_6E3770 - 0x6E34B0)]
ADD             R2, R11, #0x2A8
VSUB.F32        S1, S4, S5
MOV             R1, #0
ADD             R0, R5, #0x100
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S0, S0
VMLA.F32        S2, S1, S1
VSQRT.F32       S1, S2
VDIV.F32        S0, S1, S3
BL              sub_5A2A74
LDR             R0, [R5,#0x128]
ADD             R1, SP, #0x200+var_1F8
VLDR            S0, [R0,#0x10]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x200+var_1F8]
ADD             R0, R5, #0x158
BL              sub_4E665C
STRB            R10, [R5,#0xFD]
ADD             R5, R4, #0x1F000
ADD             R5, R5, #0x820
LDR             R0, [R5,#0xC]
CMP             R0, #0
BNE             loc_1DD86C
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
LDR             R1, =0xC017
LDR             R0, [R9]
BL              sub_52FACC
MOV             R8, R0
NOP
ADD             R0, R0, #0xA0
STR             R0, [SP,#0x200+var_1F0]
MOV             R0, R8
MOV             R1, #0
BL              sub_5F0474
MOV             R2, #0
MOV             R1, R0
ADD             R0, SP, #0x200+var_1FC
STR             R2, [SP,#0x200+var_200]
STM             R0, {R2,R6}
MOV             R3, R2
LDR             R2, [SP,#0x200+var_1F0]
ADD             R0, R5, #0x190
BL              sub_1137FC
STRB            R10, [R5,#0x1FF]
MOV             R0, R5
BL              sub_338778
ADD             R5, R4, #0x1FC00
ADD             R5, R5, #0x154
LDR             R0, [R5,#0xC]
CMP             R0, #0
BNE             loc_1DD8CC
LDR             R1, =0xC018
LDR             R0, [R9]
BL              sub_52FACC
LDR             R1, [R5]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R5
BLX             R3
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
MOV             R0, R5
BL              sub_14C548
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
LDR             R0, [R9]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRB            R0, [R0,#0x31]
CMP             R0, #0
BEQ             loc_1DD918
VLDR            S0, [R11,#(flt_6E37C0 - 0x6E34B0)]
ADD             R2, R11, #0x2F8
MOV             R1, #0
ADD             R0, R5, #0x1DC
BL              sub_5A2298
MOV             R0, #0xFFFFFFFF
ADD             R1, SP, #0x200+var_1FC
REV             R0, R0
STR             R0, [SP,#0x200+var_1FC]
VLDR            S0, [R11,#(flt_6E37C0 - 0x6E34B0)]
ADD             R0, R5, #0x32C
BL              sub_4E665C
STRB            R10, [R5,#0x3F4]
LDR             R0, [R9]
LDR             R1, [R0,#4]
LDRB            R1, [R1]
CMP             R1, #0
BEQ             loc_1DD96C
BL              sub_5EE4D4
CMP             R0, #0
NOP
BNE             loc_1DD96C
MOV             R2, #0
LDR             R0, =0xE007
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1DD96C
LDR             R0, [SP,#0x200+var_40]
LDRB            R0, [R0,#0xE]
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_1DD970
MOV             R0, #0
LDR             R1, [R9]
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xD600
LDRH            R1, [R1,#0xAC]
CMP             R1, #0
BEQ             loc_1DD99C
LDR             R1, [SP,#0x200+var_40]
LDRB            R1, [R1,#0xF]
CMP             R1, #0
MOVNE           R1, #2
BNE             loc_1DD9A0
MOV             R1, #0
ORR             R5, R0, R1
MOV             R0, R4
BL              sub_5C738C
CMP             R0, #0
MOVNE           R0, #4
ORRS            R0, R0, R5
STRB            R0, [R4,#0x52]
LDR             R0, =unk_656B78
VLDR            S16, [R0,#(flt_656B80 - 0x656B78)]
BEQ             loc_1DD9F0
LDR             R0, [R9]
MOV             R1, #0
BL              sub_5EE8E0
VMOV.F32        S0, S16
MOV             R1, R0
MOV             R0, R4
BL              sub_1DB5F8
NOP
NOP
B               loc_1DDA24
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1DDA14
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1DDA40
MOV             R1, #3
VMOV.F32        S0, S16
MOV             R0, R4
BL              sub_1DB5F8
LDR             R0, =0x20F04
ADD             R8, R4, #0x20800
ADD             R8, R8, #0x2E4
LDRB            R0, [R0,R4]
CMP             R0, #0
BNE             loc_1DDAB0
B               loc_1DDA5C
LDR             R0, [R9]
BL              sub_528E64
LDRB            R0, [R0,#0x495]
CMP             R0, #0
MOVNE           R1, #2
MOVEQ           R1, #1
B               loc_1DDA18
MOV             R6, #0x1000
MOV             R5, R8
ORR             R11, R6, R6,ASR#11
LDR             R0, [R9]
MOV             R1, R6
BL              sub_52F368
STR             R0, [R5],#0x10
ADD             R0, R6, #1
UXTH            R6, R0
CMP             R6, R11
BNE             loc_1DDA68
MOV             R6, #0x2000
LDR             R0, [R9]
MOV             R1, R6
BL              sub_52F508
STR             R0, [R5],#0x10
ADD             R0, R6, #1
UXTH            R6, R0
CMP             R6, #0x2040
BNE             loc_1DDA8C
STRB            R10, [R8,#0x420]
MOV             R5, #0
MOV             R0, #0x97
LDR             R1, [R7,R5,LSL#2]
MUL             R0, R5, R0
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, #0x20000
ADD             R0, R0, #0x14C
BL              sub_38596C
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_1DDAB4
LDR             R2, =unk_656B78
MOV             R0, #0
STRB            R0, [R4,#0x4F]
ADD             R1, R4, #0x20800
LDR             R0, [R2,#(off_656B9C - 0x656B78)]; sub_1DAB14
LDR             R2, [R2,#(dword_656BA0 - 0x656B78)]
ADD             R1, R1, #0x2BC
STM             R1, {R0,R2}
ADD             SP, SP, #0x1CC
VPOP            {D8-D9}
POP             {R4-R11,PC}

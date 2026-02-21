PUSH            {R4-R11,LR}
MOV             R5, R0
LDR             R7, =off_6CE970
LDR             R8, =sub_183420
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C4
LDR             R0, [R7]
ADD             R0, R0, R8; sub_183420
BL              sub_127FD4
LDR             R6, =dword_6D2418
LDR             R0, [R7]
MOV             R2, #0
LDR             R1, [R6]
ADD             R0, R0, R8; sub_183420
BL              sub_13D93C
STR             R0, [R6]
LDR             R1, [R7]
ADD             R0, R8, #0x1B8
ADD             R11, R1, R0; loc_1835D8
MOV             R0, R11
BL              sub_4A0F30
MOV             R1, #3
MOV             R0, R11
BL              sub_111BEC
MOV             R2, #1
MOV             R1, R2
MOV             R0, R11
BL              sub_4A0900
MOV             R2, #4
MOV             R1, #0
MOV             R0, R11
BL              sub_111C30
LDR             R1, =0x3E1F7FE7
ADD             R0, R11, #0x13000
ADD             R0, R0, #0x6D0
STR             R0, [SP,#0x1F8+var_108]
STR             R1, [R0]
BL              sub_464168
VLDM            R0, {S0-S7}
ADD             R2, SP, #0x1F8+var_168
LDR             R1, =0x1978
VLDR            S18, =1.0
VSTM            R2, {S0-S7}
VMOV.F32        S17, S18
LDR             R12, [R0,#0x20]
LDRD            R2, R3, [R0,#0x24]
LDR             R0, [R0,#0x2C]
STR             R12, [SP,#0x1F8+var_148]
STR             R0, [SP,#0x1F8+var_13C]
STRD            R2, R3, [SP,#0x1F8+var_144]
LDR             R0, [R1,R5]
CMP             R0, #0
BEQ             loc_24D774
ADD             R1, R0, #0xDC
ADD             R6, SP, #0x1F8+var_148
VLDM            R1, {S0-S7}
ADD             R1, SP, #0x1F8+var_168
VSTM            R1, {S0-S7}
VMOV.F32        S2, S1
ADD             R1, R0, #0xFC
LDM             R1, {R1-R3}
LDR             R0, [R0,#0x108]
VMUL.F32        S2, S2, S2
VMOV            S0, R2
STR             R0, [SP,#0x1F8+var_13C]
STM             R6, {R1-R3}
VMLA.F32        S2, S5, S5
VMLA.F32        S2, S0, S0
VSQRT.F32       S17, S2
B               loc_24D7A0
NOP
BL              sub_464168
VLDM            R0, {S0-S7}
ADD             R1, SP, #0x1F8+var_168
VSTM            R1, {S0-S7}
ADD             R1, R0, #0x20 ; ' '
LDR             R0, [R0,#0x2C]
LDM             R1, {R1-R3}
STR             R0, [SP,#0x1F8+var_13C]
ADD             R0, SP, #0x1F8+var_148
STM             R0, {R1-R3}
ADD             R0, R5, #0x1800
ADD             R2, R5, #0x1800
STR             R0, [SP,#0x1F8+var_3C]
VLDR            S16, [R0,#0xE4]
ADD             R2, R2, #0x144
MOV             R8, R2
ADD             R1, SP, #0x1F8+var_168
ADD             R0, SP, #0x1F8+var_B0
BL              sub_141F30
ADD             R0, R5, #0x24 ; '$'
VSUB.F32        S1, S18, S17
LDM             R0, {R0-R2}
ADD             R3, SP, #0x1F8+var_BC
VMOV            S0, R1
STM             R3, {R0-R2}
ADD             R1, SP, #0x1F8+var_BC
VMLS.F32        S0, S1, S16
VSTR            S0, [SP,#0x1F8+var_B8]
LDR             R0, [R5]
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
ADD             R6, SP, #0x1F8+var_198
BL              sub_464168
MOV             R1, R0
MOV             R0, R6
BL              sub_1169CC
LDR             R0, [R7]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x10C000
ADD             R1, SP, #0x1F8+var_1E4
ADD             R0, R0, #0x214
BL              sub_5C5384
LDR             R0, [R7]
ADD             R1, SP, #0x1F8+var_1F4
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58E6A0
VLDR            S1, [SP,#0x1F8+var_1F4]
VLDR            S5, [SP,#0x1F8+var_1E4]
VLDR            S0, [SP,#0x1F8+var_1F0]
VLDR            S4, [SP,#0x1F8+var_1E0]
VLDR            S2, [SP,#0x1F8+var_1EC]
VLDR            S3, [SP,#0x1F8+var_1DC]
VSUB.F32        S1, S1, S5
VSUB.F32        S0, S0, S4
VSUB.F32        S2, S2, S3
MOV             R0, #0x300
MOV             R3, R8
MOV             R2, #0
ADD             R1, SP, #0x1F8+var_138
VSTR            S1, [SP,#0x1F8+var_FC]
VSTR            S0, [SP,#0x1F8+var_F8]
VSTR            S2, [SP,#0x1F8+var_F4]
STR             R0, [SP,#0x1F8+var_1F8]
MOV             R0, R5
BL              sub_5C4A88
LDR             R0, =dword_6E1330
VLDR            S17, =0.0
LDR             R0, [R0]
TST             R0, #1
BNE             loc_24D8C8
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_24D8C8
LDR             R0, =flt_711FE4
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S17, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDR             R1, [R0]
STR             R1, [SP,#0x1F8+var_12C]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
STR             R1, [SP,#0x1F8+var_11C]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
ADD             R1, SP, #0x1F8+var_138
STR             R0, [SP,#0x1F8+var_10C]
ADD             R0, SP, #0x1F8+var_F0
BL              sub_142110
ADD             R2, SP, #0x1F8+var_FC
ADD             R1, SP, #0x1F8+var_F0
MOV             R0, R2
BL              sub_1169FC
MOV             R1, #0
MOV             R0, R11
BL              sub_111E70
MOV             R2, #6
MOV             R1, #0
MOV             R0, R11
BL              sub_4A1190
ADD             R0, R5, #0x400
LDR             R6, [R5,#0xD88]
LDR             R9, [R5,#0xD84]
VSTR            S16, [R0,#8]
ADD             R0, R5, #0x3F8
BL              sub_25170C
MOV             R0, R11
NOP
BL              sub_4A0F30
LDR             R1, [R5,#0x3F8]
MOV             R0, R11
BL              sub_4A0CC0
MOV             R0, #0xFFFFFFFF
VLDR            S2, =0.0039216
REV             R0, R0
MOV             R1, SP
AND             R2, R0, #0xFF
MOV             R3, R0,LSL#16
MOV             R12, R0,LSL#8
MOV             R3, R3,LSR#24
VMOV            S0, R2
MOV             R12, R12,LSR#24
VMOV            S3, R3
MOV             R0, R0,LSR#24
VMOV            S1, R12
VMOV            S4, R0
VCVT.F32.S32    S0, S0
ADD             R2, SP, #0x1F8+var_1F0
VCVT.F32.S32    S3, S3
MOV             R0, R11
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S4, S4
VMUL.F32        S0, S0, S2
VMUL.F32        S3, S3, S2
VMUL.F32        S1, S1, S2
VMUL.F32        S2, S4, S2
VSTR            S0, [SP,#0x1F8+var_1F8]
VSTR            S3, [SP,#0x1F8+var_1F4]
VSTM            R2, {S1-S2}
BL              sub_4A1768
ADD             R0, R11, #0x12800
ADD             R0, R0, #0x348
MOV             R12, #2
STR             R0, [SP,#0x1F8+var_1D0]
MOV             R1, #0
STRB            R12, [R0]
STRB            R1, [R0,#(byte_196121 - 0x196120)]
MOV             R2, #3
STRB            R1, [R0,#(byte_196122 - 0x196120)]
MOV             R3, #0xE
STRB            R2, [R0,#(byte_196124 - 0x196120)]
STRB            R3, [R0,#(byte_196125 - 0x196120)]
STRB            R1, [R0,#(byte_196127 - 0x196120)]
STRB            R1, [R0,#(byte_196129 - 0x196120)]
STRB            R1, [R0,#(byte_19612A - 0x196120)]
STRB            R2, [R0,#(byte_19612D - 0x196120)]
STRB            R1, [R0,#(byte_196130 - 0x196120)]
MOV             R1, #0x1940
LDR             R1, [R1,R5]
LDR             R1, [R1,#4]
STRB            R1, [R0,#(byte_196132 - 0x196120)]
MOV             R2, R1,LSL#16
MOV             R3, R1,LSL#8
MOV             R2, R2,LSR#24
MOV             R3, R3,LSR#24
MOV             R12, R1,LSR#24
STRB            R2, [R0,#(byte_196133 - 0x196120)]
STRB            R3, [R0,#(byte_196134 - 0x196120)]
STRB            R12, [R0,#(byte_196135 - 0x196120)]
MOV             R1, #1
MOV             R0, R11
BL              sub_4A1144
CMP             R6, R9
NOP
BEQ             loc_24DA60
LDR             R0, [R6,#-0xC]
LDRB            R1, [R0,#0x10]
LDR             R4, [R0,#0x3C]
CMP             R1, #0
MOVEQ           R10, #1
MOVNE           R10, #0
ADD             R2, R4, #1
CMP             R6, R9
UXTH            R7, R2
BEQ             loc_24DC78
LDR             R4, [R6,#-0xC]
ADD             R0, SP, #0x1F8+var_FC
VLDM            R0, {S3-S5}
VLDR            S0, [R4,#0x48]
VLDR            S2, [R4,#0x58]
VLDR            S1, [R4,#0x68]
VMUL.F32        S0, S3, S0
LDR             R8, [R4,#0x3C]
VMLA.F32        S0, S4, S2
VMLA.F32        S0, S5, S1
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BGT             loc_24DC6C
MOV             R0, #0
B               loc_24DAD4
DCD off_6CE970
DCD sub_183420
DCD dword_6D2418
DCD 0x3E1F7FE7
DCD 0x1978
DCFS 1.0
DCFS 0.0
DCD dword_6E1330
DCD flt_711FE4
DCFS 0.0039216
STR             R0, [SP,#0x1F8+var_1F8]
LDRB            R3, [R4,#0x3D]
LDRB            R2, [R4,#0x3C]
LDR             R0, [R4,#0x38]
ADD             R1, SP, #0x1F8+var_1BC
BL              sub_5D1BA4
UXTH            R1, R8
UXTH            R0, R7
CMP             R0, R1
STR             R1, [SP,#0x1F8+var_78]
BEQ             loc_24DB5C
MOV             R0, #0
MOV             R2, #1
REV             R3, R0
STR             R2, [SP,#0x1F8+var_1E4]
ADD             R1, SP, #0x1F8+var_7C
STR             R0, [SP,#0x1F8+var_1E0]
STR             R3, [SP,#0x1F8+var_7C]
STRD            R0, R1, [SP,#0x1F8+var_1DC]
LDRB            R1, [SP,#0x1F8+var_1B4]
ADD             R3, SP, #0x1F8+var_1EC
MOV             R2, #3
STR             R0, [SP,#0x1F8+var_1F0]
STR             R1, [SP,#0x1F8+var_1F4]
STM             R3, {R0,R2}
VMOV.F32        S0, S17
LDRH            R0, [SP,#0x1F8+var_1B6]
LDRH            R3, [SP,#0x1F8+var_1B8]
MOV             R7, R8
STR             R0, [SP,#0x1F8+var_1F8]
LDR             R2, [SP,#0x1F8+var_1BC]
MOV             R1, #0
MOV             R0, R11
BL              sub_4A17F4
LDR             R0, [SP,#0x1F8+var_78]
UXTH            R1, R7
CMP             R1, R0
LDRSBEQ         R0, [R4,#0x10]
CMPEQ           R0, R10
BEQ             loc_24DBE4
LDRB            R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_24DBAC
VLDR            S1, [SP,#0x1F8+var_1A0]
VLDR            S0, [SP,#0x1F8+var_1A8]
VSUB.F32        S1, S1, S0
VSTR            S1, [SP,#0x1F8+var_198]
VLDR            S2, [SP,#0x1F8+var_1A4]
VLDR            S1, [SP,#0x1F8+var_19C]
VSUB.F32        S2, S2, S1
VSTR            S2, [SP,#0x1F8+var_184]
VSTR            S0, [SP,#0x1F8+var_18C]
VSTR            S1, [SP,#0x1F8+var_17C]
B               loc_24DBD4
VLDR            S0, [SP,#0x1F8+var_1A8]
VLDR            S1, [SP,#0x1F8+var_1A0]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x1F8+var_198]
VLDR            S2, [SP,#0x1F8+var_1A4]
VLDR            S0, [SP,#0x1F8+var_19C]
VSUB.F32        S2, S2, S0
VSTR            S2, [SP,#0x1F8+var_184]
VSTR            S1, [SP,#0x1F8+var_18C]
VSTR            S0, [SP,#0x1F8+var_17C]
ADD             R1, SP, #0x1F8+var_198
MOV             R0, R11
BL              sub_4A1E40
LDRSB           R10, [R4,#0x10]
ADD             R1, R4, #0x40 ; '@'
ADD             R0, SP, #0x1F8+var_F0
BL              sub_1169CC
VLDR            S0, [SP,#0x1F8+var_E8]
ADD             R2, SP, #0x1F8+var_F0
ADD             R1, SP, #0x1F8+var_B0
VMUL.F32        S0, S0, S16
MOV             R0, R2
VSTR            S0, [SP,#0x1F8+var_E4]
VLDR            S0, [SP,#0x1F8+var_D8]
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x1F8+var_D4]
VLDR            S0, [SP,#0x1F8+var_C8]
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x1F8+var_C4]
BL              sub_141F30
MOV             R0, #0x300
STR             R0, [SP,#0x1F8+var_1F8]
ADD             R3, SP, #0x1F8+var_F0
MOV             R2, #0
ADD             R1, SP, #0x1F8+var_138
MOV             R0, R5
BL              sub_5C4A88
ADD             R1, SP, #0x1F8+var_138
MOV             R0, R11
BL              sub_4A1F14
MOV             R0, R11
NOP
BL              sub_4A1948
ADD             R1, R5, #0x3FC
MOV             R3, #0
LDM             R1, {R1,R2}
MOV             R0, R11
BL              sub_4A0FA0
SUB             R6, R6, #0xC
CMP             R6, R9
BNE             loc_24DA70
MOV             R1, #1
MOV             R0, R11
BL              sub_111E70
LDR             R0, [SP,#0x1F8+var_1D0]
MOV             R4, #1
MOV             R1, #0
MOV             R8, #3
STRB            R4, [R0]
STRB            R1, [R0,#(byte_196121 - 0x196120)]
STRB            R1, [R0,#(byte_196122 - 0x196120)]
MOV             R3, #0xE
STRB            R8, [R0,#(byte_196124 - 0x196120)]
STRB            R3, [R0,#(byte_196125 - 0x196120)]
STRB            R1, [R0,#(byte_196127 - 0x196120)]
STRB            R4, [R0,#(byte_196129 - 0x196120)]
STRB            R1, [R0,#(byte_19612A - 0x196120)]
STRB            R8, [R0,#(byte_19612D - 0x196120)]
STRB            R1, [R0,#(byte_19612B - 0x196120)]
STRB            R3, [R0,#(byte_19612E - 0x196120)]
STRB            R1, [R0,#(byte_196130 - 0x196120)]
MOV             R2, #0xFF
STRB            R2, [R0,#(byte_196132 - 0x196120)]
STRB            R2, [R0,#(byte_196133 - 0x196120)]
STRB            R2, [R0,#(byte_196134 - 0x196120)]
STRB            R2, [R0,#(byte_196135 - 0x196120)]
MOV             R1, #1
MOV             R0, R11
BL              sub_4A1144
LDR             R1, =0x18CC
ADD             R0, R5, #0x1000
ADD             R0, R0, #0x8D0
STR             R0, [SP,#0x1F8+var_12C]
LDR             R0, [R0]
LDR             R6, [R1,R5]
CMP             R0, R6
BEQ             loc_24DED0
LDR             R0, =0xFFFED4A3
SUB             R0, R11, R0
STR             R0, [SP,#0x1F8+var_128]
LDR             R0, [R5]
LDR             R4, [R6]
LDR             R2, [R0,#0x20]
ADD             R1, R4, #0x14
MOV             R0, R5
BLX             R2
LDR             R0, [SP,#0x1F8+var_128]
LDRB            R1, [R4,#0x14F]
UXTH            R2, R7
STR             R2, [SP,#0x1F8+var_1EC]
LDR             R9, [R4,#0x3C]
STRB            R1, [R0]
LDR             R0, [SP,#0x1F8+var_108]
UXTH            R8, R9
CMP             R2, R8
LDR             R1, [R0]
ORR             R1, R1, #0x4000
STR             R1, [R0]
LDRSBEQ         R1, [R4,#0x10]
CMPEQ           R1, R10
BEQ             loc_24DE74
MOV             R1, #0
STR             R1, [SP,#0x1F8+var_1F8]
LDRB            R3, [R4,#0x3D]
LDRB            R2, [R4,#0x3C]
LDR             R0, [R4,#0x38]
ADD             R1, SP, #0x1F8+var_1BC
BL              sub_5D1BA4
LDR             R0, [SP,#0x1F8+var_1EC]
CMP             R0, R8
BEQ             loc_24DDF0
MOV             R0, #0
MOV             R2, #1
REV             R3, R0
ADD             R1, SP, #0x1F8+var_124
STR             R0, [SP,#0x1F8+var_1E0]
STR             R2, [SP,#0x1F8+var_1E4]
STR             R3, [SP,#0x1F8+var_124]
STRD            R0, R1, [SP,#0x1F8+var_1DC]
LDRB            R2, [SP,#0x1F8+var_1B4]
MOV             R12, R0
ADD             R0, SP, #0x1F8+var_1F4
MOV             R1, #3
STM             R0, {R2,R12}
VMOV.F32        S0, S17
LDRH            R0, [SP,#0x1F8+var_1B6]
STR             R1, [SP,#0x1F8+var_1E8]
LDRH            R3, [SP,#0x1F8+var_1B8]
STR             R0, [SP,#0x1F8+var_1F8]
LDR             R2, [SP,#0x1F8+var_1BC]
MOV             R7, R9
MOV             R1, #0
MOV             R0, R11
STR             R12, [SP,#0x1F8+var_1EC]
BL              sub_4A17F4
UXTH            R0, R7
CMP             R0, R8
LDRSBEQ         R0, [R4,#0x10]
CMPEQ           R0, R10
BEQ             loc_24DE74
LDRB            R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_24DE3C
VLDR            S0, [SP,#0x1F8+var_1A0]
VLDR            S1, [SP,#0x1F8+var_1A8]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x1F8+var_198]
VLDR            S2, [SP,#0x1F8+var_1A4]
VLDR            S0, [SP,#0x1F8+var_19C]
VSUB.F32        S2, S2, S0
VSTR            S2, [SP,#0x1F8+var_184]
VSTR            S1, [SP,#0x1F8+var_18C]
VSTR            S0, [SP,#0x1F8+var_17C]
B               loc_24DE64
VLDR            S1, [SP,#0x1F8+var_1A8]
VLDR            S0, [SP,#0x1F8+var_1A0]
VSUB.F32        S1, S1, S0
VSTR            S1, [SP,#0x1F8+var_198]
VLDR            S2, [SP,#0x1F8+var_1A4]
VLDR            S1, [SP,#0x1F8+var_19C]
VSUB.F32        S2, S2, S1
VSTR            S2, [SP,#0x1F8+var_184]
VSTR            S0, [SP,#0x1F8+var_18C]
VSTR            S1, [SP,#0x1F8+var_17C]
ADD             R1, SP, #0x1F8+var_198
MOV             R0, R11
BL              sub_4A1E40
LDRSB           R10, [R4,#0x10]
MOV             R0, #0x300
STR             R0, [SP,#0x1F8+var_1F8]
ADD             R3, R4, #0x70 ; 'p'
MOV             R2, #0
ADD             R1, SP, #0x1F8+var_F0
MOV             R0, R5
BL              sub_5C4A88
ADD             R1, SP, #0x1F8+var_F0
MOV             R0, R11
BL              sub_4A1F14
MOV             R0, R11
NOP
BL              sub_4A1948
ADD             R1, R5, #0x3FC
MOV             R3, #0
LDM             R1, {R1,R2}
MOV             R0, R11
BL              sub_4A0FA0
LDR             R0, [SP,#0x1F8+var_12C]
ADD             R6, R6, #0xC
LDR             R0, [R0]
CMP             R0, R6
BNE             loc_24DD14
MOV             R0, R11
BL              sub_4A10AC
LDR             R0, [R5,#0x3F4]
LDR             R1, [R0]
MOV             R0, R11
BL              sub_4A0BD0
LDR             R0, =dword_6E1320
LDR             R0, [R0]
TST             R0, #1
BNE             loc_24DF20
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_24DF20
LDR             R0, =flt_6E1324
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R1, =flt_6E1324
MOV             R0, R11
BL              sub_4A16C0
LDR             R0, [R5]
ADD             R1, SP, #0x1F8+var_BC
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
LDR             R0, =0x18D8
LDRB            R0, [R0,R5]
CMP             R0, #0
BNE             loc_24E0F4
MOV             R0, #0
VLDR            S0, =2.0
MOV             R2, #0
ADD             R1, SP, #0x1F8+var_1E4
VMUL.F32        S0, S16, S0
VSTR            S0, [SP,#0x1F8+var_F0]
STR             R0, [SP,#0x1F8+var_EC]
STR             R0, [SP,#0x1F8+var_E8]
STR             R0, [SP,#0x1F8+var_E4]
STR             R0, [SP,#0x1F8+var_E0]
VSTR            S0, [SP,#0x1F8+var_DC]
STR             R0, [SP,#0x1F8+var_D8]
STR             R0, [SP,#0x1F8+var_D4]
STR             R0, [SP,#0x1F8+var_D0]
STR             R0, [SP,#0x1F8+var_CC]
VSTR            S0, [SP,#0x1F8+var_C8]
STR             R0, [SP,#0x1F8+var_C4]
LDR             R0, [R5]
LDR             R3, [R0,#0x24]
MOV             R0, R5
BLX             R3
ADD             R0, R5, #0x1800
ADD             R0, R0, #0xE8
ADD             R1, R5, #0x28 ; '('
VLDR            S2, [R5,#0x24]
VLDR            S5, [R0]
VLDR            S3, [R0,#8]
VLDR            S4, [R0,#4]
VADD.F32        S2, S2, S5
VLDM            R1, {S0-S1}
ADD             R0, SP, #0x1F8+var_1CC
ADD             R3, SP, #0x1F8+var_1C4
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S3
VSTR            S2, [SP,#0x1F8+var_1D0]
VSTM            R0, {S0-S1}
ADD             R0, R5, #0x24 ; '$'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R1, SP, #0x1F8+var_1D0
LDR             R0, [R5]
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
LDR             R0, [R5]
MOV             R2, #0
ADD             R1, SP, #0x1F8+var_1F4
LDR             R3, [R0,#0x24]
MOV             R0, R5
BLX             R3
LDR             R0, [R5]
ADD             R1, SP, #0x1F8+var_1C4
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
ADD             R0, SP, #0x1F8+var_1F4
VLDR            S5, [SP,#0x1F8+var_1E4]
ADD             R2, SP, #0x1F8+var_80
VLDM            R0, {S0-S2}
ADD             R0, SP, #0x1F8+var_1E0
LDR             R1, =0x18F4
ADD             R3, SP, #0x1F8+var_F0
VLDM            R0, {S3-S4}
VSUB.F32        S0, S0, S5
MOV             R0, #0x300
VSUB.F32        S1, S1, S3
VSUB.F32        S2, S2, S4
VSTM            R2, {S0-S2}
MOV             R2, #0
LDR             R1, [R1,R5]
STR             R0, [SP,#0x1F8+var_1F8]
MOV             R0, R5
STRB            R1, [SP,#0x1F8+var_70]
ADD             R1, SP, #0x1F8+var_138
BL              sub_5C4A88
ADD             R8, SP, #0x1F8+var_138
LDM             R8, {R0-R4,R6,R7,R12}
ADD             R8, SP, #0x1F8+var_6C
STM             R8, {R0-R4,R6,R7,R12}
ADD             R4, SP, #0x1F8+var_118
LDM             R4, {R0-R3}
ADD             R4, SP, #0x1F8+var_4C
STM             R4, {R0-R3}
ADD             R1, SP, #0x1F8+var_80
LDR             R0, [SP,#0x1F8+var_3C]
LDR             R0, [R0,#0xF8]
STR             R0, [SP,#0x1F8+var_74]
LDR             R0, [R5,#0x3F4]
BL              sub_2508A8
MOV             R2, #1
MOV             R1, R2
MOV             R0, R11
BL              sub_4A0900
ADD             R1, SP, #0x1F8+var_138
MOV             R0, R11
BL              sub_4A1F14
MOV             R0, R11
NOP
BL              sub_4A1948
LDR             R0, [R5,#0x3F4]
MOV             R3, #0
ADD             R0, R0, #4
LDM             R0, {R1,R2}
MOV             R0, R11
BL              sub_4A0FA0
ADD             SP, SP, #0x1C4
VPOP            {D8-D9}
POP             {R4-R11,PC}

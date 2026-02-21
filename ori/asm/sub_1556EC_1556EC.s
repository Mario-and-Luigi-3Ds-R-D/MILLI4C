PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R1, #0xA000
LDR             R8, =off_6CE970
VPUSH           {D8-D11}
SUB             SP, SP, #0x64
LDR             R0, [R8]
BL              sub_52FACC
MOV             R4, R0
LDR             R0, [R8]
BL              sub_52FC34
LDR             R1, [R6,#8]
MOV             R2, #1
LDR             R7, [R1,#0x18]
ADD             R1, SP, #0xA8+var_70
BL              sub_5EC884
ADD             R3, SP, #0xA8+var_70
LDM             R3, {R0-R2}
ADD             R3, R6, #0x2C ; ','
STM             R3, {R0-R2}
MOV             R2, #0
LDR             R0, [R7]
ADD             R1, SP, #0xA8+var_7C
LDR             R3, [R0,#0x28]
MOV             R0, R7
BLX             R3
VLDR            S1, [SP,#0xA8+var_70]
VLDR            S5, [SP,#0xA8+var_7C]
VLDR            S0, [SP,#0xA8+var_6C]
VLDR            S4, [SP,#0xA8+var_78]
VLDR            S2, [SP,#0xA8+var_68]
VLDR            S3, [SP,#0xA8+var_74]
VSUB.F32        S1, S1, S5
VSUB.F32        S0, S0, S4
VSUB.F32        S2, S2, S3
LDR             R9, =unk_6E20D0
VLDR            S22, =0.0
VSTR            S1, [SP,#0xA8+var_60]
VSTR            S0, [SP,#0xA8+var_5C]
VSTR            S2, [SP,#0xA8+var_58]
LDR             R0, [R7,#0x3B4]
CMP             R0, R4
BEQ             loc_155940
LDR             R0, [R7,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_155934
MOV             R0, #1
MOV             R3, #0x100
VMOV.F32        S0, S22
STMEA           SP, {R0,R3}
LDR             R2, =unk_63FEB8
ADD             R1, SP, #0xA8+var_60
MOV             R3, #6
MOV             R0, R7
BL              sub_14D61C
LDR             R0, [R6,#0x14]
MOV             R1, #1
LDR             R0, [R0,#0x28]
VMOV            S0, R0
STR             R0, [SP,#0xA8+var_A8]
ADD             R0, R7, #0x1DC
BL              sub_5A2708
LDR             R4, [R8]
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_155934
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R4]; byte_19CF30
CMP             R0, #0
BNE             loc_155934
LDRH            R9, [R9,#(word_6E212C - 0x6E20D0)]
MOV             R4, #0
CMP             R9, #0
BLS             loc_155934
LDR             R11, =off_6B6674
MOV             R7, #0
LDR             R0, [R8]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x440
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_155920
BL              sub_14F198
LDR             R2, =off_63FDB0
STR             R11, [R0]
STRB            R4, [R0,#0x3F4]
STRB            R7, [R0,#0x3F5]
STRB            R7, [R0,#0x3F6]
LDR             R1, [R2,#(dword_63FE98 - 0x63FDB0)]
LDR             R2, [R2,#(dword_63FE9C - 0x63FDB0)]
MOV             R5, R0
ADD             R3, R5, #0x3F8
MOV             R10, R0
ADD             R0, R0, #0x400
STM             R3, {R1,R2}
VSTR            S22, [R0]
VSTR            S22, [R0,#4]
BL              sub_4635D8
LDM             R0, {R0-R2}
ADD             R3, R5, #0x400
ADD             R3, R3, #8
STM             R3, {R0-R2,R6}
STR             R7, [R5,#0x418]!
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R5, #4
LDR             R0, [R0,#8]
STR             R0, [R5,#0xC]
STM             R3, {R1,R2}
MOV             R1, #1
STRH            R7, [R5,#0x10]
STR             R7, [R10,#0x42C]!
SUB             R5, R10, #0x400
STRH            R7, [R10,#4]
STRB            R7, [R10,#0xA]
STRB            R7, [R10,#0xC]
SUB             R5, R5, #0x2C ; ','
STRB            R7, [R10,#0xD]
MOV             R0, R5
STR             R7, [R10,#0x10]
BL              sub_14C450
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
LDR             R1, =0xA001
LDR             R0, [R8]
BL              sub_52FACC
MOV             R1, R0
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
STRB            R7, [R5,#0xF2]
STRB            R7, [R5,#0xF6]
ADD             R0, R6, R4,LSL#2
ADD             R4, R4, #1
CMP             R4, R9
STR             R5, [R0,#0x40]
BCC             loc_155828
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D11}
POP             {R4-R11,PC}
ADD             R0, R7, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_155934
ADD             R3, SP, #0xA8+var_70
MOV             R4, #0
LDM             R3, {R0-R2}
ADD             R3, SP, #0xA8+var_8C
MOV             R5, R4
VMOV            S2, R0
STM             R3, {R0-R2}
VMOV            S0, R2
VSTR            S22, [SP,#0xA8+var_88]
VLDR            S4, [SP,#0xA8+var_7C]
VLDR            S1, [SP,#0xA8+var_78]
VLDR            S3, [SP,#0xA8+var_74]
VSUB.F32        S2, S2, S4
VSUB.F32        S1, S22, S1
VSUB.F32        S0, S0, S3
LDR             R10, [R8]
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S20, S2
BL              sub_47FFCC
LDR             R11, =unk_6E1FD0
CMP             R0, #0
BNE             loc_1559C8
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R10]; byte_19CF30
CMP             R0, #0
LDREQ           R10, [R8]
BEQ             loc_1559D8
ADD             R4, R11, #0x204
MOV             R5, #7
ADD             R11, R11, #0x1F4
B               loc_155A08
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_155A0C
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R10]; byte_19CF30
CMP             R0, #0
BNE             loc_155A3C
ADD             R4, R11, #0x250
MOV             R5, #7
ADD             R11, R11, #0x240
VLDM            R11, {S16-S19}
CMP             R5, #0
MOV             R0, #0
BLE             loc_155A3C
ADD             R1, R4, R0,LSL#3
VLDR            S0, [R1]
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BLE             loc_155BA4
CMP             R0, #0
SUB             R1, R0, #1
CMPGE           R1, #0
BGE             loc_155A44
MOV             R1, #0
MOV             R0, R1
ADD             R1, R4, R1,LSL#3
ADD             R0, R4, R0,LSL#3
VLDR            S0, [R1]
VLDR            S2, [R0]
VLDR            S1, [R0,#4]
VLDR            S21, [R1,#4]
VSUB.F32        S2, S2, S0
VSUB.F32        S3, S20, S0
VSUB.F32        S1, S1, S21
VCMP.F32        S16, S22
LDR             R0, [R6,#0x14]
ADD             R2, SP, #0xA8+var_8C
MOV             R1, #0
LDR             R0, [R0,#0x2C]
VMRS            APSR_nzcv, FPSCR
VDIV.F32        S0, S3, S2
STR             R0, [SP,#0xA8+var_A8]
VMLA.F32        S21, S0, S1
VDIV.F32        S0, S20, S21
VCMPENE.F32     S16, S0
VMRSNE          APSR_nzcv, FPSCR
VCMP.F32        S17, S22
VMOVGT.F32      S0, S16
VMRS            APSR_nzcv, FPSCR
VCMPENE.F32     S0, S17
VMRSNE          APSR_nzcv, FPSCR
VMOV            S1, R0
ADD             R0, R7, #0x1DC
VMOVGT.F32      S0, S17
VMUL.F32        S1, S1, S1
VMLS.F32        S1, S0, S0
VCMPE.F32       S1, S22
VMRS            APSR_nzcv, FPSCR
VCMP.F32        S18, S22
VSQRTGE.F32     S16, S1
VMOVLT.F32      S16, S22
VMRS            APSR_nzcv, FPSCR
VCMPENE.F32     S18, S16
VMRSNE          APSR_nzcv, FPSCR
VCMP.F32        S19, S22
VMOVGT.F32      S16, S18
VMRS            APSR_nzcv, FPSCR
VCMPENE.F32     S16, S19
VMRSNE          APSR_nzcv, FPSCR
VMOV.F32        S0, S21
VMOVGT.F32      S16, S19
BL              sub_5A2074
VLDR            S0, =1.0
VSTR            S22, [SP,#0xA8+var_50]
VSTR            S0, [SP,#0xA8+var_4C]
VMOV.F32        S2, S16
VMOV.F32        S1, S21
VSTR            S22, [SP,#0xA8+var_48]
ADD             R2, SP, #0xA8+var_50
VLDR            S0, [SP,#0xA8+var_6C]
MOV             R1, #1
ADD             R0, R7, #0x1DC
BL              sub_5A2840
NOP
NOP
B               loc_155B60
DCD off_6CE970
DCFS 0.0
DCD unk_6E20D0
DCD unk_63FEB8
DCD byte_19CF30
DCD off_6B6674
DCD off_63FDB0
DCD 0xA001
DCD unk_6E1FD0
DCFS 1.0
LDR             R0, [R8]
BL              sub_5EE4D4
CMP             R0, #0
LDR             R0, [R6,#0x14]
ADDNE           R0, R0, #0x10
LDRH            R0, [R0,#6]
VSTR            S22, [R7,#0x39C]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VADD.F32        S0, S0, S21
VSTR            S0, [R7,#0x3A0]
LDR             R4, [R8]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_155C68
B               loc_155BB4
ADD             R0, R0, #1
CMP             R5, R0
BGT             loc_155A18
B               loc_155A3C
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R4]; byte_19CF30
CMP             R0, #0
BNE             loc_155C68
VMOV.F32        S2, S16
VMOV.F32        S1, S21
VLDR            S0, [SP,#0xA8+var_6C]
BL              sub_589638
VLDR            S0, =0.5
LDR             R10, =off_63FDB0
MOV             R5, #0
VMUL.F32        S16, S21, S0
B               loc_155C58
LDRH            R0, [R9,#(word_6E212C - 0x6E20D0)]
LDRB            R1, [R4,#0x3F4]
ADD             R0, R0, #1
VMOV            S0, R0
ADD             R0, R1, #1
VCVT.F32.U32    S1, S0
VDIV.F32        S0, S16, S1
VMOV            S1, R0
ADD             R0, R4, #0x32C
VCVT.F32.U32    S2, S1
VMOV.F32        S1, S16
VMLS.F32        S1, S2, S0
VCVT.S32.F32    S0, S1
VCVT.F32.S32    S0, S0
BL              sub_4E64EC
VMOV.F32        S0, S16
ADD             R0, R4, #0x364
BL              sub_4E64EC
ADD             R0, R4, #0x400
ADD             R5, R5, #1
VSTR            S16, [R0]
VSTR            S22, [R4,#0x39C]
VSTR            S21, [R4,#0x3A0]
LDRD            R0, R1, [R10,#(off_63FDF0 - 0x63FDB0)]
ADD             R4, R4, #0x3F8
CMP             R5, #0x20 ; ' '
STM             R4, {R0,R1}
BCS             loc_155C68
ADD             R0, R6, R5,LSL#2
LDR             R4, [R0,#0x40]
CMP             R4, #0
BNE             loc_155BE8
VMOV.F32        S0, S22
MOV             R3, #0
MOV             R12, #0x100
STMEA           SP, {R3,R12}
LDR             R2, =unk_63FEA0
ADD             R1, SP, #0xA8+var_60
MOV             R0, R7
MOV             R3, #6
BL              sub_14D61C
LDR             R0, =0xFFE683CC
LDR             R12, [R8]
LDRH            R1, [R7,#0x10]
LDR             R2, =0x3008A
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
LDR             R1, =off_63FDB0
MOV             R0, #0
STRB            R0, [R6,#0x38]
STRB            R0, [R6,#0x39]
LDRD            R0, R1, [R1,#(off_63FE20 - 0x63FDB0)]
STRD            R0, R1, [R6,#0xC]
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D11}
POP             {R4-R11,PC}

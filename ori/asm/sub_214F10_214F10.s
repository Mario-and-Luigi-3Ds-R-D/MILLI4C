PUSH            {R4-R12,LR}
MOV             R5, R0
VPUSH           {D8-D12}
SUB             SP, SP, #0x5F0
BL              sub_14EA44
LDR             R0, [R5,#0x418]
ADD             R4, R5, #0x410
LDR             R6, =off_6CE970
CMP             R0, #0
LDRBNE          R0, [R4]
VLDR            S18, =1.0
MOV             R7, #2
CMPNE           R0, #0
MOV             R8, #0
BEQ             loc_214FE0
LDR             R0, [R6]
VLDR            S1, =0.0039062
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
VLDR            S0, =256.0
VMUL.F32        S0, S16, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
ADD             R0, R4, #0x14
BL              sub_123CE8
ADD             R0, R4, #4
BL              sub_592F14
VMOV.F32        S0, S16
ADD             R0, R4, #0x108
BL              sub_5A176C
LDRSB           R0, [R4]
CMP             R0, #1
BEQ             loc_214FBC
CMP             R0, #2
BEQ             loc_214FE0
CMP             R0, #3
BEQ             loc_214FD0
B               loc_214FE0
ADD             R0, R4, #0x108
BL              sub_5F1964
CMP             R0, #0
STRBEQ          R7, [R4]
B               loc_214FE0
ADD             R0, R4, #0x108
BL              sub_5F1964
CMP             R0, #0
STRBEQ          R8, [R4]
LDRB            R0, [R5,#0x3F4]
CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
DCD def_214FE8; jump table for switch statement
LDR             R0, [R6]; jumptable 00214FE8 case 1
LDR             R4, =flt_6E34B0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
MOV             R1, R0,ASR#31
ADD             R0, R0, R1,LSR#24
MOV             R1, R0,ASR#8
ADD             R0, R5, #0x300
LDRH            R2, [R0,#0xF8]
ADD             R1, R1, R2
UXTH            R1, R1
STRH            R1, [R0,#0xF8]
LDR             R0, [R4,#(flt_6E34E4 - 0x6E34B0)]
LDR             R2, [R4,#(dword_6E3560 - 0x6E34B0)]
SUB             R0, R0, R2
CMP             R0, R1
BHI             def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
MOV             R0, #1
STRB            R0, [R5,#0xF2]
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x640+var_638
REV             R0, R0
STR             R0, [SP,#0x640+var_638]
LDR             R0, [R5]
LDR             R2, [R0,#0x3C]
MOV             R0, R5
BLX             R2
MOV             R0, #0xFFFFFFFF
ADD             R1, SP, #0x640+var_63C
REV             R0, R0
STR             R0, [SP,#0x640+var_63C]
VLDR            S0, [R4,#(dword_6E3560 - 0x6E34B0)]
ADD             R0, R5, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
STRB            R7, [R5,#0x3F4]
ADD             SP, SP, #0x5F0; jumptable 00214FE8 default case, cases 0,2,6,8
VPOP            {D8-D12}
POP             {R4-R12,PC}
ADD             R0, R5, #0x354; jumptable 00214FE8 case 3
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
LDR             R0, [R5,#0xC]
CMP             R0, #0
BEQ             def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
ADD             SP, SP, #0x5F0
MOV             R0, R5
VPOP            {D8-D12}
POP             {R4-R12,LR}
B               sub_528B1C
LDR             R4, =off_6CE970; jumptable 00214FE8 case 4
ADD             R9, R5, #0x300
LDRH            R10, [R9,#0xFA]
LDR             R0, [R4]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
BL              sub_1464D4
MOV             R6, R0
LDR             R0, [R4]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(flt_19B0AC - 0x19B000)]
BL              sub_1464D4
MOV             R4, R0
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_2157B0
TST             R6, #0xF0
BEQ             loc_215154
LDR             R0, =flt_6E34B0
LDR             R0, [R0,#(dword_6E3578 - 0x6E34B0)]
STRB            R0, [R5,#0x3F7]
B               loc_215188
LDRSB           R1, [R9,#0xF7]
CMP             R1, #0
BLE             loc_215188
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
MOV             R2, R0,ASR#31
ADD             R0, R0, R2,LSR#24
SUB             R0, R1, R0,ASR#8
STRB            R0, [R5,#0x3F7]
B               loc_2157B0
LDR             R0, =dword_6E1320
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2151C4
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2151C4
LDR             R0, =flt_6E1324
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
AND             R0, R4, #0xF0
LDR             R1, =unk_656CEC
MOV             R0, R0,LSR#4
VLDR            S17, =0.0
ADD             R0, R1, R0,LSL#3
LDR             R1, [R0]
LDR             R0, [R0,#4]
VMOV            S0, R1
STR             R1, [SP,#0x640+var_640]
STR             R0, [SP,#0x640+var_63C]
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVEQ          S0, R0
VCMPEQ.F32      S0, S17
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_2157B0
LDRB            R0, [R5,#0x3F5]
LDRB            R1, [R5,#0x3F6]
CMP             R0, #2
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R1, [SP,#0x640+var_62C]
STRB            R0, [SP,#0x640+var_62C+1]
STRB            R8, [SP,#0x640+var_62A]
LDRH            R0, [R9,#0xFC]
STR             SP, [SP,#0x640+var_618]
STRH            R0, [SP,#0x640+var_60C]
ADD             R0, SP, #0x640+var_608
STR             R0, [SP,#0x640+var_104]
LDRH            R1, [SP,#0x640+var_62C]
STR             R0, [SP,#0x640+var_108]
ADD             R0, SP, #0x640+var_140
STRH            R1, [R0,#0x40]
ADD             R0, SP, #0x640+var_240
ADD             R0, R0, #0x144
STRB            R8, [SP,#0x640+var_FE]
BL              sub_2144C0
SUB             R4, R0, #0x400
SUB             R4, R4, #0x11C
MOV             R0, #0x12
BL              sub_58F1A0
MOV             R1, R0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x11C
MOV             R11, R0
BL              sub_214100
LDR             R6, =off_6CE970
MOV             R1, R10
LDR             R0, [R6]
BL              sub_52F480
LDR             R1, [R0]
ADD             R7, SP, #0x640+var_638
MOV             R2, #1
LDR             R3, [R1,#0x38]
MOV             R1, R7
BLX             R3
MOV             R2, R7
MOV             R1, R2
MOV             R0, R11
BL              sub_5C8C04
LDR             R0, [SP,#0x640+var_638]
STR             R0, [R4,#4]
LDR             R0, [SP,#0x640+var_634]
STR             R0, [R4,#8]
LDR             R0, [R4,#0x510]
B               loc_2152F0
DCD off_6CE970
DCFS 1.0
DCFS 0.0039062
DCFS 256.0
DCD flt_6E34B0
DCD dword_6E1320
DCFS 0.0
DCD flt_6E1324
DCD unk_656CEC
STR             R0, [R4,#0x514]
LDRB            R0, [R5,#0x3F5]
CMP             R0, #0
BEQ             loc_215310
CMP             R0, #1
CMPNE           R0, #2
BEQ             loc_2154C8
B               loc_215678
LDR             R0, =0x10645C
LDR             R1, [R6]
ADD             R7, SP, #0x640+var_618
ADD             R0, R0, R1; loc_10645C
LDR             R0, [R0,#(loc_106460 - 0x10645C)]
CMP             R0, #0
BEQ             loc_215338
SUBS            R0, R0, #0x1AC
ADDNE           R0, R0, #0x1AC
BNE             loc_21533C
MOV             R0, #0
CMP             R0, #0
LDRNE           R6, [R0,#8]
MOVEQ           R6, #0
BEQ             loc_215678
ADD             R1, R7, #0x400
ADD             R1, R1, #0x118
STR             R1, [SP,#0x640+var_70]
ADD             R1, R7, #0x400
VLDR            S19, =-1.0
ADD             R1, R1, #0x11C
ADD             R11, SP, #0x640+var_638
STR             R1, [SP,#0x640+var_58]
CMP             R0, #0
MOVEQ           R4, #0
SUBNE           R4, R0, #0x1AC
LDR             R1, [SP,#0x640+var_70]
LDR             R0, [R4]
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_2154B0
LDR             R0, [R4]
MOV             R2, #1
MOV             R1, R11
LDR             R3, [R0,#0x38]
MOV             R0, R4
BLX             R3
MOV             R2, R11
LDR             R0, [SP,#0x640+var_58]
MOV             R1, R2
BL              sub_5C8C04
ADD             R1, SP, #0x640+var_638
VLDR            S3, [SP,#0x640+var_614]
VLDR            S0, [SP,#0x640+var_610]
VLDM            R1, {S1-S2}
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S2, S0
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VCMPE.F32       S2, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_2154B0
VMUL.F32        S2, S1, S1
VMOV.F32        S16, S18
LDR             R0, [SP,#0x640+var_618]
VMLA.F32        S2, S0, S0
VSQRT.F32       S4, S2
VDIV.F32        S3, S16, S4
VLDM            R0, {S4-S5}
VMUL.F32        S2, S1, S3
VMUL.F32        S3, S0, S3
VMUL.F32        S2, S2, S4
VMLA.F32        S2, S3, S5
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BGE             loc_215434
VMOV.F32        S3, S19
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S16, S19
VMOVHI.F32      S16, S2
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_2154B0
LDR             R2, [R7,#0x514]
LDR             R3, [R7,#0x510]
LDR             R0, =0x66666667
SUB             R1, R2, R3
SMULL           R12, R2, R0, R1
MOV             R12, R2,ASR#3
SUB             R2, R12, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0x40 ; '@'
BHI             loc_215480
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#3
SUB             R0, R1, R0,ASR#31
ADD             R0, R2, R2,LSL#2
ADD             R0, R3, R0,LSL#2
STR             R0, [SP,#0x640+var_104]
VMUL.F32        S1, S1, S1
LDR             R0, [SP,#0x640+var_104]
LDRH            R1, [R4,#0x10]
STRH            R1, [R0,#-0x14]!
LDR             R1, [SP,#0x640+var_638]
STR             R1, [R0,#4]
VMLA.F32        S1, S0, S0
LDR             R1, [SP,#0x640+var_634]
STR             R1, [R0,#8]
VSQRT.F32       S0, S1
VSTR            S0, [R0,#0xC]
VSTR            S16, [R0,#0x10]
MOVS            R0, R6
MOVEQ           R6, #0
LDRNE           R6, [R0,#8]
CMP             R0, R8
BNE             loc_21536C
B               loc_215678
LDR             R0, =0x10646C
LDR             R1, [R6]
ADD             R7, SP, #0x640+var_618
ADD             R0, R0, R1; loc_10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
LDRNE           R6, [R0,#8]
MOVEQ           R6, #0
BEQ             loc_215678
ADD             R1, R7, #0x400
ADD             R1, R1, #0x118
STR             R1, [SP,#0x640+var_70]
ADD             R1, R7, #0x400
VLDR            S19, =-1.0
ADD             R1, R1, #0x11C
ADD             R11, SP, #0x640+var_638
STR             R1, [SP,#0x640+var_60]
CMP             R0, #0
MOVEQ           R4, #0
SUBNE           R4, R0, #0x1AC
LDR             R1, [SP,#0x640+var_70]
LDR             R0, [R4]
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_215664
LDR             R0, [R4]
MOV             R2, #1
MOV             R1, R11
LDR             R3, [R0,#0x38]
MOV             R0, R4
BLX             R3
MOV             R2, R11
LDR             R0, [SP,#0x640+var_60]
MOV             R1, R2
BL              sub_5C8C04
VLDR            S1, [SP,#0x640+var_638]
VLDR            S2, [SP,#0x640+var_614]
VLDR            S3, [SP,#0x640+var_634]
VLDR            S0, [SP,#0x640+var_610]
VSUB.F32        S1, S1, S2
VSUB.F32        S0, S3, S0
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VCMPE.F32       S2, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_215664
VMUL.F32        S2, S1, S1
VMOV.F32        S16, S18
LDR             R0, [SP,#0x640+var_618]
VLDR            S5, [R0,#4]
VMLA.F32        S2, S0, S0
VSQRT.F32       S3, S2
VDIV.F32        S2, S16, S3
VMUL.F32        S3, S1, S2
VMUL.F32        S4, S0, S2
VLDR            S2, [R0]
VMUL.F32        S2, S3, S2
VMLA.F32        S2, S4, S5
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BGE             loc_2155E8
VMOV.F32        S3, S19
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S16, S19
VMOVHI.F32      S16, S2
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_215664
LDR             R2, [R7,#0x514]
LDR             R3, [R7,#0x510]
LDR             R0, =0x66666667
SUB             R1, R2, R3
SMULL           R12, R2, R0, R1
MOV             R12, R2,ASR#3
SUB             R2, R12, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0x40 ; '@'
BHI             loc_215634
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#3
SUB             R0, R1, R0,ASR#31
ADD             R0, R2, R2,LSL#2
ADD             R0, R3, R0,LSL#2
STR             R0, [SP,#0x640+var_104]
VMUL.F32        S1, S1, S1
LDR             R0, [SP,#0x640+var_104]
LDRH            R1, [R4,#0x10]
STRH            R1, [R0,#-0x14]!
LDR             R1, [SP,#0x640+var_638]
STR             R1, [R0,#4]
VMLA.F32        S1, S0, S0
LDR             R1, [SP,#0x640+var_634]
STR             R1, [R0,#8]
VSQRT.F32       S0, S1
VSTR            S0, [R0,#0xC]
VSTR            S16, [R0,#0x10]
MOVS            R0, R6
MOVEQ           R6, #0
LDRNE           R6, [R0,#8]
CMP             R0, R8
BNE             loc_21551C
LDR             R1, [SP,#0x640+var_104]
LDR             R2, [SP,#0x640+var_108]
LDR             R0, =0x66666667
ADD             R7, SP, #0x640+var_618
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#3
SUBS            R0, R1, R0,ASR#31
BEQ             loc_2157B0
VMOV.F32        S0, S18
VMOV.F32        S16, S17
LDR             R1, [SP,#0x640+var_104]
MOV             R0, R2
CMP             R2, R1
BEQ             loc_2156E0
VLDR            S1, [R0,#0xC]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S16, S1
VLDR            S1, [R0,#0x10]
ADD             R0, R0, #0x14
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
CMP             R0, R1
BNE             loc_2156B4
NOP
BL              sub_5F5B2C
ADD             R0, SP, #0x640+var_240
VLDR            S21, =57.296
ADD             R0, R0, #0x138
VLDR            S23, =0.7
LDM             R0, {R4,R6}
VMUL.F32        S19, S0, S21
VLDR            S22, =0.88889
VLDR            S18, =3.4028e38
CMP             R4, R6
VMOVNE.F32      S20, S17
MOV             R8, #0
BEQ             loc_2157B0
VCMPE.F32       S16, S20
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S17, S20
B               loc_215748
DCD 0x10645C
DCFS -1.0
DCD 0x66666667
DCD 0x10646C
DCFS 57.296
DCFS 0.7
DCFS 0.88889
DCFS 3.4028e38
BLE             loc_215754
VLDR            S0, [R4,#0xC]
VDIV.F32        S17, S0, S16
VLDR            S0, [R4,#0x10]
BL              sub_5F5B2C
VMOV.F32        S24, S20
VCMP.F32        S19, S24
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S0, S0, S21
BEQ             loc_215778
VDIV.F32        S1, S0, S19
VMUL.F32        S24, S1, S23
LDRH            R0, [R4]
LDRH            R1, [R7,#0xC]
ADD             R4, R4, #0x14
CMP             R0, R1
VADD.F32        S0, S17, S24
VMULEQ.F32      S0, S0, S22
VCMPE.F32       S18, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S18, S0
MOVGT           R8, R0
CMP             R4, R6
BNE             loc_215718
CMP             R8, #0
MOVNE           R10, R8
LDRH            R4, [R9,#0xFA]
CMP             R4, R10
BEQ             loc_215870
STRH            R4, [R9,#0xFC]
LDR             R4, =off_6CE970
STRH            R10, [R9,#0xFA]
MOV             R1, R10
LDR             R0, [R4]
BL              sub_52F480
LDR             R1, [R0]
MOV             R6, SP
MOV             R2, #1
LDR             R3, [R1,#0x38]
MOV             R1, R6
BLX             R3
MOV             R1, R6
MOV             R0, R1
BL              sub_480160
ADD             R0, R5, #0x1DC
NOP
BL              sub_5A26D0
MOV             R1, R6
ADD             R0, R5, #0x24 ; '$'
BL              sub_214A94
MOV             R2, R6
MOV             R1, #0
ADD             R0, R5, #0x1DC
BL              sub_5A2A74
LDR             R0, =0xFFE683CC
LDR             R12, [R4]
LDR             R2, =0x30010
MOV             R3, #0
MOV             R1, R5
SUB             R0, R12, R0
BL              sub_503720
LDRH            R1, [R9,#0xFA]
LDR             R0, [R4]
BL              sub_52C0BC
LDR             R0, [R5,#0x400]
LDRH            R1, [R9,#0xFA]
ADD             R0, R0, #0x11C0
BL              sub_2A72E8
LDR             R1, =0x412
LDRH            R0, [R9,#0xFA]
STRH            R0, [R1,R5]
ADD             SP, SP, #0x5F0
VPOP            {D8-D12}
POP             {R4-R12,PC}
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
CMP             R4, #0
BEQ             def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
LDR             R0, =off_6CE970
MOV             R1, R4
LDR             R0, [R0]
BL              sub_52F480
LDR             R1, [R0]
ADD             R4, SP, #0x640+var_63C
MOV             R2, #1
LDR             R3, [R1,#0x38]
MOV             R1, R4
BLX             R3
MOV             R1, R4
MOV             R0, R1
BL              sub_480160
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
ADD             SP, SP, #0x5F0
VPOP            {D8-D12}
POP             {R4-R12,PC}
LDR             R0, =0x3FE; jumptable 00214FE8 case 5
LDRH            R4, [R0,R5]
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
CMP             R4, #0
BEQ             def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
LDR             R0, [R6]
MOV             R1, R4
BL              sub_52F480
LDR             R1, [R0]
ADD             R4, SP, #0x640+var_63C
MOV             R2, #1
LDR             R3, [R1,#0x38]
MOV             R1, R4
BLX             R3
MOV             R1, R4
MOV             R0, R1
BL              sub_480160
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
ADD             SP, SP, #0x5F0
VPOP            {D8-D12}
POP             {R4-R12,PC}
ADD             R0, R5, #0x1DC; jumptable 00214FE8 case 7
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
LDRB            R0, [R5,#0xF0]
CMP             R0, #2
BEQ             loc_215998
MOV             R1, #2
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R5]
ADD             R1, R5, #0x400
ADD             R1, R1, #4
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
MOV             R0, #6
B               loc_2159E4
ADD             R0, R5, #0x1DC; jumptable 00214FE8 case 9
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_214FE8; jumptable 00214FE8 default case, cases 0,2,6,8
LDR             R0, [R6]
BL              sub_528E64
LDRB            R0, [R0,#0x495]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #4
AND             R1, R0, #0xFF
MOV             R0, R5
BL              sub_14C430
MOV             R0, #1
STRB            R0, [R5,#0xF2]
MOV             R0, #8
STRB            R0, [R5,#0x3F4]
ADD             SP, SP, #0x5F0
VPOP            {D8-D12}
POP             {R4-R12,PC}

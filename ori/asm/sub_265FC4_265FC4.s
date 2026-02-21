PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R7, #0
MOV             R5, #1
LDR             R8, =off_6CE970
LDR             R1, =0x19DEE8
VPUSH           {D8}
SUB             SP, SP, #0x28
LDR             R0, [R0,#0x4C]
LDR             R2, [R8]
VLDR            S16, =0.0039062
LDRB            R3, [R0,#9]
ADD             R1, R1, R2; loc_19DEE8
CMP             R3, #0
BEQ             loc_26600C
CMP             R3, #1
BNE             loc_26609C
B               loc_266060
ADD             R2, R2, #0x100000
ADD             R2, R2, #0x9B000
LDR             R2, [R2,#(loc_19B0B4 - 0x19B000)]
CMP             R2, #1
BEQ             loc_26602C
CMP             R2, #2
BEQ             loc_266044
B               loc_26609C
VLDR            S0, [R1]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VSTR            S0, [R0,#4]
STRB            R5, [R0,#8]
B               loc_266058
VLDR            S0, [R1]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VSTR            S0, [R0,#4]
STRB            R7, [R0,#8]
STRB            R5, [R0,#9]
B               loc_26609C
VLDR            S0, [R1]
VLDR            S2, [R0]
VLDR            S1, [R0,#4]
VCVT.F32.S32    S3, S0
VADD.F32        S2, S1, S2
VMUL.F32        S3, S3, S16
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BCC             loc_266098
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_26609C
STRB            R7, [R0,#9]
LDR             R0, [R4,#0x34]
CMP             R0, #0
BLNE            sub_2652C4
LDR             R0, [R4,#0x58]
CMP             R0, #0
BLNE            sub_2681F0
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R1, [R0]
LDR             R0, [R4,#0x64]
ADD             R1, R1, #0x28 ; '('
BL              sub_2675E4
LDR             R0, [R4,#0x74]
CMP             R0, #0
BLNE            sub_267900
LDRB            R0, [R4,#0x70]
CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2660E4; jumptable 002660E4 default case
DCD loc_266114; jump table for switch statement
ADD             SP, SP, #0x28 ; '('; jumptable 002660E4 case 0
MOV             R0, R4
VPOP            {D8}
POP             {R4-R10,LR}
B               sub_264634
ADD             SP, SP, #0x28 ; '('; jumptable 002660E4 cases 1-3
MOV             R0, R4
VPOP            {D8}
POP             {R4-R10,LR}
B               sub_265694
LDR             R0, [R4,#4]; jumptable 002660E4 case 4
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_5CBE38
CMP             R0, #0
NOP
BEQ             def_2660E4; jumptable 002660E4 default case
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_5CBD2C
STRB            R0, [R4,#0x80]
LDR             R1, [R4,#4]
CMP             R0, #0
LDR             R2, [R4,#0x74]
LDR             R1, [R1,#8]
LDRNE           R5, [R1,#0x14]
LDREQ           R5, [R1,#0x18]
MOV             R1, R0
MOV             R0, R2
BL              sub_26798C
LDRSB           R2, [R4,#0x80]
LDR             R0, [R4,#4]
MOV             R1, R5
BL              sub_26459C
LDR             R0, [R4,#0x40]
LDR             R1, [R0,#8]
ADD             R2, R1, #1
STR             R2, [R0,#8]
LDR             R1, [R0]
VLDR            S0, [R0,#4]
LDR             R3, [R1,#0x10]
VLDR            S1, [R1,#4]
CMP             R2, R3
BNE             loc_2661F0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_2661E8
VLDR            S1, [R1,#0xC]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#4]
STR             R7, [R0,#8]
B               loc_266208
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_266208
VLDR            S1, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S1, [R1,#4]
VLDR            S2, [R1]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
BGT             loc_26622C
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S2
VSTR            S0, [R0,#4]
MOV             R0, #5
STRB            R0, [R4,#0x70]
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
LDR             R0, [R0,#0xD0]
STR             R0, [R4,#0x9C]
ADD             SP, SP, #0x28 ; '('; jumptable 002660E4 default case
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R0, [R8]; jumptable 002660E4 case 5
VLDR            S1, [R4,#0x9C]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VSUB.F32        S0, S1, S0
VSTR            S0, [R4,#0x9C]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_5CBD88
CMP             R0, #0
NOP
BEQ             def_2660E4; jumptable 002660E4 default case
LDR             R0, [R4,#0x74]
BL              sub_5CBFCC
CMP             R0, #0
NOP
BEQ             def_2660E4; jumptable 002660E4 default case
VLDR            S0, [R4,#0x9C]
VLDR            S16, =0.0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             def_2660E4; jumptable 002660E4 default case
LDR             R0, [R4,#4]
BL              sub_5CBE84
CMP             R0, #0
NOP
BNE             loc_2667B8
LDR             R0, [R4,#4]
LDR             R5, [R0,#8]
LDR             R0, [R4,#0x74]
ADD             R0, R0, #0x2C ; ','
VLDR            S17, [R0]
LDR             R0, [R4,#0x64]
BL              sub_5CBF8C
VLDR            S0, [R0]
LDR             R0, [R4,#0x64]
VSUB.F32        S17, S17, S0
BL              sub_267334
LDR             R0, [R4,#0x74]
NOP
ADD             R0, R0, #0x2C ; ','
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x50+var_38]
ADD             R0, SP, #0x50+var_40
STM             R0, {R1,R2}
LDR             R0, [R4,#0x64]
BL              sub_5CBF8C
VLDR            S0, [R0]
ADD             R1, SP, #0x50+var_40
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x50+var_40]
LDR             R0, [R4,#0x74]
BL              sub_14E97C
LDR             R0, [R4,#0x64]
NOP
BL              sub_5CBF8C
ADD             R1, R5, #0x400
VLDR            S0, [R0]
VLDR            S1, [R1,#0x14]
ADD             R0, R5, #0x2BC
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VSTR            S16, [SP,#0x50+var_48]
VLDR            S1, [R5,#0x1F4]
VSTR            S1, [SP,#0x50+var_44]
VLDR            S2, [R5,#0x2B8]
VLDM            R0, {S3-S4}
VADD.F32        S2, S0, S2
ADD             R0, SP, #0x50+var_30
VADD.F32        S0, S16, S3
VADD.F32        S1, S1, S4
VSTR            S2, [SP,#0x50+var_34]
VSTM            R0, {S0-S1}
B               loc_2663A8
DCD off_6CE970
DCD 0x19DEE8
DCFS 0.0039062
DCFS 0.0
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R6, R0, #0x12400
LDR             R0, [R8]
ADD             R6, R6, #0x368
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0xE74
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2663F0
LDR             R1, [R4,#4]
ADD             R1, R1, #0x12400
ADD             R1, R1, #0x364
LDR             R2, [R1]
ADD             R1, SP, #0x50+var_34
BL              sub_25F798
MOV             R7, R0
LDR             R0, [R6,#8]
ADD             R1, R6, #4
CMP             R0, R1
BNE             loc_266604
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_266420
BL              sub_25FA40
NOP
NOP
BL              sub_300FD4
STR             R7, [R6]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R1, [R0]
ADD             R0, R4, #0x1C
STR             R1, [R0,#0xC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R1, [R0]
ADD             R0, R4, #8
STR             R1, [R0,#0xC]
LDR             R0, [R8]
MOV             R3, #0
ADD             R6, R4, #0x58 ; 'X'
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x88
BL              sub_10A358
CMP             R0, #0
MOVEQ           R7, #0
BEQ             loc_266494
LDR             R1, [R4,#4]
ADD             R2, R1, #0x12400
ADD             R2, R2, #0x374
ADD             R1, R4, #0x1C
BL              sub_268B48
MOV             R7, R0
LDR             R1, [R6,#8]
ADD             R0, R6, #4
CMP             R1, R0
BNE             loc_266620
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_2664C0
BL              sub_268BEC
NOP
NOP
BL              sub_300FD4
STR             R7, [R6]
LDR             R0, [R4,#4]
ADD             R1, SP, #0x50+var_4C
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x374
BL              sub_14E984
LDR             R0, [R4,#4]
ADD             R0, R0, #0x98
LDR             R0, [R0,#4]
LDR             R2, [R4,#4]
MOV             R1, R0
ADD             R3, R2, #0x12400
ADD             R3, R3, #0x374
MOV             R2, #0
MOV             R0, R3
BL              sub_14E6E0
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x374
MOV             R1, #1
BL              sub_14C548
LDR             R0, [R4,#0x98]
MOV             R3, #0
ADD             R9, R4, #0x34 ; '4'
ADD             R0, R0, #1
STR             R0, [R4,#0x98]
LDR             R0, [R8]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x98
BL              sub_10A358
CMP             R0, #0
MOVEQ           R10, #0
BEQ             loc_26656C
LDR             R1, [R4,#0x98]
ADD             R3, R4, #8
MOV             R2, R5
STR             R1, [SP,#0x50+var_50]
ADD             R1, SP, #0x50+var_4C
BL              sub_2654A4
MOV             R10, R0
LDR             R1, [R9,#8]
ADD             R0, R9, #4
CMP             R1, R0
BNE             loc_26663C
LDR             R0, [R9]
CMP             R0, #0
BEQ             loc_2665EC
ADD             R8, R0, #0x80
LDR             R7, [R0,#0x80]!
LDR             R6, [R0,#4]
CMP             R7, R6
BEQ             loc_2665E4
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R5, R6
CMP             R0, R1
BNE             loc_2665D0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2665D0
BL              sub_25E310
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26659C
SUB             R0, R8, #0x80
BL              sub_300FD4
MOV             R0, #6
STR             R10, [R9]
STRB            R0, [R4,#0x70]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R2, [R6,#4]
ADD             R1, R6, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R6,#4]
STR             R1, [R6,#8]
B               loc_266420
LDR             R2, [R6,#4]
ADD             R0, R6, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_2664C0
LDR             R2, [R9,#4]
ADD             R0, R9, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R9,#4]
STR             R0, [R9,#8]
B               loc_2665EC
LDR             R0, [R4,#0x64]; jumptable 002660E4 case 6
BL              sub_5CBF78
CMP             R0, #0
NOP
BEQ             def_2660E4; jumptable 002660E4 default case
LDR             R0, [R4,#0x7C]
ADD             R1, R4, #0x78 ; 'x'
MOV             R6, #0
CMP             R0, R1
ADD             R5, R4, #0x74 ; 't'
BNE             loc_266724
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2666A4
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R4,#0x40]
VLDR            S0, [R0,#4]
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x3CC]
VLDR            S3, [R0,#0x30]
LDR             R0, [R4,#0x34]
VDIV.F32        S2, S1, S0
VMUL.F32        S16, S2, S3
BL              sub_5CBCBC
MOV             R5, R0
LDR             R0, [R4,#0x34]
BL              sub_5CBC34
VLDR            S0, [R0]
LDR             R0, [R4,#4]
VMOV.F32        S1, S16
MOV             R1, R5
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_25E68C
LDR             R0, [R4,#0x64]
NOP
BL              sub_2672E8
LDR             R0, [R4,#0x58]
NOP
BL              sub_268060
STRB            R7, [R4,#0x70]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_2666A4
LDR             R0, [R8]; jumptable 002660E4 case 7
VLDR            S1, [R4,#0x9C]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VSUB.F32        S0, S1, S0
VSTR            S0, [R4,#0x9C]
LDR             R0, [R4,#4]
BL              sub_5CBE84
CMP             R0, #0
NOP
BEQ             loc_266790
VLDR            S0, [R4,#0x9C]
VLDR            S1, =0.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_2667B8
LDR             R0, [R4,#0x34]
LDR             R1, [R0,#0x80]
LDR             R0, [R0,#0x84]
CMP             R1, R0
BNE             def_2660E4; jumptable 002660E4 default case
LDR             R0, [R4,#0x58]
BL              sub_5CC054
CMP             R0, #0
NOP
BEQ             def_2660E4; jumptable 002660E4 default case
ADD             SP, SP, #0x28 ; '('
MOV             R0, R4
VPOP            {D8}
POP             {R4-R10,LR}
B               sub_265978
LDR             R0, [R4,#4]; jumptable 002660E4 case 8
BL              sub_5CC0BC
CMP             R0, #0
MOVNE           R0, #9
STRBNE          R5, [R4,#0x4AC]
BNE             loc_2665F4
ADD             SP, SP, #0x28 ; '('
VPOP            {D8}
POP             {R4-R10,PC}
LDRB            R0, [R4,#0xA0]; jumptable 002660E4 case 9
ADD             R5, R4, #0xA0
CMP             R0, #2
BEQ             loc_266814
CMP             R0, #3
BEQ             loc_266858
CMP             R0, #4
BNE             loc_2668C8
B               loc_2668E8
ADD             R0, R5, #0x36C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2660E4; jumptable 002660E4 default case
MOV             R0, #3
STRB            R0, [R5]
LDRB            R0, [R5,#0x40D]
VLDR            S0, =0.0
CMP             R0, #0
LDRNE           R0, [R5,#0x14]
LDREQ           R0, [R5,#0xC]
STR             R0, [R5,#0x3B8]
VSTR            S0, [R5,#0x3B4]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8}
POP             {R4-R10,PC}
ADD             R0, R5, #0x3B4
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_2660E4; jumptable 002660E4 default case
LDRB            R0, [R5,#0x40C]
CMP             R0, #0
BEQ             def_2660E4; jumptable 002660E4 default case
MOV             R0, #4
STRB            R0, [R5]
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x50+var_50]
LDR             R0, [R8]
VLDR            S0, [R5,#0x10]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x50+var_50]
LDR             R0, =0x19DF78
LDR             R2, [R8]
VLDR            S0, [R5,#0x10]
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDRB            R0, [R4,#0xA0]
CMP             R0, #5
BNE             def_2660E4; jumptable 002660E4 default case
LDR             R0, [R4,#4]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8}
POP             {R4-R10,LR}
B               sub_263E40
LDR             R0, [R8]
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x3A0
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2660E4; jumptable 002660E4 default case
ADD             R0, R0, #0x368
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #5
STRBGE          R0, [R5]
BLT             def_2660E4; jumptable 002660E4 default case
B               loc_2668D4

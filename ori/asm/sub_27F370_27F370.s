PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S16, S0
SUB             SP, SP, #0x28
LDRB            R0, [R0,#4]
CMP             R0, #0xC; switch 12 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_27F38C; jumptable 0027F38C default case, cases 0,3
DCD def_27F38C; jump table for switch statement
MOV             R0, R4; jumptable 0027F38C case 1
BL              sub_27FA80
LDR             R7, =off_6CDF98
ADD             R1, SP, #0x50+var_4C
LDR             R0, [R7]
LDR             R0, [R0,#0xC4]
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x50+var_4C]
STR             R2, [SP,#0x50+var_50]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x50+var_48]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x50+var_50]
LDR             R1, [SP,#0x50+var_48]
LDRB            R6, [R0,#0x67]
ADD             R0, SP, #0x50+var_4C
CMP             R1, R0
BNE             loc_27F430
LDR             R0, [SP,#0x50+var_50]
CMP             R0, #0
BEQ             loc_27F430
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x50+var_4C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7]
ADD             R1, SP, #0x50+var_4C
LDR             R0, [R0,#0xC4]
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x50+var_4C]
STR             R2, [SP,#0x50+var_50]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x50+var_48]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x50+var_50]
LDR             R1, [SP,#0x50+var_48]
LDRB            R7, [R0,#0x66]
ADD             R0, SP, #0x50+var_4C
CMP             R1, R0
BNE             loc_27F49C
LDR             R0, [SP,#0x50+var_50]
CMP             R0, #0
BEQ             loc_27F49C
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x50+var_4C]
CMP             R7, #0
STR             R1, [R0,#4]
STR             R0, [R1]
MOVEQ           R0, #1
MOVNE           R0, #0
CMP             R6, #5; switch 5 cases
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_27F4B8; jumptable 0027F4B8 default case
DCD loc_27F4D4; jump table for switch statement
MOV             R5, #0; jumptable 0027F4B8 case 0
LDR             R0, [R4,#0xC]; jumptable 0027F4B8 default case
ADD             SP, SP, #0x28 ; '('
AND             R1, R5, #0xFF
VPOP            {D8-D9}
MOV             R3, #0x100
MOV             R2, #0
POP             {R4-R8,LR}
B               sub_14C430
CMP             R0, #0; jumptable 0027F4B8 case 1
MOVNE           R5, #1
MOVEQ           R5, #5
B               def_27F4B8; jumptable 0027F4B8 default case
CMP             R0, #0; jumptable 0027F4B8 case 2
MOVNE           R5, #2
MOVEQ           R5, #6
B               def_27F4B8; jumptable 0027F4B8 default case
CMP             R0, #0; jumptable 0027F4B8 case 3
MOVNE           R5, #3
MOVEQ           R5, #7
B               def_27F4B8; jumptable 0027F4B8 default case
CMP             R0, #0; jumptable 0027F4B8 case 4
MOVNE           R5, #4
MOVEQ           R5, #8
B               def_27F4B8; jumptable 0027F4B8 default case
LDR             R0, [R4,#0xC]; jumptable 0027F38C case 2
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_27F38C; jumptable 0027F38C default case, cases 0,3
LDR             R0, [R4,#0xC]
MOV             R2, #0
MOV             R1, #0xC
STRB            R2, [R0,#0xF2]
STRB            R1, [R4,#4]
ADD             SP, SP, #0x28 ; '('; jumptable 0027F38C default case, cases 0,3
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R7, =off_6CE970; jumptable 0027F38C case 4
LDR             R8, =off_6CDF98
LDR             R1, =0x19B0B4
LDR             R0, [R7]
LDR             R2, [R8]
LDR             R1, [R1,R0]
LDR             R6, [R2,#0x124]
TST             R1, #1
BEQ             loc_27F5E4
ADD             R1, R4, #0x400
VLDR            S1, =0.0
VLDR            S0, [R1,#0x18]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_27F5E4
LDR             R2, =0x19DEE8
VLDR            S1, =0.0039062
ADD             R0, R0, R2; loc_19DEE8
VLDR            S0, [R0]
MOV             R0, #0xFFFFFF00
VCVT.F32.S32    S0, S0
REV             R0, R0
VMUL.F32        S0, S0, S1
VSTR            S0, [R1,#0x18]
STR             R0, [SP,#0x50+var_50]
MOV             R1, SP
VLDR            S0, =4.0
ADD             R0, R4, #0x34C
BL              sub_4E665C
ADD             R5, R4, #0x400
VLDR            S0, [R6,#0x1C8]
VLDR            S1, [R5,#0x14]
VMLA.F32        S1, S0, S16
VSTR            S1, [R5,#0x14]
VLDR            S2, [R6,#0x1CC]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S2
VSTR            S1, [R5,#0x14]
LDR             R0, [R4,#0xC]
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x50+var_44]
ADD             R0, SP, #0x50+var_4C
VMOV            S0, R2
STM             R0, {R1,R2}
ADD             R1, SP, #0x50+var_40
VLDR            S1, [R5,#0x14]
VMLA.F32        S0, S1, S16
VSTR            S0, [SP,#0x50+var_48]
LDR             R0, [R8]
BL              sub_5CC8EC
VLDR            S0, [SP,#0x50+var_3C]
VLDR            S1, [SP,#0x50+var_48]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_27F778
LDR             R0, =0xFFE683CC
LDR             R12, [R7]
LDR             R1, [R4,#0xC]
LDR             R2, =0x300DB
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [SP,#0x50+var_3C]
STR             R0, [SP,#0x50+var_48]
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x50+var_4C
BLX             R2
LDR             R0, [R7]
LDR             R1, =0x19DEE8
VLDR            S1, =0.0039062
VLDR            S2, =0.0
ADD             R0, R0, R1; loc_19DEE8
VLDR            S0, [R0]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x1C]
VLDR            S1, [R5,#0x18]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
MOVEQ           R0, #5
BEQ             loc_27FA34
VSUB.F32        S0, S0, S1
VLDR            S2, [R6,#0x1B8]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_27F724
LDR             R0, [R8]
MOV             R1, #1
BL              sub_273EFC
MOV             R0, #6
STRB            R0, [R4,#4]
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xE
BL              sub_14C548
LDR             R1, [R4,#0xC]
LDR             R0, [R7]
MOV             R3, #0
ADD             R2, R1, #0x24 ; '$'
STR             R3, [SP,#0x50+var_50]
MOV             R3, #1
MOV             R1, #0x5B ; '['
B               loc_27F768
LDR             R0, [R8]
MOV             R1, #0
BL              sub_273EFC
MOV             R0, #7
STRB            R0, [R4,#4]
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x11
BL              sub_14C548
LDR             R1, [R4,#0xC]
LDR             R0, [R7]
MOV             R3, #0
ADD             R2, R1, #0x24 ; '$'
STR             R3, [SP,#0x50+var_50]
MOV             R3, #1
MOV             R1, #0x5D ; ']'
BL              sub_52AEA8
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x50+var_4C
BLX             R2
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R5, =off_6CE970; jumptable 0027F38C case 5
LDR             R1, =0x19DEE8
LDR             R6, =off_6CDF98
ADD             R2, R4, #0x400
LDR             R0, [R5]
VLDR            S2, =0.0039062
LDR             R3, [R6]
ADD             R1, R1, R0; loc_19DEE8
VLDR            S1, [R2,#0x1C]
VLDR            S0, [R1]
LDR             R1, [R3,#0x124]
VCVT.F32.S32    S4, S0
VLDR            S3, [R1,#0x1BC]
VADD.F32        S3, S1, S3
VMUL.F32        S4, S4, S2
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
BCC             loc_27F7F4
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_27F858
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x50+var_4C
REV             R0, R0
VLDR            S0, =4.0
STR             R0, [SP,#0x50+var_4C]
ADD             R0, R4, #0x34C
BL              sub_4E665C
LDR             R0, [R6]
MOV             R1, #0
BL              sub_273EFC
MOV             R0, #7
STRB            R0, [R4,#4]
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x11
BL              sub_14C548
LDR             R1, [R4,#0xC]
LDR             R0, [R5]
MOV             R3, #0
ADD             R2, R1, #0x24 ; '$'
STR             R3, [SP,#0x50+var_50]
MOV             R3, #1
MOV             R1, #0x5D ; ']'
B               loc_27F768
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #1
BEQ             def_27F38C; jumptable 0027F38C default case, cases 0,3
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x50+var_4C
REV             R0, R0
VLDR            S0, =4.0
STR             R0, [SP,#0x50+var_4C]
ADD             R0, R4, #0x34C
BL              sub_4E665C
LDR             R0, [R6]
MOV             R1, #1
BL              sub_273EFC
MOV             R0, #6
STRB            R0, [R4,#4]
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xE
BL              sub_14C548
LDR             R1, [R4,#0xC]
LDR             R0, [R5]
MOV             R3, #0
ADD             R2, R1, #0x24 ; '$'
STR             R3, [SP,#0x50+var_50]
MOV             R3, #1
MOV             R1, #0x5B ; '['
B               loc_27F768
DCD off_6CDF98
DCD off_6CE970
DCD 0x19B0B4
DCFS 0.0
DCD 0x19DEE8
DCFS 0.0039062
DCFS 4.0
DCD 0x300DB
DCD 0xFFE683CC
LDR             R0, [R4,#0xC]; jumptable 0027F38C case 6
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_27F38C; jumptable 0027F38C default case, cases 0,3
LDR             R0, =off_6CDF98
VLDR            S16, =0.0
ADD             R2, SP, #0x50+var_3C
LDR             R0, [R0]
LDR             R1, [R0,#0x124]
LDR             R0, [R1,#0x1D8]
VLDR            S18, [R1,#0x1DC]
VLDR            S17, [R1,#0x1E0]
STR             R0, [SP,#0x50+var_3C]
VSTR            S16, [SP,#0x50+var_38]
VSTR            S16, [SP,#0x50+var_34]
LDR             R0, [R4,#0xC]
VMOV.F32        S0, S18
MOV             R1, #0
ADD             R0, R0, #0x1DC
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x50+var_48]
VSTR            S0, [SP,#0x50+var_44]
VADD.F32        S2, S17, S0
VSTR            S16, [SP,#0x50+var_40]
LDR             R0, [R4,#0xC]
VMOV.F32        S1, S18
VMOV.F32        S0, S17
ADD             R2, SP, #0x50+var_48
ADD             R0, R0, #0x1DC
MOV             R1, #1
BL              sub_5A28C4
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xC
BL              sub_14C548
MOV             R0, #8
NOP
B               loc_27FA34
LDR             R0, [R4,#0xC]; jumptable 0027F38C case 7
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_27F38C; jumptable 0027F38C default case, cases 0,3
LDR             R0, =off_6CDF98
VLDR            S16, =0.0
MOV             R2, SP
LDR             R0, [R0]
LDR             R1, [R0,#0x124]
LDR             R0, [R1,#0x1D8]
VLDR            S18, [R1,#0x1DC]
VLDR            S17, [R1,#0x1E4]
STR             R0, [SP,#0x50+var_50]
VSTR            S16, [SP,#0x50+var_4C]
VSTR            S16, [SP,#0x50+var_48]
LDR             R0, [R4,#0xC]
VMOV.F32        S0, S18
MOV             R1, #0
ADD             R0, R0, #0x1DC
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x50+var_3C]
VSTR            S0, [SP,#0x50+var_38]
VADD.F32        S2, S17, S0
VSTR            S16, [SP,#0x50+var_34]
LDR             R0, [R4,#0xC]
VMOV.F32        S1, S18
VMOV.F32        S0, S17
ADD             R2, SP, #0x50+var_3C
ADD             R0, R0, #0x1DC
MOV             R1, #1
BL              sub_5A28C4
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xC
BL              sub_14C548
MOV             R0, #8
STRB            R0, [R4,#4]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R4,#0xC]; jumptable 0027F38C case 8
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
MOVEQ           R0, #0xC
BEQ             loc_27FA34
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D9}
POP             {R4-R8,PC}
ADD             SP, SP, #0x28 ; '('; jumptable 0027F38C cases 9-11
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_27FA80

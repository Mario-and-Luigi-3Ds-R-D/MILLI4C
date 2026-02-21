PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R7, R1
ADD             R6, R4, #0x800
LDR             R9, =off_6CE970
LDR             R2, =0xFFE683CC
LDR             R8, =off_6CE098
MOV             R10, #0
VPUSH           {D8-D9}
SUB             SP, SP, #0x20
ADD             R6, R6, #0x368
LDR             R0, [R1]
LDR             R1, [R9]
LDRB            R3, [R0,#0x1E]
SUB             R0, R1, R2
CMP             R3, #0
BEQ             loc_25A34C
CMP             R3, #1
BEQ             loc_25A7F4
CMP             R3, #2
VLDR            S16, =0.5
BEQ             loc_25A53C
CMP             R3, #3
BNE             loc_25A3E8
LDRB            R1, [R4,#0xAF4]
CMP             R1, #0
BEQ             loc_25A3E8
STRB            R10, [R4,#0xAF4]
LDR             R1, [R8]
LDR             R5, [R1,#0x8C]
LDR             R1, [R4,#0xB5C]
VLDR            S1, [R1,#8]
MOV             R1, #0
ADD             R2, R5, R1,LSL#2
VLDR            S0, [R2,#0x210]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_25A32C
ADD             R1, R1, #1
CMP             R1, #4
BCC             loc_25A30C
LDRB            R2, [R4]
CMP             R1, #0
SUBNE           R1, R1, #1
CMP             R2, #4
BEQ             loc_25A3F4
CMP             R1, #3
BCC             loc_25A424; jumptable 0025A3F8 case 0
B               loc_25A42C; jumptable 0025A3F8 case 1
STR             R10, [R4,#0xB68]
LDR             R1, [R4,#0xB50]
LDR             R2, =0x301EF
MOV             R3, #0
LDR             R1, [R1,#4]
BL              sub_503720
LDR             R0, [R7],#4
STR             R7, [SP,#0x50+var_4C]
MOV             R1, SP
STR             R0, [SP,#0x50+var_50]
LDR             R2, [R7,#4]
ADD             R0, SP, #0x50+var_4C
STR             R2, [SP,#0x50+var_48]
STR             R0, [R2]
STR             R0, [R7,#4]
MOV             R0, R4
BL              sub_25882C
LDR             R1, [SP,#0x50+var_48]
ADD             R0, SP, #0x50+var_4C
CMP             R1, R0
BNE             loc_25A3DC
LDR             R0, [SP,#0x50+var_50]
CMP             R0, #0
BEQ             loc_25A3DC
MOV             R5, R0
LDR             R0, [R0]
LDR             R4, [R8]
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
LDR             R0, [R4,#0x4C]
STR             R0, [R5]
STR             R5, [R4,#0x4C]
LDR             R0, [R4,#0x50]
ADD             R0, R0, #1
STR             R0, [R4,#0x50]
LDRD            R0, R1, [SP,#0x50+var_4C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8-D9}
POP             {R4-R10,PC}
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_25A3F8; jumptable 0025A3F8 default case
DCD loc_25A424; jump table for switch statement
MOV             R6, #3; jumptable 0025A3F8 case 2
B               def_25A3F8; jumptable 0025A3F8 default case
MOV             R6, #4; jumptable 0025A3F8 cases 3,4
B               def_25A3F8; jumptable 0025A3F8 default case
MOV             R6, #1; jumptable 0025A3F8 case 0
B               def_25A3F8; jumptable 0025A3F8 default case
MOV             R6, #2; jumptable 0025A3F8 case 1
CMP             R6, #1; jumptable 0025A3F8 default case
LDR             R1, [R4,#0xB50]
LDREQ           R2, =0x301E0
BEQ             loc_25A460
CMP             R6, #2
LDREQ           R2, =0x301E1
BEQ             loc_25A460
CMP             R6, #3
LDREQ           R2, =0x301E2
BEQ             loc_25A460
CMP             R6, #4
LDREQ           R2, =0x301E3
LDR             R1, [R1,#4]
MOV             R3, #0
BL              sub_503720
LDR             R0, [R9]
LDM             R5, {R1,R2}
ADD             R3, R0, #0x100000
ADD             R3, R3, #0xC400
VLDR            S0, [R3,#(loc_10C4EC - 0x10C400)]
ADD             R3, SP, #0x50+var_3C
VMUL.F32        S0, S0, S16
STM             R3, {R1,R2}
MOV             R2, #2
MOV             R1, R6
MOV             R3, #0
VSTR            S0, [SP,#0x50+var_34]
STR             R2, [SP,#0x50+var_4C]
ADD             R2, SP, #0x50+var_3C
STR             R10, [SP,#0x50+var_50]
BL              sub_52C114
LDR             R0, [R7]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
VLDR            S5, [R5,#0x2D0]
VLDR            S2, [R0]
VLDR            S4, [R5,#0x2D4]
VLDR            S1, [R0,#4]
VLDR            S0, [R5,#0x2D8]
VLDR            S3, [R0,#8]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VADD.F32        S0, S3, S0
ADD             R1, SP, #0x50+var_48
MOV             R2, #1
MOV             R0, R1
VSTR            S2, [SP,#0x50+var_48]
VSTR            S1, [SP,#0x50+var_44]
VSTR            S0, [SP,#0x50+var_40]
BL              sub_14C614
LDR             R0, [R9]
MOV             R1, R6
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
VLDR            S0, [R0,#(loc_10C4EC - 0x10C400)]
MOV             R0, R5
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x50+var_40]
BL              sub_5CB114
MOV             R1, R0
LDR             R0, [R8]
ADD             R2, SP, #0x50+var_48
BL              sub_254BEC
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8-D9}
POP             {R4-R10,PC}
LDR             R2, =0x19DEE8
VLDR            S2, =0.0039062
LDR             R5, [R4,#0xB50]
ADD             R1, R1, R2; loc_19DEE8
VLDR            S0, [R1]
VLDR            S1, [R5,#0x18]
VCVT.F32.S32    S0, S0
VMUL.F32        S17, S0, S2
VCMP.F32        S1, S17
VMRS            APSR_nzcv, FPSCR
BEQ             loc_25A57C
LDR             R1, [R5,#4]
LDR             R2, =0x301EE
MOV             R3, #0
BL              sub_503720
VSTR            S17, [R5,#0x18]
LDR             R0, [R8]
VLDR            S17, =0.0
VLDR            S18, =2.0
LDR             R5, [R0,#0x8C]
LDR             R0, [R4,#0xA74]
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x50+var_48]
VMOV            S1, R1
STMEA           SP, {R1,R2}
VSTR            S17, [SP,#0x50+var_4C]
LDR             R0, [R4,#0xB5C]
MOV             R1, SP
MOV             R2, #1
VLDR            S0, [R0,#8]
MOV             R0, R1
VMUL.F32        S0, S0, S18
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S2, [R5,#0x2C4]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x50+var_50]
VLDR            S1, [R5,#0x2C8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R5,#0x2CC]
VLDR            S0, [SP,#0x50+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
BL              sub_14C614
LDR             R0, [R9]
MOV             R2, SP
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
VLDR            S0, [R0,#(loc_10C4EC - 0x10C400)]
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x50+var_48]
LDR             R0, [R4,#0xB68]
ADD             R1, R0, #1
STR             R1, [R6]
LDR             R0, [R8]
MOV             R3, R1
BL              sub_254C1C
LDR             R0, [R4,#0xA74]
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x50+var_48]
STMEA           SP, {R1,R2}
VSTR            S17, [SP,#0x50+var_4C]
LDR             R0, [R4,#0xB5C]
VLDR            S0, [R0,#8]
VMUL.F32        S0, S0, S18
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x50+var_4C]
LDR             R0, [R6]
CMP             R0, #1
BEQ             loc_25A758
CMP             R0, #2
BEQ             loc_25A78C
CMP             R0, #3
BEQ             loc_25A7C0
VMOV            S1, R1
VLDR            S2, [R5,#0x300]
MOV             R4, #4
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x50+var_50]
VLDR            S1, [R5,#0x304]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R5,#0x308]
VLDR            S0, [SP,#0x50+var_48]
B               loc_25A6DC
DCD off_6CE970
DCD 0xFFE683CC
DCD off_6CE098
DCFS 0.5
DCD 0x301EF
DCD 0x301E0
DCD 0x301E1
DCD 0x301E2
DCD 0x301E3
DCD 0x19DEE8
DCFS 0.0039062
DCD 0x301EE
DCFS 0.0
DCFS 2.0
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
MOV             R1, SP
MOV             R2, #1
MOV             R0, R1
BL              sub_14C614
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x100000
ADD             R1, R1, #0xC400
VLDR            S0, [R1,#(loc_10C4EC - 0x10C400)]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x260
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x50+var_48]
BL              sub_10A358
MOVS            R5, R0
NOP
BEQ             loc_25A3E8
LDR             R0, [R8]
ADD             R0, R0, #0x90
LDR             R0, [R0,#0x40]
MOV             R2, R0
MOV             R3, SP
MOV             R1, R4
MOV             R0, R5
BL              sub_2520FC
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8-D9}
POP             {R4-R10,PC}
VMOV            S1, R1
VLDR            S2, [R5,#0x2DC]
MOV             R4, #1
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x50+var_50]
VLDR            S1, [R5,#0x2E0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R5,#0x2E4]
VLDR            S0, [SP,#0x50+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
B               loc_25A6E4
VMOV            S1, R1
VLDR            S2, [R5,#0x2E8]
MOV             R4, #2
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x50+var_50]
VLDR            S1, [R5,#0x2EC]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R5,#0x2F0]
VLDR            S0, [SP,#0x50+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
B               loc_25A6E4
VMOV            S1, R1
VLDR            S2, [R5,#0x2F4]
MOV             R4, #3
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x50+var_50]
VLDR            S1, [R5,#0x2F8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R5,#0x2FC]
VLDR            S0, [SP,#0x50+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
B               loc_25A6E4
LDR             R1, [R4,#0xB50]
LDR             R2, =0x301F0
MOV             R3, #0
LDR             R1, [R1,#4]
BL              sub_503720
LDR             R0, [R8]
ADD             R1, SP, #0x50+var_4C
LDR             R2, [R0,#0x80]!
ADD             R0, R0, #4
STR             R0, [SP,#0x50+var_4C]
STR             R2, [SP,#0x50+var_50]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x50+var_48]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x50+var_50]
BL              sub_256768
MOV             R0, SP
NOP
BL              sub_62938C
MOV             R0, #7
STRB            R0, [R4]
LDR             R0, [R4,#0xA70]
CMP             R0, #0
BEQ             loc_25A860
BL              sub_533330
STR             R10, [R4,#0xA70]
LDR             R0, [R4,#0xB50]
BL              sub_259C00
LDR             R0, [R4,#0xA74]
NOP
BL              sub_24F1C8
STRB            R10, [R4,#0xA95]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8-D9}
POP             {R4-R10,PC}

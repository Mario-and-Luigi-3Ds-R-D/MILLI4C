PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R6, R1
MOV             R10, R2
VPUSH           {D8}
SUB             SP, SP, #0x2C
ADD             R0, SP, #0x34+arg_0
ADD             R11, SP, #0x10
LDM             R0, {R1,R7,R8}
ADD             R0, SP, #0x34+arg_C
LDM             R0, {R2,R12}
ADD             R0, SP, #0x34+arg_14
LDM             R0, {R5,R9}
MOV             R0, #0
STR             R3, [SP,#0x34+var_34]
STR             R0, [SP,#0x34+var_14]
STR             R0, [SP,#0x34+var_10]
STR             R0, [SP,#0x34+var_C]
STM             R11, {R2,R12}
ADD             R11, SP, #4
MOV             R3, R10
STM             R11, {R1,R7,R8}
ADD             R11, SP, #0x18
MOV             R2, R6
ADD             R1, SP, #0x34+var_14
MOV             R0, R4
STM             R11, {R5,R9}
BL              sub_1F0AE8
MOV             R0, #0x14
MOV             R5, #0
STRB            R0, [R4,#0x14C]
LDRB            R2, [R4,#0x14C]
LDR             R0, [R4,#0x9C]
MOV             R1, R5
BL              sub_321610
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_1C9860
LDR             R9, =off_67EE54
ADD             R1, R4, #0x5000
MOV             R0, #0
STR             R1, [SP,#0x34+var_34]
CMP             R6, #1
STRB            R0, [R1,#0xB0]
BEQ             loc_1C9990
LDR             R0, [R8]
LDR             R5, [SP,#0x34+var_10]
LDR             R6, [SP,#0x34+var_14]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #2
BNE             loc_1C99D8
LDR             R0, [R5,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #1
CMPNE           R0, #3
CMPNE           R0, #5
BEQ             loc_1C99D8
LDR             R3, [SP,#0x34+var_10]
MOV             R2, R7
ADD             R1, SP, #0x34+var_14
MOV             R0, R4
STR             R8, [SP,#0x34+var_34]
BL              sub_1F0DC0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #1
BNE             loc_1C9968
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x10000
BEQ             loc_1C9968
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x86C]
AND             R1, R1, #0xF
CMP             R1, #7
BNE             loc_1C9990
LDR             R1, =0x468
LDRH            R1, [R1,R0]
CMP             R1, #5
BCS             loc_1C9990
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDR             R0, [R4,#0xC4]
MOV             R1, #0xFFFFFFFF
LDR             R0, [R0,#4]
BL              sub_537BE0
LDRD            R0, R1, [R9,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_1C9990
LDR             R0, [R5,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #6
BEQ             loc_1C99B8
LDR             R0, [R4]
ADD             R9, R9, #0x38 ; '8'
MOV             R3, #0
LDM             R9, {R1,R2}
LDR             R12, [R0,#0x28]
MOV             R0, R4
BLX             R12
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R11,PC}
LDRB            R0, [R5,#0xDE]
BIC             R0, R0, #8
STRB            R0, [R5,#0xDE]
LDRD            R0, R1, [R9,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R5,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #0x10; switch 16 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C99E4; jumptable 001C99E4 default case, cases 7-14
DCD loc_1C9C18; jump table for switch statement
LDR             R0, =0x468; jumptable 001C99E4 case 15
MOV             R10, #0
MOV             R11, R10
LDRH            R0, [R0,R5]
CMP             R0, #0x10
CMPNE           R0, #0x23 ; '#'
BNE             loc_1C9A54
LDR             R0, [SP,#0x34+var_34]
MOV             R1, #1
STRB            R1, [R0,#0xB0]
LDR             R0, [SP,#0x34+var_10]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
BEQ             loc_1C9A7C
LDR             R0, [SP,#0x34+var_C]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1C9BE8
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
LDR             R8, [R0,#4]
LDR             R0, [R0,#8]
TST             R1, #0x10000
BEQ             loc_1C9B2C
LDR             R2, [R8,#0x86C]
MOV             R1, #0xF
BICS            R2, R1, R2
BEQ             loc_1C9AE4
LDRB            R2, [R8,#0xDE]
BIC             R2, R2, #8
STRB            R2, [R8,#0xDE]
LDR             R2, [R0,#0x86C]
BICS            R1, R1, R2
BEQ             loc_1C9ACC
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
ADD             R1, R9, #0x40 ; '@'
ADD             R3, R4, #0x4C ; 'L'
LDM             R1, {R1,R2}
MOV             R10, #1
STM             R3, {R1,R2}
B               loc_1C9B2C
LDR             R2, [R0,#0x86C]
BICS            R1, R1, R2
BNE             loc_1C9AC0
LDR             R1, =0x468
LDRH            R1, [R1,R8]
CMP             R1, #0x10
BNE             loc_1C9B2C
LDRB            R1, [R8,#0xDE]
ADD             R3, R4, #0x4C ; 'L'
MOV             R10, #1
BIC             R1, R1, #8
STRB            R1, [R8,#0xDE]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
ADD             R1, R9, #0x40 ; '@'
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
LDRB            R1, [R0,#0xDE]
TST             R1, #1
BEQ             loc_1C9B50
LDR             R2, =0x468
LDRH            R2, [R2,R0]
SUB             R2, R2, #8
CMP             R2, #8
BICCC           R1, R1, #8
STRBCC          R1, [R0,#0xDE]
LDR             R0, [R4]
LDR             R1, [SP,#0x34+var_10]
MOV             R2, R7
LDR             R3, [R0,#0x3C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BEQ             loc_1C9B98
LDR             R0, [SP,#0x34+var_14]
LDRB            R0, [R0,#0xF]
CMP             R0, #3
BNE             loc_1C9B90
LDR             R0, [SP,#0x34+var_10]
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #4
STR             R1, [R0,#0x4EC]
MOV             R11, #1
B               loc_1C9BC0
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_1C9BC0
LDRD            R0, R1, [R9,#(off_67EE9C - 0x67EE54)]
MOV             R11, #1
STRD            R0, R1, [R4,#0x4C]
CMP             R10, #0
BEQ             loc_1C9BE8
LDR             R0, [R8,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #6
BEQ             loc_1C9BE8
LDR             R0, [R4,#0xC4]
MOV             R1, #0xFFFFFFFF
LDR             R0, [R0,#4]
BL              sub_537BE0
ORRS            R0, R10, R11
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
MOV             R0, #0
STR             R0, [R4,#0x154]
LDR             R0, [R4]
ADD             R9, R9, #0x38 ; '8'
MOV             R3, #0
LDM             R9, {R1,R2}
LDR             R12, [R0,#0x28]
MOV             R0, R4
BLX             R12
B               def_1C99E4; jumptable 001C99E4 default case, cases 7-14
NOP; jumptable 001C99E4 case 0
BL              sub_5A977C
VLDR            S2, [R5,#0x10C]
VLDR            S1, [R7,#0x10C]
MOV             R2, R7
VADD.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #1
STRBCC          R0, [R6,#0xC]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDRD            R0, R1, [R9,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
LDR             R0, [R4]
MOV             R1, R5
LDR             R3, [R0,#0x3C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BNE             loc_1C9CA8
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
LDRB            R0, [R6,#0xF]
CMP             R0, #0
CMPNE           R0, #4
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
LDR             R1, =sub_1C9330
LDR             R0, [R4,#0x4C]
CMP             R0, R1
LDREQ           R0, [R4,#0x50]
CMPEQ           R0, #0
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
B               loc_1CA0BC
NOP; jumptable 001C99E4 case 1
BL              sub_5A977C
VLDR            S2, [R5,#0x10C]
VLDR            S1, [R7,#0x10C]
MOV             R2, R7
VADD.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #1
STRBCC          R0, [R6,#0xC]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDRD            R0, R1, [R9,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
LDR             R0, [R4]
MOV             R1, R5
LDR             R3, [R0,#0x3C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BNE             loc_1C9D64
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
LDRB            R0, [R6,#0xF]
CMP             R0, #0
CMPNE           R0, #4
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
LDR             R1, =sub_1C9330
LDR             R0, [R4,#0x4C]
CMP             R0, R1
LDREQ           R0, [R4,#0x50]
CMPEQ           R0, #0
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
B               loc_1CA0BC
LDR             R0, [R5,#0x658]; jumptable 001C99E4 case 2
MOV             R2, R7
TST             R0, #0x10
MOVNE           R0, #1
STRBNE          R0, [R6,#0xC]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDRD            R0, R1, [R9,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
LDR             R0, [R4]
MOV             R1, R5
LDR             R3, [R0,#0x3C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BNE             loc_1C9E0C
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
LDRB            R0, [R6,#0xF]
CMP             R0, #0
CMPNE           R0, #4
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
LDR             R1, =sub_1C9330
LDR             R0, [R4,#0x4C]
CMP             R0, R1
LDREQ           R0, [R4,#0x50]
CMPEQ           R0, #0
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
B               loc_1CA0BC
LDR             R0, [R4,#0xC4]; jumptable 001C99E4 case 3
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x68 ; 'h'
LDRH            R0, [R0]
CMP             R0, #0x1E
BEQ             loc_1C9E6C
CMP             R0, #0x1F
BEQ             loc_1C9E88
CMP             R0, #0x21 ; '!'
BNE             def_1C9EAC; jumptable 001C9EAC default case
B               loc_1CA02C
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #2
BNE             def_1C9EAC; jumptable 001C9EAC default case
B               loc_1CA048
NOP
BL              sub_5ACD00
VMOV.F32        S16, S0
NOP
BL              sub_5A977C
LDR             R0, [R5,#0x7FC]
LDRB            R0, [R0,#0x6C]
AND             R0, R0, #7
CMP             R0, #8; switch 8 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C9EAC; jumptable 001C9EAC default case
DCD loc_1C9ED4; jump table for switch statement
VLDR            S1, [R5,#0x110]; jumptable 001C9EAC case 0
VLDR            S0, [R7,#0x110]
VSUB.F32        S1, S1, S16
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             def_1C9EAC; jumptable 001C9EAC default case
MOV             R0, #1
STRB            R0, [R6,#0xC]
B               def_1C9EAC; jumptable 001C9EAC default case
VLDR            S1, [R5,#0x108]; jumptable 001C9EAC case 1
VLDR            S0, =0.75
VLDR            S2, [R7,#0x108]
VMLA.F32        S1, S16, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BCS             def_1C9EAC; jumptable 001C9EAC default case
VLDR            S1, [R5,#0x110]
VLDR            S2, [R7,#0x110]
VMLS.F32        S1, S16, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLE             def_1C9EAC; jumptable 001C9EAC default case
B               loc_1C9EEC
VLDR            S2, [R5,#0x108]; jumptable 001C9EAC case 2
VLDR            S1, [R7,#0x108]
VSUB.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_1C9EEC
B               def_1C9EAC; jumptable 001C9EAC default case
VLDR            S2, [R5,#0x108]; jumptable 001C9EAC case 3
VLDR            S1, =0.75
VLDR            S3, [R7,#0x108]
VMLS.F32        S2, S0, S1
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BHI             def_1C9EAC; jumptable 001C9EAC default case
VLDR            S2, [R5,#0x110]
VLDR            S3, [R7,#0x110]
VMLS.F32        S2, S0, S1
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BHI             def_1C9EAC; jumptable 001C9EAC default case
B               loc_1C9EEC
VLDR            S2, [R5,#0x110]; jumptable 001C9EAC case 4
VLDR            S1, [R7,#0x110]
VSUB.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_1C9EEC
B               def_1C9EAC; jumptable 001C9EAC default case
VLDR            S2, [R5,#0x108]; jumptable 001C9EAC case 5
VLDR            S1, =0.75
VLDR            S3, [R7,#0x108]
VMLA.F32        S2, S0, S1
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BLT             def_1C9EAC; jumptable 001C9EAC default case
VLDR            S2, [R5,#0x110]
VLDR            S3, [R7,#0x110]
VMLS.F32        S2, S0, S1
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BHI             def_1C9EAC; jumptable 001C9EAC default case
B               loc_1C9EEC
VLDR            S2, [R5,#0x108]; jumptable 001C9EAC case 6
VLDR            S1, [R7,#0x108]
VADD.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_1C9EEC
B               def_1C9EAC; jumptable 001C9EAC default case
VLDR            S1, [R5,#0x108]; jumptable 001C9EAC case 7
VLDR            S0, =0.75
VLDR            S2, [R7,#0x108]
VMLS.F32        S1, S16, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLE             def_1C9EAC; jumptable 001C9EAC default case
VLDR            S1, [R5,#0x110]
VLDR            S2, [R7,#0x110]
VMLS.F32        S1, S16, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLE             def_1C9EAC; jumptable 001C9EAC default case
B               loc_1C9EEC
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #2
MOVEQ           R0, #0
BEQ             loc_1C9EF0
MOV             R0, #1
STRB            R0, [R6,#0xC]
LDR             R0, [R4,#0xC4]; jumptable 001C9EAC default case
MOV             R2, R7
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDR             R0, [R4]
MOV             R1, R5
LDR             R3, [R0,#0x3C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BNE             loc_1CA0B4
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
LDRD            R0, R1, [R9,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
LDR             R0, [R4,#0xC4]
MOV             R1, #0xFFFFFFFF
LDR             R0, [R0,#4]
BL              sub_537BE0
NOP
NOP
B               def_1C99E4; jumptable 001C99E4 default case, cases 7-14
NOP; jumptable 001C99E4 case 4
BL              sub_5ACD00
VLDR            S2, [R5,#0x10C]
VLDR            S1, [R7,#0x10C]
MOV             R2, R7
VADD.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #1
STRBGE          R0, [R6,#0xC]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDRD            R0, R1, [R9,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
LDR             R0, [R4]
MOV             R1, R5
LDR             R3, [R0,#0x3C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BNE             loc_1CA168
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
LDRB            R0, [R6,#0xF]
CMP             R0, #0
CMPNE           R0, #4
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
LDR             R1, =sub_1C9330
LDR             R0, [R4,#0x4C]
CMP             R0, R1
LDREQ           R0, [R4,#0x50]
CMPEQ           R0, #0
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
B               loc_1CA0BC
LDR             R0, =off_6D1648; jumptable 001C99E4 case 5
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R8, [R0,#4]
LDR             R0, [R8,#0x880]
LDRD            R10, R11, [R8,#4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
BEQ             loc_1CA228
BL              sub_5A977C
VLDR            S2, [R5,#0x10C]
VLDR            S1, [R7,#0x10C]
VADD.F32        S0, S2, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1CA1E4
MOV             R0, #1
STRB            R0, [R6,#0xC]
LDRB            R0, [R10,#0xDE]
BIC             R0, R0, #8
STRB            R0, [R10,#0xDE]
LDRB            R0, [R11,#0x24+arg_96]
BIC             R0, R0, #8
STRB            R0, [R11,#0x24+arg_96]
LDRD            R0, R1, [R9,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
LDRB            R0, [R8,#0x88B]
TST             R0, #8
BNE             loc_1CA26C
B               loc_1CA24C
DCD off_67EE54
DCD 0x468
DCD sub_1C9330
DCFS 0.75
DCD off_6D1648
NOP
BL              sub_5ACD00
VLDR            S2, [R5,#0x10C]
VLDR            S1, [R7,#0x10C]
VADD.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1CA1E4
B               loc_1CA1DC
LDR             R0, [R4]
MOV             R2, R7
MOV             R1, R5
LDR             R3, [R0,#0x3C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BNE             loc_1CA280
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
LDRB            R0, [R6,#0xF]
CMP             R0, #0
CMPNE           R0, #4
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
LDR             R1, =sub_1C9330
LDR             R0, [R4,#0x4C]
CMP             R0, R1
LDREQ           R0, [R4,#0x50]
CMPEQ           R0, #0
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
B               loc_1CA0BC
LDRB            R0, [R5,#0xDE]; jumptable 001C99E4 case 6
MOV             R2, R7
BIC             R0, R0, #8
STRB            R0, [R5,#0xDE]
LDRD            R0, R1, [R9,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
LDR             R0, [R4]
MOV             R1, R5
LDR             R3, [R0,#0x3C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BNE             def_1C99E4; jumptable 001C99E4 default case, cases 7-14
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
CMP             R0, #0
LDRDNE          R0, R1, [R9,#(off_67EE9C - 0x67EE54)]
STRDNE          R0, R1, [R4,#0x4C]
LDRB            R0, [R6,#0xF]; jumptable 001C99E4 default case, cases 7-14
CMP             R0, #1
CMPNE           R0, #2
BEQ             loc_1C995C
CMP             R0, #3
BEQ             loc_1C995C
VLDR            S1, [R7,#0x108]
VLDR            S2, [R5,#0x108]
VLDR            S0, =0.5
ADD             R1, R5, #0x400
VSUB.F32        S1, S1, S2
ADD             R2, R7, #0x400
VLDR            S4, =0.0
ADD             R0, SP, #0x34+var_30
MOV             R3, R5
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x34+var_30]
VLDR            S1, [R1,#0x234]
VLDR            S5, [R2,#0x234]
VLDR            S2, [R5,#0x10C]
VMUL.F32        S3, S1, S0
VLDR            S6, [R7,#0x10C]
VMLA.F32        S2, S1, S0
LDR             R2, =0x171
MOV             R1, #0
VMLA.F32        S3, S5, S0
VADD.F32        S0, S3, S6
VSUB.F32        S0, S0, S2
VSTR            S0, [SP,#0x34+var_2C]
VSTR            S4, [SP,#0x34+var_28]
STR             R0, [SP,#0x34+var_34]
LDR             R0, [R4,#0xA0]
BL              sub_2D3F94
STR             R0, [R4,#0x160]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R11,PC}

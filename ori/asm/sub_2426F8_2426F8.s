PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R5, #0
LDR             R0, =byte_68DBBA
VPUSH           {D8}
SUB             SP, SP, #0xC
LDRB            R0, [R0]
CMP             R0, #0
BLS             loc_242FB4
LDR             R9, =0x19C98
LDR             R11, =byte_68DBBA
LDR             R8, =unk_68C17A
MOV             R10, #0
LDR             R0, [R4,#8]
RSB             R1, R5, R5,LSL#4
ADD             R2, R1, R5,LSL#5
RSB             R3, R5, R5,LSL#4
LDRSH           R1, [R0]
LDR             R0, [R4,#4]
ADD             R2, R9, R2,LSL#2
CMP             R1, #4
ADD             R6, R0, R2
ADDHI           R0, R0, #0x2700
ADDHI           R0, R0, #0x72 ; 'r'
ADD             R7, R8, R3,LSL#1
STRBHI          R10, [R0]
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x21; switch 33 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
DCD loc_2427F8; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 0024276C case 0
ADD             R0, R0, #0x2700
LDRB            R0, [R0,#0x72]
CMP             R0, #0
BNE             def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R1, =0x2018
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#8]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#1
VLDR            S1, =0.5
MOV             R0, R0,LSL#3
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_242A10
VLDR            S1, =1.0
VADD.F32        S0, S0, S1
B               loc_242A10
LDR             R0, [R4,#4]; jumptable 0024276C cases 1,4
ADD             R0, R0, #0x2700
LDRB            R0, [R0,#0x72]
CMP             R0, #0
BNE             def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R0, [R4,#8]
LDRH            R0, [R0,#2]
CMP             R0, #3
BEQ             loc_242924
LDR             R1, =0x202C
MOV             R0, R6
BL              sub_543494
LDRSH           R0, [R7,#0x14]
CMN             R0, #1
BEQ             loc_24297C
LDRSH           R7, [R7,#0x12]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#3
VLDR            S0, =2.0
MOV             R0, R0,LSR#16
ADD             R0, R0, #1
MOV             R2, #0
SXTH            R3, R0
LDR             R0, [R6]
MOV             R1, R7
LDR             R12, [R0,#0x3C]
MOV             R0, R6
BLX             R12
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_242A10
B               loc_24286C
LDR             R0, [R6,#0xA4]
LDRH            R2, [R6,#0xB8]
LDRB            R1, [R0,#0x6C]
SUB             R2, R1, R2
UXTH            R2, R2
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#0x10]
LDR             R0, [R0,#4]
BL              sub_136824
LDR             R1, [R6,#0xA4]
STR             R0, [SP,#0x38+var_34]
MOV             R0, R6
LDRH            R7, [R1,#0x16]
LDR             R1, =0x202C
BL              sub_543494
LDR             R0, [R6]
SXTH            R3, R7
LDMFD           SP, {R1,R2}
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R0, R6
B               loc_2429A0
LDRSH           R1, [R7,#0x18]
CMN             R1, #1
BEQ             loc_2429A8
LDR             R0, [R6]
VLDR            S0, =2.0
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x3C]
B               loc_242BB0
BLX             R12
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
RSB             R0, R5, R5,LSL#4
ADD             R0, R8, R0,LSL#1
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
BNE             def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BNE             loc_24286C
ADD             R0, R6, #0x10
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
NOP
NOP
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R0, [R4,#4]; jumptable 0024276C case 2
ADD             R0, R0, #0x2700
LDRB            R0, [R0,#0x72]
CMP             R0, #0
BNE             def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R0, [R4,#8]
LDRH            R0, [R0,#2]
CMP             R0, #1
BEQ             loc_242A9C
MOV             R1, #0x2080
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
RSB             R0, R5, R5,LSL#4
ADD             R0, R8, R0,LSL#1
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
BEQ             loc_242B20
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R0, [R6,#0xA4]
LDRH            R2, [R6,#0xB8]
LDRB            R1, [R0,#0x6C]
SUB             R2, R1, R2
UXTH            R2, R2
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0,#0x10]
LDR             R0, [R0,#4]
BL              sub_136824
MOV             R1, R0
LDR             R0, [R6,#0xA4]
STR             R1, [SP,#0x38+var_34]
MOV             R1, #0x2080
LDRH            R7, [R0,#0x16]
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
SXTH            R3, R7
LDMFD           SP, {R1,R2}
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R0, R6
B               loc_2429A0
DCD byte_68DBBA
DCD 0x19C98
DCD unk_68C17A
DCD 0x2018
DCFS 2.0
DCD dword_6D1F40
DCFS 0.5
DCFS 1.0
DCD 0x202C
DCFS 256.0
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_242A10
B               loc_24286C
LDR             R0, =dword_6D1F40; jumptable 0024276C case 3
BL              sub_546DB0
MOV             R0, R0,LSL#1
LDR             R2, [R4,#8]
MOV             R1, R0,LSR#16
MOV             R0, #0x368
ADD             R0, R0, R5,LSL#1
STRH            R1, [R2,R0]
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDRH            R0, [R7,#0x1C]; jumptable 0024276C case 17
LDRSH           R7, [R7,#8]
CMP             R0, #0
BEQ             def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R1, =0x2018
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
VLDR            S0, =2.0
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, R7
MOV             R0, R6
B               loc_2429A0
LDR             R1, =0x20AA; jumptable 0024276C case 18
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
MOV             R3, #1
LDR             R12, [R0,#0x3C]
MOV             R2, #0
MOV             R0, R6
BLX             R12
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R1, =0x20B4; jumptable 0024276C case 19
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
RSB             R0, R5, R5,LSL#4
ADD             R0, R8, R0,LSL#1
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
BNE             def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_242A10
B               loc_24286C
LDR             R1, =0x20BE; jumptable 0024276C case 20
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
RSB             R0, R5, R5,LSL#4
ADD             R0, R8, R0,LSL#1
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
BNE             def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_242A10
B               loc_24286C
LDR             R0, [R6,#0xA4]; jumptable 0024276C case 21
BL              sub_592E84
LDR             R1, =0x20C8
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R0, =dword_6D1F40; jumptable 0024276C case 23
VLDR            S16, =6.0
BL              sub_546DB0
MOV             R0, R0,LSL#3
MOV             R2, #0x368
MOV             R0, R0,LSR#16
VMOV            S0, R0
LDR             R1, [R4,#8]
ADD             R2, R2, R5,LSL#1
VCVT.F32.U32    S0, S0
VADD.F32        S0, S16, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
B               loc_242D94
MOV             R1, #0x2080; jumptable 0024276C case 24
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R0, =dword_6D1F40; jumptable 0024276C case 25
BL              sub_546DB0
LDR             R1, [R4,#8]
MOV             R0, R0,LSL#1
MOV             R2, #0x368
MOV             R0, R0,LSR#16
ADD             R2, R2, R5,LSL#1
STRH            R0, [R1,R2]
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R0, =dword_6D1F40; jumptable 0024276C case 26
BL              sub_546DB0
LDR             R1, [R4,#8]
ADD             R0, R0, R0,LSL#1
MOV             R2, #0x368
ADD             R2, R2, R5,LSL#1
MOV             R0, R0,LSR#16
STRH            R0, [R1,R2]
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R1, =0x20E6; jumptable 0024276C case 27
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R0, [R4,#4]; jumptable 0024276C case 28
VLDR            S1, =0.0
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGE          R0, S0
BGE             loc_242E1C
VMOV.F32        S2, S0
VNEG.F32        S2, S2
VMOV            R0, S2
LDR             R1, =0x41D00000
CMP             R0, R1
BGE             loc_242E58
ADD             R0, R4, #0x800
VLDR            S0, =1.3
VSTR            S0, [R0,#0x270]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R1, [R4,#8]
ADD             R0, R0, R0,LSL#2
MOV             R2, #0x368
ADD             R2, R2, R5,LSL#1
MOV             R0, R0,LSR#16
STRH            R0, [R1,R2]
B               def_24276C; jumptable 0024276C default case, cases 5-16,22,31
VCMPE.F32       S1, S0
LDR             R1, =0x42200000
VMRS            APSR_nzcv, FPSCR
VNEGHI.F32      S0, S0
VMOV            R0, S0
B               loc_242E28
LDR             R1, =0x2041; jumptable 0024276C case 29
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x1A]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
RSB             R0, R5, R5,LSL#4
ADD             R0, R8, R0,LSL#1
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
BNE             def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#3
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_242A10
B               loc_24286C
LDR             R1, =0x2056; jumptable 0024276C case 30
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x1A]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
RSB             R0, R5, R5,LSL#4
ADD             R0, R8, R0,LSL#1
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
BNE             def_24276C; jumptable 0024276C default case, cases 5-16,22,31
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#3
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_242A10
B               loc_24286C
LDR             R1, =0x2041; jumptable 0024276C case 32
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x1A]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
RSB             R0, R5, R5,LSL#4
ADD             R0, R8, R0,LSL#1
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
BEQ             loc_242FC0
LDRB            R0, [R11]; jumptable 0024276C default case, cases 5-16,22,31
ADD             R1, R5, #1
UXTH            R5, R1
CMP             R5, R0
BCC             loc_24272C
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#3
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_242A10
B               loc_24286C

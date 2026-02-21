PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #8
LDR             R0, [R0,#8]
LDRSH           R0, [R0]
CMP             R0, #0x1C; switch 28 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_241ECC; jumptable 00241ECC default case, cases 3-16,22,25
DCD loc_241F44; jump table for switch statement
LDR             R5, =byte_68DBBA; jumptable 00241ECC case 0
LDRB            R0, [R5]
CMP             R0, #0
BEQ             loc_241FBC
AND             R0, R0, #1
CMP             R0, #1
MOV             R1, #0
BNE             loc_241F74
LDR             R3, [R4,#8]
MOV             R2, #0
MOV             R1, #1
STRB            R2, [R3,#0x4D6]
LDRB            R2, [R5]
CMP             R0, R2
MOVLT           R2, #0
BGE             loc_241FBC
LDR             R3, [R4,#8]
ADD             R12, R1, #0x400
ADD             R12, R12, #0xD6
ADD             R1, R1, #1
STRB            R2, [R3,R12]
LDR             R12, [R4,#8]
ADD             R3, R1, #0x400
ADD             R3, R3, #0xD6
ADD             R0, R0, #2
STRB            R2, [R12,R3]
LDRB            R3, [R5]
ADD             R1, R1, #1
CMP             R0, R3
BLT             loc_241F84
LDR             R1, [R4,#8]
LDRB            R0, [R5]
ADD             R1, R1, #0x400
SUB             R0, R0, #1
STRH            R0, [R1,#0xD2]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R1, [R4,#8]
MOV             R0, #9
VLDR            S16, =10.0
ADD             R1, R1, #0x400
VLDR            S17, =1.0
STRH            R0, [R1,#0xD4]
LDR             R0, [R4,#8]
MOV             R6, #0
LDRSH           R1, [R0,#2]
CMP             R1, #0x1C
BEQ             loc_242020
CMP             R1, #0x11
CMPNE           R1, #0x12
BEQ             loc_242060
CMP             R1, #0x13
CMPNE           R1, #0x14
BEQ             loc_242060
B               loc_242104; jumptable 00241ECC case 1
ADD             R1, R4, #0xC
STR             R1, [SP,#0x28+var_28]
VLDR            S1, =0.8
VLDR            S0, [R0,#0x364]
LDR             R1, [R4,#4]
ADD             R12, R0, #0x10
VMUL.F32        S1, S0, S1
VLDR            S0, [R0,#0x360]
ADD             R2, R1, #0x108
LDRB            R3, [R5]
LDR             R1, =unk_68C17A
MOV             R0, R12
BL              sub_49FF54
NOP
NOP
B               loc_242104; jumptable 00241ECC case 1
ADD             R1, R4, #0xC
STR             R1, [SP,#0x28+var_28]
LDR             R1, [R4,#4]
ADD             R12, R0, #0x10
ADD             R0, R0, #0x360
ADD             R2, R1, #0x108
VLDM            R0, {S0-S1}
MOV             R0, R12
LDRB            R3, [R5]
LDR             R1, =unk_68C17A
BL              sub_49FF54
LDR             R0, [R4,#8]
LDRSH           R1, [R0,#2]
CMP             R1, #0x11
BEQ             loc_2420A8
CMP             R1, #0x12
BEQ             loc_2420C8
B               loc_242104; jumptable 00241ECC case 1
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2CC
MOV             R2, #0
MOV             R1, #0xA
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R6, [R4,#0xAD0]
B               loc_242104; jumptable 00241ECC case 1
ADD             R5, R4, #0x800
ADD             R5, R5, #0x2CC
ADD             R0, R0, #6
BL              sub_45AAB8
VSUB.F32        S0, S17, S0
MOV             R0, #0
STRH            R0, [R5]
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
MOVLT           R0, #1
STRH            R0, [R5,#2]
STRB            R6, [R5,#4]
LDR             R0, [R4,#8]; jumptable 00241ECC case 1
LDRSH           R0, [R0,#2]
CMP             R0, #0x17
CMPNE           R0, #3
CMPNE           R0, #4
BNE             loc_242150
LDRSH           R0, [R4,#0x40]
LDRSH           R1, [R4,#0x42]
CMP             R0, R1
BLT             loc_242140
MOV             R3, #0
MOV             R1, #0xC
STRH            R3, [R4,#0x40]
STRH            R1, [R4,#0x42]
STRB            R3, [R4,#0x44]
LDR             R0, [R4,#8]
ADD             R1, R4, #0xC
ADD             R0, R0, #0x10
BL              sub_4A03E0
MOV             R0, #0
STRB            R0, [R4,#0x5D]
B               def_241ECC; jumptable 00241ECC default case, cases 3-16,22,25
MOV             R0, #1; jumptable 00241ECC case 2
B               loc_242154
LDR             R0, [R4,#8]; jumptable 00241ECC cases 17,18
VLDR            S0, =1.0
VSTR            S0, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S0, [R0,#0x364]
B               def_241ECC; jumptable 00241ECC default case, cases 3-16,22,25
LDR             R0, [R4,#8]; jumptable 00241ECC case 19
VLDR            S0, =1.5
VLDR            S1, =0.4
VSTR            S0, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S1, [R0,#0x364]
B               def_241ECC; jumptable 00241ECC default case, cases 3-16,22,25
VLDR            S0, =255.0; jumptable 00241ECC case 20
ADD             R0, R4, #0x800
VSTR            S0, [R0,#0x2D4]
B               def_241ECC; jumptable 00241ECC default case, cases 3-16,22,25
LDR             R0, [R4,#8]; jumptable 00241ECC case 21
VLDR            S2, =1.5
VLDR            S1, =1.0
VLDR            S0, =0.0
VSTR            S2, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S1, [R0,#0x364]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x58]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x5C]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x60]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x64]
B               def_241ECC; jumptable 00241ECC default case, cases 3-16,22,25
LDR             R0, [R4,#8]; jumptable 00241ECC case 23
VLDR            S0, =1.0
ADD             R1, R4, #0x26 ; '&'
VSTR            S0, [R0,#0x364]
STR             R1, [SP,#0x28+var_28]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
VMOV.F32        S1, S0
ADD             R2, R1, #0x108
LDR             R1, =byte_68DBBA
ADD             R0, R0, #0x10
LDRB            R3, [R1]
LDR             R1, =unk_68C17A
BL              sub_49FF54
NOP
NOP
B               def_241ECC; jumptable 00241ECC default case, cases 3-16,22,25
ADD             R0, R4, #0xC; jumptable 00241ECC case 24
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#8]
LDR             R1, [R4,#4]
ADD             R2, R0, #0x360
ADD             R0, R0, #0x10
VLDM            R2, {S0-S1}
ADD             R2, R1, #0x108
LDR             R1, =byte_68DBBA
LDRB            R3, [R1]
LDR             R1, =unk_68C17A
BL              sub_49FF54
LDR             R0, [R4,#8]
ADD             R5, R4, #0x800
ADD             R5, R5, #0x2CC
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =1.0
VLDR            S2, =10.0
MOV             R0, #0
VSUB.F32        S0, S1, S0
STRH            R0, [R5]
VMUL.F32        S0, S0, S2
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
MOVLT           R0, #1
STRH            R0, [R5,#2]
MOV             R0, #0
STRB            R0, [R5,#4]
B               def_241ECC; jumptable 00241ECC default case, cases 3-16,22,25
DCD byte_68DBBA
DCD dword_6D1F40
DCFS 10.0
DCFS 1.0
DCFS 0.8
DCD unk_68C17A
DCFS 1.5
DCFS 0.4
DCFS 255.0
DCFS 0.0
LDR             R0, [R4,#8]; jumptable 00241ECC case 26
VLDR            S0, =1.0
MOV             R1, #0
VSTR            S0, [R0,#0x364]
LDR             R0, [R4,#8]
VSTR            S0, [R0,#0x360]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x68 ; 'h'
STRB            R1, [R0]
B               def_241ECC; jumptable 00241ECC default case, cases 3-16,22,25
LDR             R0, [R4,#4]; jumptable 00241ECC case 27
MOV             R1, #1
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x68 ; 'h'
STRB            R1, [R0]
LDR             R1, [R4,#8]; jumptable 00241ECC default case, cases 3-16,22,25
LDRB            R0, [R1,#4]
CMP             R0, #0
BEQ             loc_2423BC
LDRSH           R0, [R1]
CMP             R0, #0
BEQ             loc_2423C8
CMP             R0, #0x11
CMPNE           R0, #0x18
CMPNE           R0, #0x1A
BNE             loc_2423BC
LDR             R1, [R4,#4]
LDR             R0, =0x2770
LDR             R12, =byte_68DBBA
LDR             R0, [R0,R1]
TST             R0, #0xF
ADD             R0, R1, #0x23400
ADD             R0, R0, #0x108
ADD             R1, R1, #0x108
VLDR            S2, [R0,#8]
VLDR            S4, [R1,#8]
VLDR            S0, [R0]
VLDR            S5, [R1]
VLDR            S1, [R0,#4]
VLDR            S3, [R1,#4]
VSUB.F32        S2, S2, S4
VSUB.F32        S0, S0, S5
VSUB.F32        S1, S1, S3
ADD             R0, R4, #0x64 ; 'd'
MOVNE           R5, #1
MOVEQ           R5, #0
MOV             R1, #0
VSTM            R0, {S0-S2}
LDRB            R0, [R12]
CMP             R0, #0
LDRHI           R6, =0x21240
SUBHI           R7, R6, #0x10
BHI             loc_2423E0
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
LDRH            R0, [R1,#2]
CMP             R0, #0x12
BEQ             loc_242350
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R0, [R4,#4]
RSB             R3, R1, R1,LSL#3
ADD             R8, R1, R1,LSL#1
ADD             R2, R6, R3,LSL#3
ADD             R2, R2, R0
ADD             R0, R0, #0x108
VLDR            S0, [R2]
VLDR            S2, [R2,#4]
VLDR            S1, [R2,#8]
ADD             R2, R4, R8,LSL#2
VLDM            R0, {S3-S5}
CMP             R5, #0
ADD             R3, R7, R3,LSL#3
ADD             R0, R4, R1,LSL#2
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S2, S4
VSUB.F32        S1, S1, S5
ADD             R1, R1, #1
UXTH            R1, R1
VSTR            S0, [R2,#0x70]
VNEGNE.F32      S0, S0
VSTR            S2, [R2,#0x74]
VSTR            S1, [R2,#0x78]
VSTRNE          S0, [R2,#0x70]
LDR             R2, [R4,#4]
LDR             R2, [R2,R3]
STR             R2, [R0,#0x7F0]
LDRB            R0, [R12]
CMP             R1, R0
BCC             loc_2423E0
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}

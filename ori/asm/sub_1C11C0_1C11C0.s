PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
MOV             R8, #0
TST             R0, #1
LDR             R0, [R4,#8]
BEQ             loc_1C1204
LDRH            R1, [R0]
STRH            R1, [R0,#2]
LDR             R0, [R4,#8]
STRB            R8, [R0,#4]
ADD             SP, SP, #0xC; jumptable 001C1D88 default case
POP             {R4-R11,PC}
ADD             R0, R0, #6
VLDR            S2, =1.0
LDRB            R1, [R0,#4]
CMP             R1, #0
BNE             loc_1C1258
LDRSH           R2, [R0,#2]
LDRH            R1, [R0]
VMOV            S0, R2
ADD             R1, R1, #1
SXTH            R1, R1
STRH            R1, [R0]
VCVT.F32.S32    S1, S0
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S2
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1C1258
CMP             R2, R1
MOVLE           R1, R2
STRH            R1, [R0]
LDR             R0, [R4,#8]
ADD             R6, R4, #0x1000
MOV             R11, #1
LDRH            R1, [R0]
STRH            R1, [R0,#2]
LDRB            R0, [R6,#0x190]
CMP             R0, #0
SUBNE           R0, R0, #1
STRBNE          R0, [R6,#0x190]
LDR             R1, [R4,#4]
MOV             R0, R1
ADD             R1, R1, #0x108
ADD             R0, R0, #0x118
VLDR            S0, [R1]
VLDR            S3, [R0]
VLDR            S1, [R1,#4]
VLDR            S4, [R0,#4]
VSUB.F32        S0, S0, S3
LDR             R0, [R4,#8]
VSUB.F32        S1, S1, S4
LDRSH           R0, [R0]
CMP             R0, #0x1C; switch 28 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
DCD loc_1C1328; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 001C12B0 cases 0,1,4
LDR             R0, [R0,#0x4EC]
TST             R0, #1
LDRNE           R1, [R4,#8]
MOVNE           R0, #3
BNE             loc_1C1540
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #1
MOVNE           R1, #0x11
BEQ             loc_1C135C
STRH            R1, [R0]
B               loc_1C1514
TST             R1, #2
BEQ             loc_1C14F0
MOV             R1, #0x18
STRH            R1, [R0]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #0xE
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R8, [R0,#4]
LDR             R1, [R4,#4]
LDR             R0, [R1,#0x648]
BIC             R0, R0, #8
STR             R0, [R1,#0x648]
BIC             R1, R0, #0x10
LDR             R0, [R4,#4]
STR             R1, [R0,#0x648]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
VSTR            S2, [R6,#0x1CC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x600
LDRSB           R0, [R0,#0x5E]
CMN             R0, #1
BEQ             loc_1C1478
LDR             R7, =off_6D1648
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x600
LDRSB           R1, [R1,#0x5E]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
CMP             R5, #0
BEQ             loc_1C1418
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1C1418
LDRB            R0, [R5,#0xAAC]
CMP             R0, #1
BEQ             loc_1C1484
LDR             R0, [R4,#4]
ADD             R0, R0, #0x600
LDRSB           R0, [R0,#0x5E]
CMN             R0, #1
BEQ             loc_1C1478
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x600
LDRSB           R1, [R1,#0x5E]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
CMP             R5, #0
BEQ             loc_1C1478
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1C1478
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0x12
BEQ             loc_1C1484
VLDR            S0, =0.0
VSTR            S0, [R6,#0x194]
B               loc_1C1514
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
LDR             R2, [R4,#4]
LDR             R1, =0x65E
VLDR            S0, =0.0
LDRSB           R1, [R1,R2]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R1, [R0,#0xAA8]
VLDR            S1, [R1,#0x1E8]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VSTREQ          S0, [R6,#0x194]
BEQ             loc_1C14D4
VLDR            S0, [R2,#0x108]
VLDR            S2, [R0,#0x108]
VSUB.F32        S0, S0, S2
VSUB.F32        S0, S1, S0
VSTR            S0, [R6,#0x194]
LDR             R0, [R1,#0x1F4]
STR             R0, [R6,#0x1CC]
B               loc_1C1514
DCD off_6D1648
DCFS 1.0
DCFS 0.0
DCD 0x65E
VLDR            S1, =0.0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1C1510
LDRB            R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_1C1354
STRH            R8, [R0]
MOV             R0, R4
BL              sub_1BD22C
NOP
NOP
B               def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
LDR             R0, [R4,#4]; jumptable 001C12B0 case 3
LDR             R0, [R0,#0x4EC]
TST             R0, #1
LDREQ           R1, [R4,#8]
MOVEQ           R0, #4
BNE             loc_1C1514
STRH            R0, [R1]
B               loc_1C1514
LDR             R2, [R4,#4]; jumptable 001C12B0 cases 17,18
LDR             R0, [R2,#0x4EC]
TST             R0, #1
BEQ             loc_1C15DC
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #1
BEQ             loc_1C158C
ADD             R2, R2, #0x17400
LDRB            R2, [R2,#0xAD]
CMP             R2, #0
BNE             loc_1C158C
LDRB            R2, [R6,#0x190]
CMP             R2, #0
LDRHEQ          R2, [R0]
CMPEQ           R2, #0x12
BEQ             loc_1C15B0
TST             R1, #0x80
MOVNE           R1, #0x14
BNE             loc_1C1354
VLDR            S0, =0.0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVLS           R1, #0x12
BHI             loc_1C1514
B               loc_1C1354
MOV             R1, #0x1A
STRB            R1, [R6,#0x190]
MOV             R1, #0x13
STRH            R1, [R0]
LDR             R0, [R4,#8]
MOV             R1, #0
MOV             R2, #5
STRH            R1, [R0,#6]!
STRH            R2, [R0,#2]
STRB            R8, [R0,#4]
B               loc_1C1514
LDR             R1, [R4,#8]
MOV             R0, #0x15
MOV             R2, #4
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R1, #0
ADD             R0, R0, #6
STRH            R1, [R0]
B               loc_1C15D0
LDR             R0, [R4,#4]; jumptable 001C12B0 case 19
LDR             R1, [R0,#0x4EC]
TST             R1, #1
LDR             R1, [R4,#8]
BEQ             loc_1C1670
LDRB            R2, [R1,#0x4B4]
TST             R2, #0x80
MOVNE           R0, #0x14
BNE             loc_1C1540
VLDR            S2, =0.0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLS             loc_1C1668
VLDR            S0, [R6,#0x18C]
VMOV            R2, S0
ADD             R3, R2, #0x40000000
ADDS            R3, R3, #0x800000
BEQ             loc_1C165C
VLDR            S1, [R0,#0x10C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_1C1514
B               loc_1C1668
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BGE             loc_1C1514
MOV             R0, #0x12
B               loc_1C1540
MOV             R0, #0x15
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #4
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
B               loc_1C15D4
LDR             R0, [R4,#4]; jumptable 001C12B0 case 20
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BNE             loc_1C1514
LDR             R1, [R4,#8]
MOV             R0, #0x15
MOV             R2, #5
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R1, #0
ADD             R0, R0, #6
B               loc_1C15F8
MOV             R0, R4; jumptable 001C12B0 cases 22,23
BL              sub_1BDB58
NOP
NOP
B               def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
LDR             R0, [R4,#8]; jumptable 001C12B0 case 21
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
STRHGE          R8, [R1]
B               def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
LDR             R0, [R4,#8]; jumptable 001C12B0 case 24
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
MOVGE           R0, #0x1A
BGE             loc_1C1A5C
LDR             R10, =off_6D1648
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R7, #2
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R9, R1, R0
CMP             R9, #2
BLE             loc_1C18A8
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R7
BLE             loc_1C1778
LDR             R0, [R0,#4]
ADD             R0, R0, R7,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
B               loc_1C1790
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R7, R2
ADD             R0, R0, R1,LSL#2
LDR             R5, [R0,#0x10]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C17A4; jumptable 001C17A4 default case, case 5
DCD loc_1C189C; jump table for switch statement
CMP             R5, #0; jumptable 001C17A4 default case, case 5
BEQ             loc_1C189C; jumptable 001C17A4 cases 0-4,6
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1C189C; jumptable 001C17A4 cases 0-4,6
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0x11
BNE             loc_1C189C; jumptable 001C17A4 cases 0-4,6
LDRB            R0, [R5,#0xDE]
TST             R0, #1
BEQ             loc_1C189C; jumptable 001C17A4 cases 0-4,6
TST             R0, #4
BNE             loc_1C189C; jumptable 001C17A4 cases 0-4,6
LDR             R0, [R4,#4]
MOV             R1, R5
BL              sub_35844C
CMP             R0, #0
NOP
BEQ             loc_1C189C; jumptable 001C17A4 cases 0-4,6
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_1C1874
LDR             R1, [R5,#0x4EC]
TST             R1, #0xE0
BNE             loc_1C1848
LDR             R2, [R0,#0x754]
CMP             R2, R5
BNE             loc_1C1874
AND             R1, R1, #0xE0
CMP             R1, #0x80
BNE             loc_1C18A8
LDR             R1, [R0,#0x754]
CMP             R1, R5
BNE             loc_1C1874
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BEQ             loc_1C18A8
STR             R5, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
ORR             R3, R3, #0xFC0
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
B               loc_1C18A8
ADD             R7, R7, #1; jumptable 001C17A4 cases 0-4,6
CMP             R7, R9
BLT             loc_1C1740
VLDR            S0, [R6,#0x194]
VLDR            S1, =0.0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S2, =-0.5
VLDR            S1, =0.5
VMLA.F32        S1, S0, S2
VLDR            S0, [R6,#0x194]
VMUL.F32        S0, S1, S0
VSTR            S0, [R6,#0x198]
B               def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
LDR             R0, [R4,#8]; jumptable 001C12B0 case 26
LDR             R9, =off_6D1648
LDRB            R0, [R0,#0x4B4]
TST             R0, #0x83
LDR             R0, [R9]
BEQ             loc_1C1A80
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R2, #0
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
MOV             R6, #2
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R7, R1, R0
LDR             R0, [R4,#8]
MOV             R1, #7
CMP             R7, #2
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R8, [R0,#4]
BLE             loc_1C1A54
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R6
BLE             loc_1C198C
LDR             R0, [R0,#4]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
B               loc_1C19A4
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R6, R2
ADD             R0, R0, R1,LSL#2
LDR             R5, [R0,#0x10]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C19B8; jumptable 001C19B8 default case, case 5
DCD loc_1C1A44; jump table for switch statement
LDR             R0, [R5]; jumptable 001C19B8 default case, case 5
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1C1A44; jumptable 001C19B8 cases 0-4,6
LDRB            R0, [R5,#0xAAC]
CMP             R0, #1
BEQ             loc_1C1A0C
CMP             R0, #0x12
BEQ             loc_1C1A2C
B               loc_1C1A44; jumptable 001C19B8 cases 0-4,6
LDR             R0, [R5,#0xAA8]
LDRB            R0, [R0,#0x1D3]
CMP             R0, #1
CMPNE           R0, #2
BEQ             loc_1C1A64
CMP             R0, #4
BEQ             def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
B               loc_1C1A44; jumptable 001C19B8 cases 0-4,6
LDR             R0, [R5,#0xAA8]
LDRB            R0, [R0,#0x1D3]
CMP             R0, #1
BEQ             loc_1C1A64
CMP             R0, #4
BEQ             def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
ADD             R0, R6, #1; jumptable 001C19B8 cases 0-4,6
UXTH            R6, R0
CMP             R6, R7
BLT             loc_1C1954
LDR             R1, [R4,#8]
MOV             R0, #0x1B
STRH            R0, [R1]
B               def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #0x12
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R8, [R0,#4]
B               loc_1C1A44; jumptable 001C19B8 cases 0-4,6
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R5, #2
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R7, R1, R0
CMP             R7, #2
BLE             def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R5
BLE             loc_1C1AE8
LDR             R0, [R0,#4]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x184]
B               loc_1C1B00
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R5, R2
ADD             R0, R0, R1,LSL#2
LDR             R6, [R0,#0x10]
CMP             R6, #0
BEQ             loc_1C1BE4
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #8
BNE             loc_1C1BE4
LDRB            R0, [R6,#0xAAC]
CMP             R0, #0x11
BNE             loc_1C1BE4
LDRB            R0, [R6,#0xDE]
TST             R0, #1
BEQ             loc_1C1BE4
TST             R0, #4
BNE             loc_1C1BE4
LDR             R0, [R4,#4]
MOV             R1, R6
BL              sub_35844C
CMP             R0, #0
NOP
BEQ             loc_1C1BE4
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_1C1BAC
LDR             R1, [R6,#0x4EC]
TST             R1, #0xE0
BNE             loc_1C1B80
LDR             R2, [R0,#0x754]
CMP             R2, R6
BNE             loc_1C1BAC
AND             R1, R1, #0xE0
CMP             R1, #0x80
BNE             def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
LDR             R1, [R0,#0x754]
CMP             R1, R6
BNE             loc_1C1BAC
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BEQ             def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
STR             R6, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
ORR             R3, R3, #0xFC0
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
B               def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
DCFS 3.1416
DCFS 40.744
DCFS -0.5
DCFS 0.5
ADD             R5, R5, #1
CMP             R5, R7
BLT             loc_1C1AB0
B               def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
LDR             R0, [R4,#8]; jumptable 001C12B0 case 27
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1C12B0; jumptable 001C12B0 default case, cases 2,5-16,25
STRH            R8, [R1]
LDR             R1, [R4,#4]
LDR             R0, [R1,#0x648]
ORR             R0, R0, #8
STR             R0, [R1,#0x648]
ORR             R1, R0, #0x10
LDR             R0, [R4,#4]
STR             R1, [R0,#0x648]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#8]; jumptable 001C12B0 default case, cases 2,5-16,25
LDRB            R1, [R0,#0xC]
CMP             R1, #0
STRBNE          R8, [R0,#0xC]
LDR             R0, [R4,#8]
STRB            R8, [R0,#0x4B4]
LDR             R0, [R4,#8]
LDRSH           R1, [R0]
LDRSH           R2, [R0,#2]
CMP             R2, R1
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#4]
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B6]
CMP             R1, #0
BEQ             loc_1C1D34
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
ADD             R0, R0, #0x200
LDRH            R0, [R0,#0x38]
CMP             R0, #0x20 ; ' '
BEQ             def_1C1D88; jumptable 001C1D88 default case
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x246]
CMP             R0, #0
BNE             def_1C1D88; jumptable 001C1D88 default case
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R1, #1
LDR             R0, [R0]
STR             R1, [SP,#0x30+var_2C]
MOV             R3, #0x26 ; '&'
MOV             R2, #0
MOV             R1, #0x20 ; ' '
STR             R8, [SP,#0x30+var_30]
BL              sub_2FC388
LDR             R0, [R4]
NOP
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R2, [R1,#0xB8]
MOV             R1, #0x20 ; ' '
BLX             R2
LDR             R0, [R4]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R2, [R1,#0xBC]
ADD             SP, SP, #0xC
MOV             R1, #0x26 ; '&'
POP             {R4-R11,LR}
BX              R2
LDRSH           R0, [R0]
CMP             R0, #0x15
BEQ             loc_1C1F38; jumptable 001C1D88 case 1
BGT             loc_1C1D80
CMP             R0, #0x12
BEQ             loc_1C1F38; jumptable 001C1D88 case 1
BGT             loc_1C1D6C
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_1C1DA4
CMP             R0, #0x11
BEQ             loc_1C1F38; jumptable 001C1D88 case 1
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
CMP             R0, #0x13
CMPNE           R0, #0x14
BEQ             loc_1C1F38; jumptable 001C1D88 case 1
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
SUB             R0, R0, #0x16
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C1D88; jumptable 001C1D88 default case
DCD loc_1C1F60; jump table for switch statement
EOR             R2, R11, #1
MOV             R1, #0x1D
MOV             R0, #0
BL              sub_5435FC
MOV             R2, #0
MOV             R1, #0x23 ; '#'
MOV             R0, #1
BL              sub_5435FC
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x246]
CMP             R0, #0
BNE             loc_1C1E6C
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x636]
CMP             R0, #0
BNE             loc_1C1E6C
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x62C]
CMP             R0, #0
BNE             loc_1C1E6C
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x62D]
CMP             R0, #0
BEQ             loc_1C1E6C
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R2, #1
LDR             R0, [R0]
MOV             R3, #0
MOV             R1, R2
BL              sub_59AD78
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x246]
CMP             R0, #0
BNE             loc_1C1EF0
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x636]
CMP             R0, #0
BNE             loc_1C1EF0
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x62D]
CMP             R0, #0
BNE             loc_1C1EF0
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R3, #0
LDR             R0, [R0]
MOV             R2, R3
MOV             R1, #1
BL              sub_59AD78
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #2
BNE             def_1C1D88; jumptable 001C1D88 default case
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R3, #1
LDR             R0, [R0]
ADD             SP, SP, #0xC
MOV             R2, R3
POP             {R4-R11,LR}
MOV             R1, #0
B               sub_2FBB34
MOV             R2, #0; jumptable 001C1D88 case 1
MOV             R1, #0x8000
MOV             R0, R2
BL              sub_5435FC
ADD             SP, SP, #0xC
MOV             R2, #0
POP             {R4-R11,LR}
MOV             R1, #0x23 ; '#'
MOV             R0, #1
B               sub_5435FC
MOV             R2, #1; jumptable 001C1D88 case 0
MOV             R1, #0x8000
MOV             R0, #0
BL              sub_5435FC
ADD             SP, SP, #0xC
MOV             R2, #1
POP             {R4-R11,LR}
MOV             R1, #0x23 ; '#'
MOV             R0, R2
B               sub_5435FC
LDR             R4, =off_6D1648; jumptable 001C1D88 cases 2-4
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #2
BNE             loc_1C1FCC
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R2, #0
LDR             R0, [R0]
MOV             R3, #1
MOV             R1, R2
BL              sub_2FBB34
MOV             R2, #0
MOV             R1, #0x8000
MOV             R0, R2
BL              sub_5435FC
LDR             R1, =0x8001
MOV             R2, #0
MOV             R0, #1
BL              sub_5435FC
LDR             R0, [R4]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x636]
CMP             R0, #0
BNE             def_1C1D88; jumptable 001C1D88 default case
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x58C]
CMP             R0, #0
BEQ             def_1C1D88; jumptable 001C1D88 default case
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R3, #0
LDR             R0, [R0]
ADD             SP, SP, #0xC
MOV             R2, R3
POP             {R4-R11,LR}
MOV             R1, #1
B               sub_59AD78

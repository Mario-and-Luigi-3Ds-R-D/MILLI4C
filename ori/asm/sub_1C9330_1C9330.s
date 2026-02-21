PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC4]
LDR             R5, =off_67EE54
MOV             R6, #0xF
LDR             R3, [R0,#4]
LDR             R0, [R3,#0x14]
TST             R0, #0x10000
BEQ             loc_1C9464
ADD             R0, R3, #4
LDR             R1, =0x468
LDM             R0, {R0,R2}
LDRH            R1, [R1,R0]
CMP             R1, #0x11
CMPNE           R1, #0x25 ; '%'
BEQ             loc_1C93C8
CMP             R1, #0x2D ; '-'
CMPNE           R1, #0x2E ; '.'
BEQ             loc_1C93C8
CMP             R1, #0x37 ; '7'
CMPNE           R1, #0x38 ; '8'
CMPNE           R1, #0x1D
BEQ             loc_1C93C8
SUB             R12, R1, #0x45 ; 'E'
CMP             R12, #2
BCS             loc_1C93F0
LDR             R1, [R0,#0x4EC]
TST             R1, #1
BEQ             locret_1C93EC
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R0,#0x11C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             locret_1C93EC
LDRB            R1, [R0,#0xDE]
ORR             R1, R1, #8
STRB            R1, [R0,#0xDE]
B               loc_1C9490
ADD             R1, R3, #0x800
VLDR            S1, [R0,#0x10C]
VLDR            S0, [R1,#0x80]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VLDRCS          S1, [R2,#0x10C]
VCMPECS.F32     S1, S0
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_1C9448
POP             {R4-R6,PC}
LDR             R12, [R0,#0x86C]
BICS            R12, R6, R12
BEQ             loc_1C940C
POP             {R4-R6,LR}
MOV             R1, #0xFFFFFFFF
MOV             R0, R3
B               sub_537BE0
CMP             R1, #5
SUBCS           R1, R1, #8
CMPCS           R1, #8
BCS             locret_1C93EC
LDR             R1, =0x468
LDRH            R1, [R1,R2]
CMP             R1, #5
SUBCS           R3, R1, #8
CMPCS           R3, #8
SUBCS           R1, R1, #0x41 ; 'A'
CMPCS           R1, #2
BCS             locret_1C93EC
LDR             R1, [R2,#0x86C]
BICS            R1, R6, R1
BNE             locret_1C93EC
LDRB            R1, [R0,#0xDE]
ORR             R1, R1, #8
STRB            R1, [R0,#0xDE]
LDRB            R0, [R2,#0xDE]
ORR             R0, R0, #8
STRB            R0, [R2,#0xDE]
B               loc_1C9490
LDR             R0, =dword_6E2378
LDRB            R1, [R0,#(byte_6E2384 - 0x6E2378)]
MOV             R0, R4
BL              sub_1EF830
LDR             R1, =0x468
LDRH            R1, [R1,R0]
CMP             R1, #5
BCS             locret_1C93EC
LDR             R0, [R0,#0x86C]
BICS            R0, R6, R0
BNE             locret_1C93EC
LDR             R0, [R4]
ADD             R1, R5, #0x38 ; '8'
MOV             R3, #0
LDM             R1, {R1,R2}
LDR             R12, [R0,#0x28]
MOV             R0, R4
BLX             R12
LDRD            R0, R1, [R5,#(dword_67EEAC - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
POP             {R4-R6,PC}

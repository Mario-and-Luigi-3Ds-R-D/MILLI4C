PUSH            {R4-R12,LR}
MOV             R5, R0
LDR             R0, [R0,#0xC4]
LDR             R11, =dword_6E2378
LDR             R10, =unk_67DE00
LDR             R9, =unk_6731D8
LDR             R6, [R0,#4]
LDRB            R0, [R11,#(byte_6E2384 - 0x6E2378)]
CMP             R0, #0
LDREQ           R4, [R6,#4]
LDRNE           R4, [R6,#8]
LDR             R0, [R4,#0x86C]
TST             R0, #0xF
LDREQ           R4, [R6,#4]
BEQ             loc_1EEC90
ADD             R8, R4, #0x400
LDR             R0, [R4,#0x4EC]
ADD             R8, R8, #0xEC
TST             R0, #4
BEQ             loc_1EEC90
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0xB8]
MOV             R0, R5
BLX             R2
MOVS            R7, R0
BEQ             loc_1EEC84
BL              sub_5C75C8
CMP             R0, #0
BEQ             loc_1EEC84
LDR             R1, [R4,#0x758]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x358
LDR             R2, [R1,#0x34]
MOV             R1, R7
BLX             R2
LDR             R0, [R7,#0x38]
LDR             R1, [R4,#0x464]
LDRB            R0, [R0,#0x1C]
AND             R1, R1, #0xF
AND             R0, R0, #7
LDRB            R0, [R9,R0]
CMP             R0, #0x10
BEQ             loc_1EEC6C
CMP             R0, #8
LDRBEQ          R1, [R10,R1]
BEQ             loc_1EEC6C
CMP             R0, #4
LDREQ           R0, =unk_67DDF0
BEQ             loc_1EECE4
CMP             R0, #2
LDREQ           R0, =unk_67DDE0
MOVNE           R1, #0
BEQ             loc_1EECE4
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x4EC]
BIC             R0, R0, #4
STR             R0, [R8]
ADD             R0, R4, #0x400
VLDR            S1, =0.0
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             locret_1EEE54
LDRB            R0, [R11,#(byte_6E2387 - 0x6E2378)]
LDR             R7, =off_67E18C
CMP             R0, #3
LDR             R0, [R6,#4]
CMPEQ           R4, R0
BNE             loc_1EECD0
LDR             R1, [R4,#0x86C]
AND             R1, R1, #0xF
CMP             R1, #6
BEQ             loc_1EECEC
LDR             R1, [R4,#0x86C]
MOV             R2, #0xF
BICS            R1, R2, R1
BNE             loc_1EEE3C
B               loc_1EEDD4
LDRB            R1, [R0,R1]
B               loc_1EEC6C
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0xB8]
MOV             R0, R5
BLX             R2
MOVS            R6, R0
BEQ             loc_1EED90
BL              sub_5C75C8
CMP             R0, #0
NOP
BEQ             loc_1EED90
LDR             R1, [R4,#0x758]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x358
LDR             R2, [R1,#0x34]
MOV             R1, R6
BLX             R2
LDR             R0, [R6,#0x38]
LDR             R1, [R4,#0x464]
LDRB            R0, [R0,#0x1C]
AND             R1, R1, #0xF
AND             R0, R0, #7
LDRB            R0, [R9,R0]
CMP             R0, #0x10
BEQ             loc_1EED78
CMP             R0, #8
LDRBEQ          R1, [R10,R1]
BEQ             loc_1EED78
CMP             R0, #4
LDREQ           R0, =unk_67DDF0
BEQ             loc_1EEDCC
CMP             R0, #2
LDREQ           R0, =unk_67DDE0
MOVNE           R1, #0
BEQ             loc_1EEDCC
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
LDR             R0, [R5]
ADD             R7, R7, #0x20 ; ' '
MOV             R3, #0
LDM             R7, {R1,R2}
LDR             R12, [R0,#0x28]
MOV             R0, R5
BLX             R12
LDR             R1, =off_67E18C
LDR             R0, [R1,#(dword_67E35C - 0x67E18C)]
LDR             R1, [R1,#(dword_67E360 - 0x67E18C)]
STRD            R0, R1, [R5,#0x4C]
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #8
STRB            R0, [R4,#0xDE]
B               loc_1EEE28
LDRB            R1, [R0,R1]
B               loc_1EED78
LDR             R1, [R6,#0x14]
TST             R1, #0x10000
BEQ             loc_1EEDF4
LDR             R0, [R0,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #6
CMPNE           R0, #7
BEQ             loc_1EEE3C
LDR             R0, [R5]
ADD             R7, R7, #0x20 ; ' '
MOV             R3, #0
LDM             R7, {R1,R2}
LDR             R12, [R0,#0x28]
MOV             R0, R5
BLX             R12
LDR             R1, =dword_67E35C
LDM             R1, {R0,R1}
STRD            R0, R1, [R5,#0x4C]
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #8
STRB            R0, [R4,#0xDE]
LDR             R0, [R4]
LDR             R1, [R0,#0x220]
MOV             R0, R4
POP             {R4-R12,LR}
BX              R1
MOV             R1, #0xFFFFFFFF
MOV             R0, R6
BL              sub_537BE0
LDRD            R0, R1, [R7,#(off_67E1B4 - 0x67E18C)]
STRD            R0, R1, [R5,#0x4C]
B               loc_1EEE28
POP             {R4-R12,PC}

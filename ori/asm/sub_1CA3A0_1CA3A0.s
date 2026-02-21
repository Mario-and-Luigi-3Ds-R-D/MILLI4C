PUSH            {R4-R11,LR}
MOV             R5, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0xC4]
LDR             R6, [R0,#4]
LDR             R0, =dword_6E2378
LDRB            R1, [R0,#(byte_6E2384 - 0x6E2378)]
MOV             R0, R5
BL              sub_1EF830
MOV             R4, R0
LDR             R0, [R0,#0x86C]
LDR             R9, =unk_6731D8
TST             R0, #0xF
ANDNE           R0, R0, #0xF
CMPNE           R0, #4
BEQ             loc_1CA4FC
CMP             R0, #5
BEQ             loc_1CA4E4
LDR             R0, [R4,#0x4EC]
ADD             R8, R4, #0x400
ADD             R8, R8, #0xEC
TST             R0, #4
BEQ             loc_1CA4B0
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0xB8]
MOV             R0, R5
BLX             R2
MOVS            R7, R0
BEQ             loc_1CA4A4
BL              sub_5C75C8
CMP             R0, #0
BEQ             loc_1CA4A4
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
BEQ             loc_1CA48C
CMP             R0, #8
LDREQ           R0, =unk_67DE00
LDRBEQ          R1, [R0,R1]
BEQ             loc_1CA48C
CMP             R0, #4
LDREQ           R0, =unk_67DDF0
BEQ             loc_1CA52C
CMP             R0, #2
LDREQ           R0, =unk_67DDE0
MOVNE           R1, #0
BEQ             loc_1CA52C
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x4EC]
BIC             R0, R0, #4
STR             R0, [R8]
ADD             R10, R4, #0x400
VLDR            S1, =0.0
VLDR            S0, [R10,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_1CA7FC
LDR             R8, =dword_6E2378
LDR             R11, =off_67EE54
LDR             R7, [R6,#4]
LDRB            R0, [R8,#(byte_6E2387 - 0x6E2378)]
CMP             R0, #3
BNE             loc_1CA55C
B               loc_1CA534
LDR             R0, [R6,#0x880]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
BEQ             loc_1CA514
MOV             R1, #0
MOV             R0, R5
BL              sub_1EF830
MOV             R4, R0
NOP
B               loc_1CA4B0
MOV             R1, #1
MOV             R0, R5
BL              sub_1EF830
MOV             R4, R0
NOP
B               loc_1CA4B0
LDRB            R1, [R0,R1]
B               loc_1CA48C
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_1CA55C
LDR             R0, [R4,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #6
BEQ             loc_1CA570
LDR             R0, [R4,#0x86C]
MOV             R1, #0xF
BICS            R0, R1, R0
BNE             loc_1CA6B0
B               loc_1CA644
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0xB8]
MOV             R0, R5
BLX             R2
MOVS            R7, R0
BEQ             loc_1CA618
BL              sub_5C75C8
CMP             R0, #0
NOP
BEQ             loc_1CA618
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
BEQ             loc_1CA600
CMP             R0, #8
LDREQ           R0, =unk_67DE00
LDRBEQ          R1, [R0,R1]
BEQ             loc_1CA600
CMP             R0, #4
LDREQ           R0, =unk_67DDF0
BEQ             loc_1CA63C
CMP             R0, #2
LDREQ           R0, =unk_67DDE0
MOVNE           R1, #0
BEQ             loc_1CA63C
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
MOV             R1, #0xFFFFFFFF
MOV             R0, R6
BL              sub_537BE0
LDRD            R0, R1, [R11,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R5,#0x4C]
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #8
STRB            R0, [R4,#0xDE]
B               loc_1CA694
LDRB            R1, [R0,R1]
B               loc_1CA600
LDR             R0, [R6,#0x14]
TST             R0, #0x10000
BEQ             loc_1CA664
LDR             R0, [R7,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #6
CMPNE           R0, #7
BEQ             loc_1CA6B0
LDR             R0, [R5]
ADD             R1, R11, #0x38 ; '8'
MOV             R3, #0
LDM             R1, {R1,R2}
LDR             R12, [R0,#0x28]
MOV             R0, R5
BLX             R12
LDRD            R0, R1, [R11,#(dword_67EEAC - 0x67EE54)]
STRD            R0, R1, [R5,#0x4C]
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #8
STRB            R0, [R4,#0xDE]
LDR             R0, [R4]
LDR             R1, [R0,#0x220]
ADD             SP, SP, #0xC
MOV             R0, R4
VPOP            {D8}
POP             {R4-R11,LR}
BX              R1
LDR             R0, [R4,#0x7FC]
VLDR            S1, =0.0039062
ADD             R7, R4, #0x400
ADD             R7, R7, #0x3FC
VLDR            S0, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
VMOV            R2, S0
VCVT.F32.S32    S2, S0
STR             R1, [SP,#0x38+var_34]
LDR             R0, [R0,#4]
VMUL.F32        S16, S2, S1
BL              sub_136824
LDR             R1, [R4,#0x86C]
STR             R0, [SP,#0x38+var_30]
LDR             R0, [R7]
AND             R7, R1, #0xF
MOV             R1, #0xFFFFFFFF
LDRSH           R9, [R0,#0x16]
MOV             R0, R6
BL              sub_537BE0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #1
BNE             loc_1CA7CC
CMP             R7, #1
BEQ             loc_1CA7CC
CMP             R7, #3
CMPNE           R7, #5
BEQ             loc_1CA7CC
LDRB            R0, [R8,#(byte_6E2387 - 0x6E2378)]
CMP             R0, #3
BNE             loc_1CA7CC
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0xB8]
MOV             R0, R5
BLX             R2
MOVS            R6, R0
BEQ             loc_1CA7C0
BL              sub_5C75C8
CMP             R0, #0
NOP
BEQ             loc_1CA7C0
LDR             R1, [R4,#0x758]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x358
LDR             R2, [R1,#0x34]
MOV             R1, R6
BLX             R2
MOV             R0, #1
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R4]
ADD             R7, SP, #0x38+var_34
SXTH            R3, R9
LDM             R7, {R1,R2}
LDR             R12, [R0,#0x350]
VLDR            S0, [R10,#0x70]
MOV             R0, R4
BLX             R12
VLDR            S0, =256.0
LDR             R0, [R4,#0x7FC]
VMUL.F32        S0, S16, S0
ADD             R0, R0, #0x10
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #8
STRB            R0, [R4,#0xDE]
LDRD            R0, R1, [R11,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R5,#0x4C]
B               loc_1CA694
DCD dword_6E2378
DCD unk_6731D8
DCD unk_67DE00
DCD unk_67DDF0
DCD unk_67DDE0
DCFS 0.0
DCD off_67EE54
DCFS 0.0039062
DCFS 256.0
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R11,PC}

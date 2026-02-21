PUSH            {R4-R12,LR}
MOV             R6, R0
LDR             R0, =dword_6E2378
LDRB            R1, [R0,#(byte_6E2384 - 0x6E2378)]
MOV             R0, R6
BL              sub_1EF830
MOV             R4, R0
LDR             R0, [R0]
ADD             R2, R4, #0x870
MOV             R1, #0
LDR             R3, [R0,#0xF0]
MOV             R0, R4
BLX             R3
LDR             R0, [R4,#0x86C]
MOV             R1, #0xF
MOV             R9, #0
BICS            R1, R1, R0
ANDNE           R2, R0, #0xF
CMPNE           R2, #6
BNE             loc_1CA87C
ADD             R2, R4, #0x400
LDRH            R3, [R2,#0x68]
SUB             R3, R3, #8
CMP             R3, #8
BCC             loc_1CA87C
STRH            R9, [R2,#0x68]
LDRB            R2, [R4,#0xDE]
ORR             R2, R2, #8
STRB            R2, [R4,#0xDE]
LDR             R2, [R6,#0xC4]
LDR             R11, =unk_6731D8
CMP             R1, #0
LDR             R7, [R2,#4]
ADD             R5, R7, #4
LDM             R5, {R5,R8}
BNE             loc_1CA9A8
LDR             R1, [R7,#0x14]
TST             R1, #0x10000
BEQ             loc_1CA8B8
LDR             R1, [R5,#0x86C]
AND             R1, R1, #0xF
CMP             R1, #6
CMPNE           R1, #7
BEQ             loc_1CA9A8
LDR             R0, [R6]
MOV             R1, R4
LDR             R2, [R0,#0xB4]
MOV             R0, R6
BLX             R2
MOVS            R5, R0
BEQ             loc_1CA984
BL              sub_5C75C8
CMP             R0, #0
NOP
BEQ             loc_1CA984
LDR             R1, [R4,#0x758]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x358
LDR             R2, [R1,#0x34]
MOV             R1, R5
BLX             R2
LDR             R0, [R5,#0x38]
LDR             R1, [R4,#0x464]
LDRB            R0, [R0,#0x1C]
AND             R1, R1, #0xF
AND             R0, R0, #7
LDRB            R0, [R11,R0]
CMP             R0, #0x10
BEQ             loc_1CA948
CMP             R0, #8
LDREQ           R0, =unk_67DE00
LDRBEQ          R1, [R0,R1]
BEQ             loc_1CA948
CMP             R0, #4
LDREQ           R0, =unk_67DDF0
BEQ             loc_1CAC2C
CMP             R0, #2
LDREQ           R0, =unk_67DDE0
MOVNE           R1, #0
BEQ             loc_1CAC2C
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
LDR             R1, [R0,#0x3D0]
MOV             R0, R4
BLX             R1
LDR             R0, =0x468
STRH            R9, [R0,R4]
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #8
STRB            R0, [R4,#0xDE]
LDR             R0, [R6]
MOV             R3, #0
LDR             R12, [R0,#0x28]
LDR             R0, =off_67EE8C
LDM             R0, {R1,R2}
MOV             R0, R6
POP             {R4-R11,LR}
POP             {LR}
BX              R12
AND             R10, R0, #0xF
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_1CAA90
LDR             R0, [R4,#0x86C]
AND             R0, R0, #0xF
CMP             R0, #6
BNE             loc_1CAA90
LDR             R0, =0x468
LDRH            R0, [R0,R4]
SUB             R0, R0, #8
CMP             R0, #8
BCC             loc_1CAA90
LDR             R0, [R6]
MOV             R1, R4
LDR             R2, [R0,#0xB4]
MOV             R0, R6
BLX             R2
MOVS            R9, R0
BEQ             loc_1CAA90
BL              sub_5C75C8
CMP             R0, #0
NOP
BEQ             loc_1CAA90
LDR             R1, [R4,#0x758]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x358
LDR             R2, [R1,#0x34]
MOV             R1, R9
BLX             R2
LDR             R0, [R9,#0x38]
LDR             R1, [R4,#0x464]
LDRB            R0, [R0,#0x1C]
AND             R1, R1, #0xF
AND             R0, R0, #7
LDRB            R0, [R11,R0]
CMP             R0, #0x10
BEQ             loc_1CAA78
CMP             R0, #8
LDREQ           R0, =unk_67DE00
LDRBEQ          R1, [R0,R1]
BEQ             loc_1CAA78
CMP             R0, #4
LDREQ           R0, =unk_67DDF0
BEQ             loc_1CAAB8
CMP             R0, #2
LDREQ           R0, =unk_67DDE0
MOVNE           R1, #0
BEQ             loc_1CAAB8
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
MOV             R1, #0xFFFFFFFF
MOV             R0, R7
BL              sub_537BE0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #1
BNE             loc_1CAB84
B               loc_1CAAC0
LDRB            R1, [R0,R1]
B               loc_1CAA78
CMP             R10, #5
BEQ             loc_1CAB84
LDR             R0, =0x468
LDRH            R0, [R0,R4]
SUB             R0, R0, #8
CMP             R0, #8
BCC             loc_1CAB84
LDR             R0, [R6]
MOV             R1, R4
LDR             R2, [R0,#0xB4]
MOV             R0, R6
BLX             R2
MOVS            R7, R0
BEQ             loc_1CAB84
BL              sub_5C75C8
CMP             R0, #0
NOP
BEQ             loc_1CAB84
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
LDRB            R0, [R11,R0]
CMP             R0, #0x10
BEQ             loc_1CAB6C
CMP             R0, #8
LDREQ           R0, =unk_67DE00
LDRBEQ          R1, [R0,R1]
BEQ             loc_1CAB6C
CMP             R0, #4
LDREQ           R0, =unk_67DDF0
BEQ             loc_1CABE8
CMP             R0, #2
LDREQ           R0, =unk_67DDE0
MOVNE           R1, #0
BEQ             loc_1CABE8
LDR             R0, [R4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
ADD             R7, R4, #0x400
LDRH            R0, [R7,#0x68]
CMP             R0, #0x1D
CMPNE           R0, #0x37 ; '7'
BEQ             loc_1CABF0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #0
LDRHEQ          R0, [R7,#0x68]
CMPEQ           R0, #0x11
BEQ             loc_1CABCC
LDR             R0, =0x468
LDRH            R0, [R0,R5]
SUB             R0, R0, #0x45 ; 'E'
CMP             R0, #2
BCS             loc_1CABD8
LDRB            R0, [R5,#0xDE]
BIC             R0, R0, #8
STRB            R0, [R5,#0xDE]
LDR             R1, =off_67EE54
LDRD            R0, R1, [R1,#(off_67EE94 - 0x67EE54)]
STRD            R0, R1, [R6,#0x4C]
POP             {R4-R12,PC}
LDRB            R1, [R0,R1]
B               loc_1CAB6C
LDRB            R0, [R5,#0xDE]
BIC             R0, R0, #8
STRB            R0, [R5,#0xDE]
LDRB            R0, [R8,#0xDE]
BIC             R0, R0, #8
STRB            R0, [R8,#0xDE]
LDRH            R0, [R7,#0x68]
CMP             R0, #0x37 ; '7'
BNE             loc_1CABD8
LDR             R1, [R5,#0x7FC]
MOV             R0, #1
STRH            R0, [R1,#0x16]
LDR             R1, [R8,#0x7FC]
STRH            R0, [R1,#0x16]
B               loc_1CABD8
LDRB            R1, [R0,R1]
B               loc_1CA948

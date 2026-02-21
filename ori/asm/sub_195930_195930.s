MOV             R1, #1
STRB            R1, [R0,#0x8F]
STRB            R1, [R0,#0xDF]
LDR             R2, =off_67E4F8
STRB            R1, [R0,#0x12F]
STRB            R1, [R0,#0x240]
STRB            R1, [R0,#0x35C]
MOV             R1, R0
LDM             R2, {R0,R2}
ADD             R3, R1, #0x38 ; '8'
STM             R3, {R0,R2}
TST             R2, #1
ADD             R0, R1, R2,ASR#1
LDREQ           R1, [R1,#0x38]
BEQ             loc_195978
LDR             R2, [R0]
LDR             R1, [R1,#0x38]
LDR             R1, [R2,R1]
NOP
BX              R1

LDR             R2, [R0]
MOV             R3, #0x3E8
LDR             R1, =0xD6853CC1
MOV             R12, #0x3E8
MUL             R2, R2, R3
UMULL           R3, R2, R1, R2
LDR             R3, [R0,#8]
LDR             R0, [R0,#0x14]
MOV             R2, R2,LSR#12
MUL             R3, R3, R12
CMP             R2, #1
MOVLT           R2, #1
UMULL           R3, R1, R1, R3
MOV             R1, R1,LSR#12
CMP             R1, #1
MOVLT           R1, #1
CMP             R0, #0
LDREQ           R0, =unk_6D4B7C
ADD             R1, R1, R2
ADD             R1, R1, R1,LSL#2
LDM             R0, {R3,R12}
LDR             R0, [R0,#8]
ADD             R2, R3, R12
ADD             R0, R0, R2
ADD             R0, R0, R1,LSL#5
MOV             R0, R0,LSL#3
BX              LR

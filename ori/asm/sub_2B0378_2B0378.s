PUSH            {R4-R6,LR}
MOV             R5, R0
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x78 ; 'x'
MOV             R4, #1
LDR             R0, [R0]
CMP             R0, #0
MOVNE           R2, #0
MOVNE           R1, R2
BEQ             loc_2B03C4
LDR             R3, [R0,#0x28]
TST             R3, #0x80000
ORRNE           R2, R2, R4,LSL R1
TST             R3, #0x100000
ADDEQ           R1, R1, #1
ADDEQ           R0, R0, #0x2C ; ','
BEQ             loc_2B03A0
LDR             R0, =0x13C7C
STR             R2, [R0,R5]
LDR             R0, [R5]
LDR             R1, [R0,#0xD4]
MOV             R0, R5
BLX             R1
LDR             R0, [R5]
LDR             R1, [R0,#0xE8]
MOV             R0, R5
BLX             R1
LDR             R0, =0x13D5C
LDR             R0, [R0,R5]
CMP             R0, #0
MOVNE           R2, #0
MOVNE           R1, R2
BEQ             loc_2B0420
LDRH            R3, [R0]
TST             R3, #2
ORREQ           R2, R2, R4,LSL R1
TST             R3, #1
ADDEQ           R1, R1, #1
ADDEQ           R0, R0, #0x34 ; '4'
BEQ             loc_2B03FC
LDR             R0, =0x13D60
STR             R2, [R0,R5]
ADD             R6, R5, #0x14000
MOV             R4, #0
LDRB            R0, [R6,#0x28E]
CMP             R0, #0
BLS             locret_2B045C
ADD             R0, R5, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#0x30]
BLX             R1
LDRB            R0, [R6,#0x28E]
ADD             R4, R4, #1
CMP             R0, R4
BHI             loc_2B0434
POP             {R4-R6,PC}

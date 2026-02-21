PUSH            {R4-R6,LR}
ADD             R4, R0, #0x1A0000
MOV             R5, R0
LDR             R1, [R4,#0x5C]
LDR             R0, [R4,#0x60]
CMP             R1, #0
BNE             loc_1D07D0
TST             R0, #1
BEQ             loc_1D0808
CMP             R0, #0
BEQ             loc_1D0808
TST             R0, #1
ADD             R0, R5, R0,ASR#1
BEQ             loc_1D07E4
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#0x5C]
CMP             R0, #0
BEQ             loc_1D083C
LDRB            R0, [R4,#0x8C]
CMP             R0, #2
MOVNE           R0, #1
BNE             locret_1D0878
MOV             R0, R5
BL              sub_5EE6F4
CMP             R0, #0
LDRNE           R1, =word_19CF40
LDR             R0, =dword_6E2378
LDRHNE          R1, [R1,R5]
LDREQ           R1, =off_106494
LDRHEQ          R1, [R1,R5]
STRB            R1, [R0,#(byte_6E238A - 0x6E2378)]
LDRB            R1, [R4,#0x8C]
CMP             R1, #2
BEQ             loc_1D0850
B               loc_1D0874
LDR             R0, [R4,#0x60]
TST             R0, #1
CMPNE           R0, #0
BNE             loc_1D07F8
B               loc_1D0808
LDRB            R0, [R0,#(byte_6E2389 - 0x6E2378)]
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_1D086C
CMP             R0, #2
CMPNE           R0, #4
BNE             loc_1D0874
MOV             R0, R5
BL              sub_1D1484
MOV             R0, #0
POP             {R4-R6,PC}

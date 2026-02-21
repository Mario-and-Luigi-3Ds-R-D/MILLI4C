PUSH            {R4,LR}
MOV             R4, R0
MOV             R3, #1
STRB            R3, [R4,#4]
LDR             R12, =off_6B2C44
MOV             R0, #0
LDR             R3, =off_64E794
STRB            R0, [R4,#5]
STRH            R0, [R4,#6]
STR             R12, [R4]
ADD             R12, R3, #0x38 ; '8'
STR             R1, [R4,#8]
LDM             R12, {R1,R12}
ADD             LR, R4, #0xC
STM             LR, {R1,R12}
LDR             R1, =off_6CE970
STRB            R0, [R4,#0x18]
STRB            R2, [R4,#0x1A]
STRB            R0, [R4,#0x1B]
LDR             R1, [R1]
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xCF00
LDRB            R2, [R1,#(byte_19CF28 - 0x19CF00)]
CMP             R2, #0
BEQ             loc_21B638
LDRB            R1, [R1,#(byte_19CF2B - 0x19CF00)]
CMP             R1, #0
ADDEQ           R1, R3, #0x58 ; 'X'
BEQ             loc_21B63C
LDR             R1, =unk_64E7D4
LDRB            R2, [R4,#0x1A]
STR             R1, [R4,#0x14]
CMP             R2, #5
BEQ             loc_21B67C
STRB            R0, [R4,#0x19]
LDR             R1, [R4,#8]
LDRB            R0, [R4,#0x1A]
STRB            R0, [R1,#0x489]
LDRD            R0, R1, [R3]
STRD            R0, R1, [R4,#0xC]
LDR             R0, [R4,#8]
BL              sub_5EC8D8
CMP             R0, #0
NOP
BNE             loc_21B6B4
B               loc_21B6A4
LDR             R0, [R4,#8]
LDRB            R0, [R0,#0x48B]
CMP             R0, #0
STRB            R0, [R4,#0x1B]
MOVEQ           R0, #0xC
BEQ             loc_21B64C
CMP             R0, #1
MOVNE           R0, #0
MOVEQ           R0, #6
B               loc_21B64C
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              loc_21B50C
MOV             R0, R4
POP             {R4,PC}

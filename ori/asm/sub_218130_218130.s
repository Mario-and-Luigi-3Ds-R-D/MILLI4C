PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R1, =off_6B2B84
LDR             R0, =off_6CE970
STR             R1, [R4]
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xD600
LDRH            R1, [R0,#(word_19D69E - 0x19D600)]
SUB             R1, R1, #1
STRH            R1, [R0,#(word_19D69E - 0x19D600)]
LDR             R0, [R4,#0x10C]
CMP             R0, #0
ADDNE           R0, R4, #0x100
BLNE            sub_528B1C
ADD             R0, R4, #0x294
NOP
LDR             R5, =off_6B7BEC
SUB             R4, R0, #0x50 ; 'P'
LDR             R1, =nullsub_300
STR             R5, [R0,#-0x50]
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x38 ; '8'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R4, R0, #0x34 ; '4'
STR             R5, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
LDR             R1, =off_6B7BFC
SUB             R4, R0, #0x58 ; 'X'
MOV             R3, #1
STR             R1, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
LDR             R1, =off_6B7C1C
SUB             R4, R0, #0xA8
MOV             R3, #3
STR             R1, [R0,#-0xA8]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x78 ; 'x'
BLX             sub_1009D8
MOV             R0, R4
NOP
POP             {R4-R6,LR}
SUB             R0, R0, #0x110
B               sub_14CD84

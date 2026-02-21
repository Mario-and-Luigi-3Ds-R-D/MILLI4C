PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
MOV             R2, #0
MOV             R3, SP
LDRSB           R1, [R0,R2]
CMP             R1, #0
CMPNE           R1, #0x3A ; ':'
BEQ             loc_107280
STRB            R1, [R3,R2]
ADD             R2, R2, #1
CMP             R2, #8
BLT             loc_107220
BL              sub_128434
LDR             R12, =unk_697120
MOV             R1, #0
MOV             R0, R1
MOV             R2, R1
LDRSB           R3, [R12,R2]
CMP             R3, #0x3A ; ':'
BEQ             loc_1072C8
MOV             R5, R0,LSL#8
ORR             R4, R5, R1,LSR#24
ADD             R2, R2, #1
CMP             R2, #8
ORR             R1, R3, R1,LSL#8
ORR             R0, R4, R3,ASR#31
BLT             loc_107254
B               loc_1072C0
MOV             R1, #0
MOV             LR, #0x3A ; ':'
STRB            LR, [R3,R2]
MOV             R0, R1
MOV             R12, R3
MOV             R2, R1
LDRSB           R3, [R12,R2]
CMP             R3, #0x3A ; ':'
BEQ             loc_1072C8
MOV             R5, R0,LSL#8
ORR             LR, R5, R1,LSR#24
ADD             R2, R2, #1
CMP             R2, #8
ORR             R1, R3, R1,LSL#8
ORR             R0, LR, R3,ASR#31
BLT             loc_107298
MOV             R1, #0
MOV             R0, R1
LDR             R3, =unk_700AF8
MOV             R2, #0
ADD             LR, R3, R2,LSL#4
LDM             LR, {R12,LR}
EOR             R4, R12, R1
EOR             R12, LR, R0
ORRS            R12, R12, R4
BNE             loc_10731C
ADD             R0, R3, R2,LSL#4
MOV             R1, #0
LDR             R5, [R0,#8]
LDRSB           R2, [R0,#0xD]
MOV             R12, R1
STR             R1, [R0,#8]
STM             R0, {R1,R12}
CMP             R5, #0
MOV             R4, R1
BEQ             loc_107328
CMP             R2, #0
BNE             loc_107354
B               loc_107334
ADD             R2, R2, #1
CMP             R2, #0x20 ; ' '
BCC             loc_1072D0
ADD             SP, SP, #0xC
LDR             R0, =0xC8804465
POP             {R4,R5,PC}
LDR             R0, [R5]
LDR             R1, [R0,#0x30]
MOV             R0, R5
BLX             R1
LDR             R1, =byte_6D2578
LDR             R0, [R1,#(dword_6D2580 - 0x6D2578)]
CMP             R5, R0
STREQ           R4, [R1,#(dword_6D2580 - 0x6D2578)]
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4,R5,PC}

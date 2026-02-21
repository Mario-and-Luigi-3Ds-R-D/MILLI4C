LDR             R2, =unk_6E8CD0
MOV             R3, R0,LSL#20
PUSH            {R4}
LDR             R1, =0xFFFFF
LDRB            R2, [R2,#(byte_6E8EE0 - 0x6E8CD0)]
MOV             R3, R3,LSR#20
AND             R12, R0, #0xFF000
CMP             R12, #0xA1000
ADD             R3, R3, R3,LSL#1
BEQ             loc_145F54
AND             R0, R0, R1,ASR#8
CMP             R12, #0xC0000
ADD             R4, R0, R0,LSL#1
ADD             R0, R4, R0,LSL#3
BEQ             loc_145EBC
CMP             R12, #0xC1000
BEQ             loc_145E50
CMP             R12, #0xC2000
MOVNE           R0, #0
BNE             loc_145EB4
LDR             R12, =unk_648A78
ADD             R0, R12, R3,LSL#3
LDRB            R3, [R0,#0x10]
CMP             R3, #0xFF
BEQ             loc_145EB4
CMP             R2, #1
BEQ             loc_145E48
CMP             R2, #2
MOVEQ           R2, #0x12
BEQ             loc_145F38
CMP             R2, #5
MOVEQ           R2, #0x15
BEQ             loc_145F38
MOV             R2, #0x11
B               loc_145F38
LDR             R3, =unk_643220
ADD             R0, R3, R0,LSL#2
LDRB            R12, [R0,#0x10]
CMP             R12, #0xFF
BEQ             loc_145EB4
CMP             R2, #1
BEQ             loc_145E84
CMP             R2, #2
MOVEQ           R2, #0x12
BEQ             loc_145EA0
CMP             R2, #5
MOVEQ           R2, #0x15
BEQ             loc_145EA0
MOV             R2, #0x11
B               loc_145EA0
MOV             R0, R12,LSL#20
MOV             R0, R0,LSR#20
ADD             R12, R0, R0,LSL#1
ADD             R0, R12, R0,LSL#3
ADD             R0, R3, R0,LSL#2
LDRB            R12, [R0,#0x10]
CMP             R12, R2
LDRNE           R12, [R0,#0x14]
CMPNE           R12, R1
BNE             loc_145E8C
POP             {R4}
BX              LR
LDR             R3, =unk_646C64
ADD             R0, R3, R0,LSL#2
LDRB            R12, [R0,#0x10]
CMP             R12, #0xFF
BEQ             loc_145EB4
CMP             R2, #1
BEQ             loc_145EF0
CMP             R2, #2
MOVEQ           R2, #0x12
BEQ             loc_145F0C
CMP             R2, #5
MOVEQ           R2, #0x15
BEQ             loc_145F0C
MOV             R2, #0x11
B               loc_145F0C
MOV             R0, R12,LSL#20
MOV             R0, R0,LSR#20
ADD             R12, R0, R0,LSL#1
ADD             R0, R12, R0,LSL#3
ADD             R0, R3, R0,LSL#2
LDRB            R12, [R0,#0x10]
CMP             R12, R2
LDRNE           R12, [R0,#0x14]
CMPNE           R12, R1
BNE             loc_145EF8
POP             {R4}
BX              LR
MOV             R0, R3,LSL#20
MOV             R0, R0,LSR#20
ADD             R0, R0, R0,LSL#1
ADD             R0, R12, R0,LSL#3
LDRB            R3, [R0,#0x10]
CMP             R3, R2
LDRNE           R3, [R0,#0x14]
CMPNE           R3, R1
BNE             loc_145F28
POP             {R4}
BX              LR
LDR             R12, =unk_64AEA8
ADD             R0, R12, R3,LSL#3
LDRB            R3, [R0,#0x10]
CMP             R3, #0xFF
BEQ             loc_145EB4
CMP             R2, #1
BEQ             loc_145F88
CMP             R2, #2
MOVEQ           R3, #0x12
BEQ             loc_145FA0
CMP             R2, #5
MOVEQ           R3, #0x15
BEQ             loc_145FA0
MOV             R3, #0x11
B               loc_145FA0
MOV             R0, R2,LSL#20
MOV             R0, R0,LSR#20
ADD             R0, R0, R0,LSL#1
ADD             R0, R12, R0,LSL#3
LDRB            R2, [R0,#0x10]
CMP             R2, R3
LDRNE           R2, [R0,#0x14]
CMPNE           R2, R1
BNE             loc_145F90
POP             {R4}
BX              LR

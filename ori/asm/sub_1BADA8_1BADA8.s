PUSH            {R4-R6,LR}
MOV             R4, #2
LDR             R6, =off_6D1648
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, #2
BLE             locret_1BAE6C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #8
BNE             loc_1BAE50
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
BNE             loc_1BAE50
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BEQ             loc_1BAE70
MOV             R0, #0
LDRB            R1, [R0,#9]
CMP             R1, #0
BEQ             loc_1BAE50
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #0
BLX             R2
LDR             R0, [R6]
ADD             R4, R4, #1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R4
BGT             loc_1BADCC
POP             {R4-R6,PC}
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
LDREQ           R0, [R5,#0xAA8]
BNE             loc_1BAE30
B               loc_1BAE34

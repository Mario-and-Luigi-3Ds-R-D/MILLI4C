PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x584]
LDR             R4, [R5,#0x580]
CMP             R0, R4
BEQ             loc_27042C
LDR             R0, [R4]
LDR             R0, [R0,#0x71C]
CMP             R0, #0
BEQ             loc_27041C
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R0, [R5,#0x584]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_270400
LDR             R0, [R5,#0x6C8]!
CMP             R0, #0
BEQ             loc_270444
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_270478
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_27046C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R5]
POP             {R4-R6,PC}
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_27046C

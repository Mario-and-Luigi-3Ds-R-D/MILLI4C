LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R2, [R3,#8]
MOV             R1, #0
LDR             R0, [R0]
RSB             R2, R2, R2,LSL#3
LDR             R0, [R0,#0xA4]
ADD             R2, R2, R2,LSL#1
ADD             R0, R0, R2,LSL#3
ADD             R0, R0, #0x40000
ADD             R0, R0, #0xA400
LDR             R2, [R0]
LDR             R3, [R2,#0x10]
ADD             R2, R0, #0xC
BLX             R3
MOV             R0, #0
POP             {R4,PC}

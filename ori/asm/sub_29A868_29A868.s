PUSH            {R4-R6,LR}
MOV             R5, R0
STR             R1, [R0]
LDR             R4, [R1,#0xA4]
LDR             R0, [R4,#0x168]
LDR             R1, [R4,#0x164]
SUB             R0, R0, R1
MOV             R6, R0,ASR#2
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_29A8A4
SUB             R0, R0, #8
BL              sub_2FF5D4
MOV             R0, #0
STR             R0, [R5,#4]
MOV             R0, #8
MOV             R3, #0
LDR             R1, =dword_6ED9B8
ADD             R0, R0, R6,LSL#4
MOV             R2, R3
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_29A8E8
ADD             R0, R0, #8
SUB             R12, R0, #8
MOV             R1, #0x10
STM             R12, {R1,R6}
MOV             R2, R1
LDR             R1, =sub_29ABAC
MOV             R3, R6
BLX             sub_1002F4
CMP             R6, #0
MOV             R1, #0
STR             R0, [R5,#4]
BLE             locret_29A958
LDR             R0, [R4,#0x188]
AND             R0, R0, #4
MOVS            R0, R0,LSR#2
LDR             R0, [R4,#0x164]
BEQ             loc_29A92C
LDR             R0, [R0,R1,LSL#2]
LDR             R2, [R0,#0x24]
CMP             R2, #0
LDRGT           R0, [R0,#0x10]
LDRGT           R0, [R0]
MOVLE           R0, #0
ADD             R0, R0, #0x24 ; '$'
B               loc_29A938
LDR             R0, [R0,R1,LSL#2]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x24 ; '$'
ADD             R0, R0, #0x80
LDR             R2, [R5,#4]
VLDM            R0, {S0-S3}
ADD             R0, R2, R1,LSL#4
ADD             R1, R1, #1
CMP             R1, R6
VSTM            R0, {S0-S3}
BLT             loc_29A8F8
POP             {R4-R6,PC}

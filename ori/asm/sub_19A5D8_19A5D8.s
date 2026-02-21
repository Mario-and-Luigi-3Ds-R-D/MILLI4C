PUSH            {R4-R6,LR}
MOV             R4, R1
ADD             R5, R0, R4
LDRB            R0, [R5,#0x1B8]
CMP             R0, #0xFF
BNE             locret_19A654
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, =unk_68AF34
LDR             R3, [R1,R4,LSL#2]
LDR             R1, =0x14287
LDRB            R2, [R1,R0]
MOV             R1, #0
CMP             R2, #0
ADDGT           R0, R0, #0x13C00
ADDGT           R0, R0, #0x94
LDRGT           R0, [R0]
BLE             loc_19A64C
ADD             R12, R1, R1,LSL#1
ADD             R12, R0, R12,LSL#5
LDR             R12, [R12,#0x34]
CMP             R12, R3
BNE             loc_19A640
AND             R0, R1, #0xFF
B               loc_19A650
ADD             R1, R1, #1
CMP             R2, R1
BGT             loc_19A624
MOV             R0, #0xFF
STRB            R0, [R5,#0x1B8]
POP             {R4-R6,PC}

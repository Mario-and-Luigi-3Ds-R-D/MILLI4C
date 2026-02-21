PUSH            {R4-R6,LR}
MOV             R5, R0
BL              sub_2004B8
LDR             R0, [R5,#0x218]
LDR             R1, [R0]
LDR             R1, [R1,#0x140]
BLX             R1
LDR             R0, [R5,#0x21C]
LDR             R1, [R0]
LDR             R1, [R1,#0x140]
BLX             R1
LDR             R0, [R5]
LDR             R1, [R0,#0xB4]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_19751C
LDR             R0, [R5]
LDR             R1, [R0,#0xFC]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_19751C
LDRB            R0, [R5,#0x3B4]
MOV             R4, #0
CMP             R0, #0
BLE             loc_1974DC
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x374]
MOV             R0, #0
CMP             R0, #0
NOP
BNE             loc_19751C
LDRB            R0, [R5,#0x3B4]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1974B4
LDR             R1, =0x3CE
MOV             R0, #0xFFFFFFFF
STRH            R0, [R1,R5]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19C4B4
LDR             R1, =off_68BBB8
LDRD            R0, R1, [R1,#(off_68BBC0 - 0x68BBB8)]
STRD            R0, R1, [R5,#4]
LDR             R0, [R5,#0x3D0]
BIC             R0, R0, #0x3C ; '<'
STR             R0, [R5,#0x3D0]
MOV             R0, R5
POP             {R4-R6,LR}
MOV             R1, #1
B               sub_21D12C

MOV             R12, R0
PUSH            {R4,LR}
LDRH            R0, [R0,#0x24]
CMP             R0, #0
BNE             loc_11C9E0
AND             R2, R1, #0x80000000
CMP             R2, #0
MOV             R0, R1
MOVGE           R0, #1
STR             R1, [R12,#4]
BGE             locret_11C9E4
AND             R2, R0, #0x3FC00
MOV             R3, R2,LSR#10
MOV             R2, R1,LSL#22
CMP             R3, #0x11
MOV             R2, R2,LSR#22
BNE             loc_11C8B4
CMP             R2, #0x154
BLT             loc_11C8B4
CMP             R2, #0x168
LDRLT           R0, =0x2001
STRHLT          R0, [R12,#0x24]
BLT             loc_11C9E0
CMP             R3, #0x11
BNE             loc_11C8D4
CMP             R2, #0x168
BLT             loc_11C8D4
LDR             R4, =0x185
CMP             R2, R4
LDRLE           R0, =0x2002
BLE             loc_11C8F4
CMP             R3, #0x11
BNE             loc_11C8FC
LDR             LR, =0x186
CMP             R2, LR
BLT             loc_11C8FC
CMP             R2, #0x190
LDRLT           R0, =0x2003
BGE             loc_11C8FC
STRH            R0, [R12,#0x24]
B               loc_11C9E0
CMP             R3, #0x11
MOV             LR, R1,LSR#31
BNE             loc_11C930
CMP             R2, #0xE6
BLT             loc_11C930
CMP             R2, #0x154
BGE             loc_11C930
LDR             R1, =0x2008
STRH            R1, [R12,#0x24]
MOV             R1, PC
CMP             LR, #0
BEQ             loc_11C9E0
B               loc_11C9D8
CMP             R3, #0x11
BNE             loc_11C95C
CMP             R2, #0x64 ; 'd'
BLT             loc_11C95C
CMP             R2, #0xB3
MOV             R1, R2
BGT             loc_11C95C
CMP             R1, #0x82
LDRGE           R0, =0x2005
LDRLT           R0, =0x2004
B               loc_11C8F4
CMP             R3, #0x11
BNE             loc_11C978
CMP             R2, #0xB4
BLT             loc_11C978
CMP             R2, #0xC7
LDRLE           R0, =0x2006
BLE             loc_11C8F4
CMP             R3, #0x11
BNE             loc_11C9A8
CMP             R2, #0xE6
BLT             loc_11C9A8
CMP             R2, #0x154
BGE             loc_11C9A8
LDR             R1, =0x200A
STRH            R1, [R12,#0x24]
MOV             R1, PC
CMP             LR, #0
BEQ             loc_11C9E0
B               loc_11C9D8
CMP             R3, #0x11
BNE             loc_11C9C4
CMP             R2, #0xC8
BLT             loc_11C9C4
CMP             R2, #0xDB
LDRLE           R0, =0x2007
BLE             loc_11C8F4
LDR             R1, =0x2009
STRH            R1, [R12,#0x24]
MOV             R1, PC
CMP             LR, #0
BEQ             loc_11C9E0
NOP
BL              sub_10E1F8
MOV             R0, #0
POP             {R4,PC}

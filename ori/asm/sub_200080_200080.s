MOV             R0, R4
BL              sub_1F3BC8
VMOV.F32        S1, S19
MOV             R2, #0
LDR             R0, =0x20034
MOV             R1, R2
BL              sub_1459F8
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x11E
MOV             R3, #1
MOV             R2, SP
LDRH            R1, [R1,R4]
BL              sub_168114
STR             R0, [R4,#0x10C]
MOV             R1, #0
ADD             R0, R4, #0x110
BL              sub_485780
LDR             R1, =0x7FFF
ADD             R0, R4, #0x110
BL              sub_123C70
MOV             R1, #0x200
ADD             R0, R4, #0x110
BL              sub_123CE8
LDR             R0, [R4,#0x10C]
ADD             R1, R4, #0x10C
ADD             R0, R0, #0x134
VSTM            R0, {S16-S18}
LDR             R0, [R4,#0x10C]
STR             R1, [R0,#0x180]
LDR             R1, =dword_68BC10
LDRD            R0, R1, [R1,#(dword_68BC40 - 0x68BC10)]
STRD            R0, R1, [R4,#0xFC]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4,R5,PC}

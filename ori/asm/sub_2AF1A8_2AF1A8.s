PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
MOV             R3, R1
LDR             R2, =unk_67AF04
RSB             R3, R3, R3,LSL#4
LDR             R12, [R0,#0x40]
ADR             R1, aRomFeventFeven; "rom:/FEvent/FEvent.dat"
ADD             R3, R12, R3,LSL#2
STR             R0, [R3,#0x18]
MOV             R0, R3
BL              sub_158B60
ADD             R4, R4, #0x14400
MOV             R0, #0
STR             R0, [R4]
POP             {R4,PC}

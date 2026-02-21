PUSH            {R4,LR}
MOV             R4, R0
SUB             SP, SP, #0x10
LDRD            R0, R1, [R4,#0x5C]
ADD             R2, R4, #0x154
STMEA           SP, {R0-R2}
LDR             R0, [R4]
LDR             R1, [R4,#0x58]
LDR             R2, [R4,#0x8C]
LDR             R3, [R4,#0x154]
LDR             R12, [R0,#0x80]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x154]
LDR             R1, [R4,#0x5C]
CMP             R1, R0
BHI             loc_1EAF54
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E2C4 - 0x67E18C)]; sub_1EAF60
LDR             R0, [R0,#(dword_67E2C8 - 0x67E18C)]
STR             R0, [R4,#0x50]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
STR             R1, [R4,#0x4C]
BEQ             loc_1EAF48
LDR             R2, [R0]
LDR             R1, [R2,R1]
ADD             SP, SP, #0x10
POP             {R4,LR}
BX              R1
ADD             SP, SP, #0x10
POP             {R4,PC}

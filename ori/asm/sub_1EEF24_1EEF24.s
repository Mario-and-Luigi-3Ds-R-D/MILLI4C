PUSH            {R3-R5,LR}
MOV             R4, R0
ADD             R0, R0, #0x154
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4]
LDR             R1, [R4,#0x90]
LDR             R2, [R4,#0x154]
LDR             R3, [R4,#0x74]
LDR             R12, [R0,#0x84]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x154]
LDR             R1, [R4,#0x74]
CMP             R0, R1
BCC             locret_1EEF6C
LDR             R1, =off_67E18C
LDRD            R0, R1, [R1,#(off_67E274 - 0x67E18C)]
STRD            R0, R1, [R4,#0x4C]
POP             {R3-R5,PC}

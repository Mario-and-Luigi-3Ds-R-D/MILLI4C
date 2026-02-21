PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC4]
LDR             R2, =0x468
LDR             R0, [R0,#4]
LDR             R1, [R0,#4]
LDR             R0, [R0,#8]
LDRH            R2, [R2,R1]
CMP             R2, #5
BCC             loc_1EC8EC
SUB             R3, R2, #8
CMP             R3, #8
MOV             R2, #0xF
BCS             loc_1EC8CC
LDR             R1, [R1,#0x86C]
BICS            R1, R2, R1
BNE             loc_1EC8CC
LDR             R1, =0x468
LDRH            R1, [R1,R0]
CMP             R1, #5
BCC             loc_1EC8EC
LDR             R1, =0x468
LDRH            R1, [R1,R0]
SUB             R1, R1, #8
CMP             R1, #8
BCS             locret_1EC918
LDR             R0, [R0,#0x86C]
BICS            R0, R2, R0
BNE             locret_1EC918
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E1AC
LDM             R0, {R1,R2}
MOV             R0, R4
BLX             R12
LDR             R1, =off_67E18C
LDR             R0, [R1,#(dword_67E35C - 0x67E18C)]
LDR             R1, [R1,#(dword_67E360 - 0x67E18C)]
STRD            R0, R1, [R4,#0x4C]
POP             {R4,PC}

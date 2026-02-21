MOV             R1, #0x850
PUSH            {R4,LR}
LDRH            R1, [R1,R0]
ADD             R4, R0, #0x400
TST             R1, #4
BEQ             loc_1952EC
LDR             R0, [R0,#0x828]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0x68]
STRH            R1, [R4,#0x68]
LDRH            R0, [R0,#0x6C]
B               loc_195308
LDRH            R1, [R4,#0x68]
CMP             R1, #5
BLCC            sub_580CFC
LDRH            R0, [R4,#0x68]
LDR             R1, =unk_67DE10
AND             R0, R0, #0xFF
LDRB            R0, [R1,R0]
STRH            R0, [R4,#0x6C]
POP             {R4,PC}

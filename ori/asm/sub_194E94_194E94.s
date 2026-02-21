LDRB            R1, [R0,#0xDE]
TST             R1, #1
BEQ             locret_194EBC
ADD             R1, R0, #0x800
LDRD            R2, R3, [R1,#0x38]
LDR             R1, [R0,#0x840]
STR             R1, [R0,#0x84C]
ADD             R0, R0, #0x800
ADD             R0, R0, #0x44 ; 'D'
STM             R0, {R2,R3}
BX              LR

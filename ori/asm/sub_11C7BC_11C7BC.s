LDR             R12, =dword_6EF02C
LDR             R1, [R12,#(dword_6EF034 - 0x6EF02C)]
LDR             R2, [R12,#(dword_6EF030 - 0x6EF02C)]
SUB             R1, R1, #8
CMP             R2, R1
BHI             locret_11C818
LDR             R3, [R1]
CMP             R3, R0
BNE             loc_11C81C
MOV             R0, #0
STR             R0, [R1]
LDR             R0, [R12,#(dword_6EF034 - 0x6EF02C)]
SUB             R0, R0, #8
CMP             R0, R1
LDREQ           R0, [R12,#(dword_6EF030 - 0x6EF02C)]
BNE             locret_11C818
SUB             R1, R1, #8
CMP             R0, R1
LDRLS           R2, [R1]
CMPLS           R2, #0
BEQ             loc_11C7FC
ADD             R0, R1, #8
STR             R0, [R12,#(dword_6EF034 - 0x6EF02C)]
BX              LR
SUB             R1, R1, #8
CMP             R2, R1
BLS             loc_11C7D4
BX              LR

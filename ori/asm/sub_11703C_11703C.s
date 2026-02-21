LDR             R1, =off_6BFDD4
PUSH            {R4}
MOV             R12, #0
STR             R1, [R0]
STR             R12, [R0,#8]
LDR             R3, =off_6B192C
STR             R12, [R0,#0xC]
STR             R12, [R0,#0x10]
STR             R12, [R0,#0x14]
STR             R12, [R0,#0x18]
LDR             R1, [R3,#(off_6B1930 - 0x6B192C)]; off_696C8C
STR             R1, [R0]
LDR             R2, [R1,#(dword_696C5C - 0x696C8C)]
LDR             R12, [R3,#(off_6B1950 - 0x6B192C)]; off_696C8C
STR             R12, [R0,R2]
LDR             R2, [R3,#(off_6B1954 - 0x6B192C)]; unk_696EE8
STR             R2, [R0,#4]
LDR             R1, [R3]; off_6B187C
STR             R1, [R0]
LDR             R1, [R1,#(dword_6B184C - 0x6B187C)]
LDR             R2, [R3,#(off_6B1958 - 0x6B192C)]; off_6B187C
STR             R2, [R0,R1]
LDR             R1, [R3,#(off_6B195C - 0x6B192C)]; unk_6B18F4
STR             R1, [R0,#4]
POP             {R4}
BX              LR

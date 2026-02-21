PUSH            {R3-R5,LR}
BL              sub_1083F4
LDR             R4, =byte_6CF938
CMP             R0, #0
BEQ             loc_106510
LDRB            R0, [R4,#(byte_6CF939 - 0x6CF938)]
CMP             R0, #0
BEQ             loc_1064C4
MOV             R0, #0
BL              sub_10827C
B               loc_106510
LDR             R0, =dword_6EB9F0
BL              sub_10DCDC
CMP             R0, #0
NOP
BEQ             loc_106510
MOV             R0, #1
BL              sub_10827C
LDR             R0, =dword_6CF94C
NOP
BL              sub_120E7C
LDR             R0, =dword_6EB9F0
NOP
BL              sub_1327BC
NOP
NOP
BL              sub_10F224
LDR             R0, =dword_6E7CD0
NOP
BL              sub_109634
NOP
BL              sub_10F80C
CMP             R0, #0
NOP
BNE             loc_10666C
BL              sub_10F3D8
CMP             R0, #0
NOP
BNE             loc_10666C
BL              sub_109E48
CMP             R0, #0
NOP
BEQ             locret_106670
BL              sub_1086DC
CMP             R0, #0
NOP
BEQ             loc_10667C
LDR             R0, =dword_6CF944
BL              sub_120F58
LDR             R0, =dword_6EB9F0
NOP
BL              sub_10DCDC
CMP             R0, #0
NOP
BEQ             loc_10667C
MOV             R0, #1
BL              sub_10F284
LDR             R0, =dword_6E9820
LDRB            R0, [R0,#(byte_6E99B4 - 0x6E9820)]
CMP             R0, #0
BNE             loc_106618
MOV             R1, #0
MOV             R0, SP
REV             R1, R1
STR             R1, [SP,#0x10+var_10]
BL              sub_11027C
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, #0x400
BL              sub_1102FC
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, #0x410
BL              sub_1102FC
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
LDR             R1, =0x401
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
BL              sub_1102FC
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
LDR             R0, =0x402
NOP
BL              sub_11667C
NOP
NOP
BL              sub_10F224
LDR             R1, =dword_6E9820
MOV             R0, #1
STRB            R0, [R1,#(byte_6E99B4 - 0x6E9820)]
NOP
BL              sub_10C984
NOP
NOP
BL              sub_1082E8
LDR             R0, =dword_6EB9F0
NOP
BL              sub_1327BC
LDR             R0, =dword_6CF944
NOP
BL              sub_118998
NOP
NOP
BL              sub_10F80C
CMP             R0, #0
NOP
BNE             loc_10666C
BL              sub_10F3D8
CMP             R0, #0
NOP
BEQ             loc_106674
MOV             R0, #0
POP             {R3-R5,PC}
MOV             R0, #1
BL              sub_10F264
LDRB            R0, [R4]
CMP             R0, #0
BEQ             loc_106694
BL              sub_10F224
MOV             R0, #0
STRB            R0, [R4]
MOV             R0, #1
POP             {R3-R5,PC}

LDR             R0, =dword_6D256C
PUSH            {R4,LR}
LDR             R0, [R0]
CMP             R0, #0
LDREQ           R0, =0xE0A046DB
MOVEQ           R1, PC
BLEQ            sub_10E1F8
LDR             R0, =unk_6D2568
LDR             R0, [R0,#(dword_6D256C - 0x6D2568)]
POP             {R4,PC}

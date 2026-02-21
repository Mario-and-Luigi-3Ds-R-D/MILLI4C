PUSH            {R4,LR}
LDR             R4, =dword_6D3930
LDR             R0, [R4]
CMP             R0, #0
LDREQ           R0, =dword_7017A8
MOVEQ           R1, #0x400
STREQ           R0, [R4]
BLEQ            sub_11DBEC
LDR             R0, [R4]
POP             {R4,PC}

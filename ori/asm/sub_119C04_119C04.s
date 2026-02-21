LDR             R12, =dword_6D4B88
LDR             R12, [R12]
CMP             R12, #0
LDRLE           R0, =0xD8A067F8
BLE             locret_119C28
CMP             R2, #8
LDRGT           R0, =0xD9006405
BGT             locret_119C28
B               sub_119C74
BX              LR

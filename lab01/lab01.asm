format MZ
entry seg_code:main
stack 200h

segment seg_data
msg db 13, 10, 'Hello, world!$'

segment seg_code
main:
  mov AX, seg_data
  mov DS, AX

  mov AH, 09h
  mov DX, msg
  int 21h

  mov AH, 07h
  int 21h

  mov AH, 4Ch
  int 21h

// BadApple by TheAypisamFpv

// V 1.0 : 37 Frames
// V 1.1 : 39 Frames :  pixels sharing compression
// V 1.2 : 46 Frames (up to frame 229) : 1/4 frames used

// write Bad Apple 
ldi r15 clear_chars_buffer
str r15 r0
ldi r15 write_char
ldi r14 "B"
str r15 r14
ldi r14 "A"
str r15 r14
ldi r14 "D"
str r15 r14
ldi r14 " "
str r15 r14
ldi r14 "A"
str r15 r14
ldi r14 "P"
str r15 r14
ldi r14 "P"
str r15 r14
ldi r14 "L"
str r15 r14
ldi r14 "E"
str r15 r14
ldi r14 " "
str r15 r14
// Push character buffer
ldi r15 buffer_chars
str r15 0


// r0 zero register
// r1 x_1
// r2 y_1
// r3 none
// r4 none
// r5 none
// r6 none
// r7 none
// r8 none
// r9 pixel_x
// r10 pixel_y
// r11  frame counter
// r12  show_number
// r13  clear_pixel
// r14  draw_pixel
// r15  buffer_screen

ldi r8 pixel_x //old r12
ldi r9 pixel_y //old r13
ldi r12 show_number //old r9
ldi r13 clear_pixel //old r10
ldi r14 draw_pixel
ldi r15 buffer_screen


.loop
//----------------START----------------


// frame 49 - 8 instructions
ldi r1 23
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 53 - 13 instructions
ldi r1 22
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r1 23
ldi r2 13
cal .push_to_screen_buffer
cal .frame_inc

// frame 57 - 38 instructions
ldi r1 21
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 22
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 23
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 61 - 47 instructions
ldi r1 18
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 19
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 20
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 21
ldi r2 17
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 65 - 30 instructions
ldi r1 17
ldi r2 18
cal .push_to_screen_buffer
ldi r1 18
ldi r2 20
cal .clear_from_screen_buffer
ldi r2 17
cal .clear_from_screen_buffer
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 19
cal .clear_from_screen_buffer
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 20
cal .clear_from_screen_buffer
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 21
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 22
cal .clear_from_screen_buffer
cal .frame_inc

// frame 69 - 33 instructions
ldi r1 8
ldi r2 17
cal .push_to_screen_buffer
ldi r1 17
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 19
ldi r2 20
cal .clear_from_screen_buffer
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 20
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 21
cal .clear_from_screen_buffer
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 22
cal .clear_from_screen_buffer
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 23
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 73 - 32 instructions
ldi r1 8
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 9
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 13
ldi r2 18
cal .push_to_screen_buffer
ldi r1 19
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 22
ldi r2 15
cal .push_to_screen_buffer
cal .frame_inc

// frame 77 - 46 instructions
ldi r1 8
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 9
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r1 10
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 11
ldi r2 19
cal .push_to_screen_buffer
ldi r1 13
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 20
ldi r2 20
cal .clear_from_screen_buffer
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 18
cal .clear_from_screen_buffer
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 21
ldi r2 16
cal .push_to_screen_buffer
cal .frame_inc

// frame 81 - 32 instructions
ldi r1 9
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 10
ldi r2 14
cal .push_to_screen_buffer
ldi r1 11
ldi r2 20
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 12
ldi r2 19
cal .push_to_screen_buffer
ldi r1 13
ldi r2 18
cal .push_to_screen_buffer
ldi r1 21
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 23
ldi r2 13
cal .clear_from_screen_buffer
cal .frame_inc

// frame 85 - 30 instructions
ldi r1 10
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 11
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 12
ldi r2 20
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 13
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 14
cal .push_to_screen_buffer
ldi r1 22
ldi r2 15
cal .clear_from_screen_buffer
cal .frame_inc

// frame 89 - 28 instructions
ldi r1 11
ldi r2 12
cal .push_to_screen_buffer
ldi r1 13
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 14
ldi r2 18
cal .clear_from_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 22
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 23
ldi r2 14
cal .clear_from_screen_buffer
cal .frame_inc

// frame 93 - 29 instructions
ldi r1 12
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 14
ldi r2 19
cal .push_to_screen_buffer
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 20
ldi r2 12
cal .push_to_screen_buffer
ldi r1 21
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 22
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 23
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 97 - 21 instructions
ldi r1 14
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 20
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 21
ldi r2 20
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 22
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 101 - 38 instructions
ldi r1 12
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 16
cal .clear_from_screen_buffer
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 20
ldi r2 20
cal .push_to_screen_buffer
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 21
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 22
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 105 - 33 instructions
ldi r1 11
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 12
ldi r2 15
cal .clear_from_screen_buffer
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 13
cal .clear_from_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 19
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 20
ldi r2 15
cal .push_to_screen_buffer
ldi r1 21
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 109 - 18 instructions
ldi r1 11
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 20
cal .push_to_screen_buffer
ldi r1 17
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 19
ldi r2 16
cal .push_to_screen_buffer
ldi r1 20
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 113 - 28 instructions
ldi r1 13
ldi r2 20
cal .clear_from_screen_buffer
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 13
cal .clear_from_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 19
ldi r2 20
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 20
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 117 - 15 instructions
ldi r1 10
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 19
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 121 - 22 instructions
ldi r1 11
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 12
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 18
ldi r2 20
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 19
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 125 - 13 instructions
ldi r1 12
ldi r2 20
cal .clear_from_screen_buffer
ldi r2 19
cal .clear_from_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 18
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 129 - 4 instructions
ldi r1 11
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 133 - 12 instructions
ldi r1 10
ldi r2 12
cal .push_to_screen_buffer
ldi r1 11
ldi r2 13
cal .push_to_screen_buffer
ldi r1 12
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
cal .frame_inc

// frame 137 - 27 instructions
ldi r1 11
ldi r2 12
cal .push_to_screen_buffer
ldi r1 12
ldi r2 20
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r1 13
ldi r2 19
cal .push_to_screen_buffer
ldi r1 14
ldi r2 14
cal .push_to_screen_buffer
ldi r1 17
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 17
cal .clear_from_screen_buffer
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 14
cal .clear_from_screen_buffer
cal .frame_inc

// frame 141 - 24 instructions
ldi r1 12
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 13
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 14
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 19
ldi r2 13
cal .clear_from_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 145 - 11 instructions
ldi r1 13
ldi r2 15
cal .clear_from_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r1 17
ldi r2 18
cal .clear_from_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
cal .frame_inc

// frame 149 - 25 instructions
ldi r1 13
ldi r2 20
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 14
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 17
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 19
ldi r2 14
cal .clear_from_screen_buffer
cal .frame_inc

// frame 153 - 9 instructions
ldi r1 13
ldi r2 15
cal .push_to_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 16
cal .clear_from_screen_buffer
cal .frame_inc

// frame 157 - 11 instructions
ldi r1 13
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 14
ldi r2 19
cal .push_to_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
cal .frame_inc

// frame 161 - 10 instructions
ldi r1 13
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 16
cal .push_to_screen_buffer
ldi r1 18
ldi r2 17
cal .clear_from_screen_buffer
cal .frame_inc

// frame 165 - 11 instructions
ldi r1 15
ldi r2 17
cal .push_to_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 14
ldi r2 20
cal .push_to_screen_buffer
ldi r1 16
cal .push_to_screen_buffer
cal .frame_inc

// frame 169 - 32 instructions
ldi r1 13
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 20
cal .clear_from_screen_buffer
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 15
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 16
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r1 18
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 19
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 173 - 15 instructions
ldi r1 13
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 19
cal .push_to_screen_buffer
ldi r1 18
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 19
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 177 - 21 instructions
ldi r1 16
ldi r2 20
cal .push_to_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r2 15
cal .clear_from_screen_buffer
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 18
ldi r2 20
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 181 - 20 instructions
ldi r1 13
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 15
ldi r2 20
cal .push_to_screen_buffer
ldi r1 17
ldi r2 17
cal .push_to_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 15
cal .push_to_screen_buffer
cal .frame_inc

// frame 185 - 15 instructions
ldi r1 12
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 14
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 189 - 8 instructions
ldi r1 12
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
cal .frame_inc

// frame 193 - 11 instructions
ldi r1 13
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 197 - 12 instructions
ldi r1 13
ldi r2 19
cal .clear_from_screen_buffer
ldi r1 16
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 17
ldi r2 15
cal .push_to_screen_buffer
cal .frame_inc

// frame 201 - 20 instructions
ldi r1 12
ldi r2 14
cal .push_to_screen_buffer
ldi r1 13
ldi r2 20
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 14
ldi r2 20
cal .push_to_screen_buffer
ldi r1 16
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 15
cal .clear_from_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 205 - 28 instructions
ldi r1 12
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 13
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .clear_from_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 14
ldi r2 20
cal .clear_from_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r1 16
ldi r2 20
cal .clear_from_screen_buffer
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 16
cal .clear_from_screen_buffer
cal .frame_inc

// frame 209 - 23 instructions
ldi r1 13
ldi r2 16
cal .push_to_screen_buffer
ldi r1 14
ldi r2 20
cal .push_to_screen_buffer
ldi r2 15
cal .clear_from_screen_buffer
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 17
ldi r2 20
cal .clear_from_screen_buffer
ldi r2 19
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 213 - 15 instructions
ldi r1 13
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 18
cal .push_to_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 16
ldi r2 20
cal .push_to_screen_buffer
ldi r1 18
ldi r2 13
cal .clear_from_screen_buffer
cal .frame_inc

// frame 217 - 15 instructions
ldi r1 13
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
ldi r1 14
ldi r2 17
cal .push_to_screen_buffer
ldi r1 17
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 15
cal .clear_from_screen_buffer
cal .frame_inc

// frame 221 - 10 instructions
ldi r1 13
ldi r2 15
cal .push_to_screen_buffer
ldi r1 17
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 16
cal .clear_from_screen_buffer
cal .frame_inc

// frame 225 - 16 instructions
ldi r1 13
ldi r2 14
cal .push_to_screen_buffer
ldi r1 14
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 19
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 229 - 9 instructions
ldi r1 14
ldi r2 12
cal .push_to_screen_buffer
ldi r1 15
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
cal .frame_inc


//-----------------END-----------------
hlt

.push_to_screen_buffer
str r8 r1
str r9 r2
str r14 0
ret

.clear_from_screen_buffer
str r8 r1
str r9 r2
str r13 0
ret

.frame_inc
str r15 0
inc r11
str r12 r11
ret

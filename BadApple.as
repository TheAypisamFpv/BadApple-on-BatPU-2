// BadApple by TheAypisamFpv

// r1  x
// r2  y
// r3 screen_x
// r4 screen_y
// r7 frame adder
// r8 frame counter
// r9 frame display
// r10  clear_pixel
// r11  clear_screen_buffer
// r12  pixel_x
// r13  pixel_y
// r14  draw_pixel
// r15  buffer_screen

ldi r15 clear_chars_buffer
str r15 r0

// Write "BAD APPLE"
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

// Push character buffer
ldi r15 buffer_chars
str r15 0

ldi r9 show_number
ldi r10 clear_pixel
ldi r11 clear_screen_buffer
ldi r12 pixel_x
ldi r13 pixel_y
ldi r14 draw_pixel
ldi r15 buffer_screen


.loop
//----------------START----------------

ldi r7 4

// frame 49 - 7 instructions
ldi r1 23
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 53 - 12 instructions
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

// frame 57 - 37 instructions
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

// frame 61 - 46 instructions
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

// frame 65 - 29 instructions
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

// frame 69 - 32 instructions
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

// frame 73 - 31 instructions
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

// frame 77 - 45 instructions
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

// frame 81 - 31 instructions
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

// frame 85 - 29 instructions
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

// frame 89 - 27 instructions
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

// frame 93 - 28 instructions
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

// frame 97 - 20 instructions
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

// frame 101 - 37 instructions
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

// frame 105 - 32 instructions
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

// frame 109 - 17 instructions
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

// frame 113 - 27 instructions
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

// frame 117 - 14 instructions
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

// frame 121 - 21 instructions
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

// frame 125 - 12 instructions
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

// frame 129 - 3 instructions
ldi r1 11
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 133 - 11 instructions
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

// frame 137 - 26 instructions
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

// frame 141 - 23 instructions
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

// frame 145 - 10 instructions
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

// frame 149 - 24 instructions
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

// frame 153 - 8 instructions
ldi r1 13
ldi r2 15
cal .push_to_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 16
cal .clear_from_screen_buffer
cal .frame_inc

// frame 157 - 10 instructions
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

// frame 161 - 9 instructions
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

// frame 165 - 10 instructions
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

// frame 169 - 31 instructions
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

// frame 173 - 14 instructions
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

// frame 177 - 20 instructions
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

// frame 181 - 19 instructions
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

// frame 185 - 14 instructions
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

// frame 189 - 7 instructions
ldi r1 12
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
cal .frame_inc

// frame 193 - 10 instructions
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

// frame 197 - 11 instructions
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

// frame 201 - 19 instructions
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

// frame 205 - 27 instructions
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

// frame 209 - 22 instructions
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

// frame 213 - 14 instructions
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

// frame 217 - 14 instructions
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

// frame 221 - 9 instructions
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

// frame 225 - 15 instructions
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

// frame 229 - 8 instructions
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
str r12 r1
str r13 r2
str r14 0
ret

.clear_from_screen_buffer
str r12 r1
str r13 r2
str r10 0
ret

.frame_inc
str r15 0
add r8 r7 r8
str r9 r8
ret

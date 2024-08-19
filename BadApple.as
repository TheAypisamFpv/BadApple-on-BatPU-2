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


define pixel_x_port -8
define pixel_y_port -7

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

ldi r7 2

// frame 19
ldi r1 22
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 23
cal .push_to_screen_buffer
ldi r1 22
ldi r2 15
cal .push_to_screen_buffer
ldi r1 23
cal .push_to_screen_buffer
ldi r1 22
ldi r2 14
cal .push_to_screen_buffer
ldi r1 23
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
cal .frame_inc

// frame 21
ldi r1 20
ldi r2 20
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 22
cal .push_to_screen_buffer
ldi r1 23
cal .push_to_screen_buffer
ldi r1 20
ldi r2 19
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 22
cal .push_to_screen_buffer
ldi r1 23
cal .push_to_screen_buffer
ldi r1 20
ldi r2 18
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 22
cal .push_to_screen_buffer
ldi r1 23
cal .push_to_screen_buffer
ldi r1 20
ldi r2 17
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 23
cal .push_to_screen_buffer
ldi r1 20
ldi r2 16
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 19
ldi r2 15
cal .push_to_screen_buffer
ldi r1 20
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 20
ldi r2 14
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 22
cal .push_to_screen_buffer
ldi r1 21
ldi r2 12
cal .push_to_screen_buffer
ldi r1 22
cal .push_to_screen_buffer
ldi r1 23
cal .push_to_screen_buffer
cal .frame_inc

// frame 23
ldi r1 19
ldi r2 20
cal .push_to_screen_buffer
ldi r1 18
ldi r2 19
cal .push_to_screen_buffer
ldi r1 19
cal .push_to_screen_buffer
ldi r1 17
ldi r2 18
cal .push_to_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 19
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 20
cal .clear_from_screen_buffer
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 21
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 25
ldi r1 19
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 19
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r1 8
ldi r2 17
cal .push_to_screen_buffer
ldi r1 19
cal .clear_from_screen_buffer
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 20
cal .clear_from_screen_buffer
ldi r1 21
cal .clear_from_screen_buffer
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 22
cal .clear_from_screen_buffer
ldi r1 21
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 22
cal .clear_from_screen_buffer
ldi r1 21
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 22
cal .clear_from_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 23
cal .clear_from_screen_buffer
cal .frame_inc

// frame 27
ldi r1 8
ldi r2 20
cal .push_to_screen_buffer
ldi r1 9
cal .push_to_screen_buffer
ldi r1 10
cal .push_to_screen_buffer
ldi r1 20
cal .clear_from_screen_buffer
ldi r1 8
ldi r2 19
cal .push_to_screen_buffer
ldi r1 9
cal .push_to_screen_buffer
ldi r1 19
cal .clear_from_screen_buffer
ldi r1 20
cal .clear_from_screen_buffer
ldi r1 8
ldi r2 18
cal .push_to_screen_buffer
ldi r1 9
cal .push_to_screen_buffer
ldi r1 19
cal .clear_from_screen_buffer
ldi r1 9
ldi r2 17
cal .push_to_screen_buffer
ldi r1 8
ldi r2 16
cal .push_to_screen_buffer
ldi r1 9
cal .push_to_screen_buffer
ldi r1 8
ldi r2 15
cal .push_to_screen_buffer
ldi r1 9
cal .push_to_screen_buffer
ldi r1 22
cal .push_to_screen_buffer
ldi r1 8
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 29
ldi r1 11
ldi r2 20
cal .push_to_screen_buffer
ldi r1 21
cal .clear_from_screen_buffer
ldi r1 10
ldi r2 19
cal .push_to_screen_buffer
ldi r1 11
cal .push_to_screen_buffer
ldi r1 10
ldi r2 18
cal .push_to_screen_buffer
ldi r1 11
cal .push_to_screen_buffer
ldi r1 13
cal .push_to_screen_buffer
ldi r1 20
cal .clear_from_screen_buffer
ldi r1 10
ldi r2 17
cal .push_to_screen_buffer
ldi r1 11
cal .push_to_screen_buffer
ldi r1 20
cal .clear_from_screen_buffer
ldi r1 10
ldi r2 16
cal .push_to_screen_buffer
ldi r1 11
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 10
ldi r2 15
cal .push_to_screen_buffer
ldi r1 11
cal .push_to_screen_buffer
ldi r1 9
ldi r2 14
cal .push_to_screen_buffer
ldi r1 10
cal .push_to_screen_buffer
ldi r1 8
ldi r2 13
cal .push_to_screen_buffer
ldi r1 9
cal .push_to_screen_buffer
ldi r1 23
cal .clear_from_screen_buffer
ldi r1 8
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 31
ldi r1 12
ldi r2 20
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 12
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r1 13
cal .clear_from_screen_buffer
ldi r1 14
cal .push_to_screen_buffer
ldi r1 12
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 21
cal .clear_from_screen_buffer
ldi r1 12
ldi r2 15
cal .push_to_screen_buffer
ldi r1 22
cal .clear_from_screen_buffer
ldi r1 11
ldi r2 14
cal .push_to_screen_buffer
ldi r1 10
ldi r2 13
cal .push_to_screen_buffer
ldi r1 11
cal .push_to_screen_buffer
ldi r1 9
ldi r2 12
cal .push_to_screen_buffer
ldi r1 10
cal .push_to_screen_buffer
cal .frame_inc

// frame 33
ldi r1 13
ldi r2 20
cal .push_to_screen_buffer
ldi r1 21
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r1 14
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 17
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 22
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 15
cal .push_to_screen_buffer
ldi r1 12
ldi r2 14
cal .push_to_screen_buffer
ldi r1 23
cal .clear_from_screen_buffer
ldi r1 12
ldi r2 13
cal .push_to_screen_buffer
ldi r1 11
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 35
ldi r1 14
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 22
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 23
ldi r2 14
cal .push_to_screen_buffer
ldi r1 22
ldi r2 13
cal .push_to_screen_buffer
ldi r1 23
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 37
ldi r1 20
ldi r2 20
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 20
ldi r2 19
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r1 14
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 20
cal .push_to_screen_buffer
ldi r1 13
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 20
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 13
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r1 22
cal .push_to_screen_buffer
ldi r1 12
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
ldi r1 18
ldi r2 12
cal .push_to_screen_buffer
ldi r1 22
cal .push_to_screen_buffer
cal .frame_inc

// frame 39
ldi r1 13
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 19
ldi r2 19
cal .push_to_screen_buffer
ldi r1 14
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 19
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 12
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 20
cal .push_to_screen_buffer
ldi r1 12
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 11
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r1 21
cal .push_to_screen_buffer
cal .frame_inc

// frame 41
ldi r1 19
ldi r2 20
cal .push_to_screen_buffer
ldi r1 13
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 13
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 19
ldi r2 16
cal .push_to_screen_buffer
ldi r1 20
ldi r2 14
cal .push_to_screen_buffer
ldi r1 11
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 20
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 43
ldi r1 18
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 19
ldi r2 15
cal .push_to_screen_buffer
ldi r2 14
cal .push_to_screen_buffer
ldi r1 10
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 45
ldi r1 18
ldi r2 20
cal .push_to_screen_buffer
ldi r1 12
ldi r2 19
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 12
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 15
cal .push_to_screen_buffer
ldi r1 11
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 19
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 47
ldi r1 12
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 11
ldi r2 14
cal .push_to_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
cal .frame_inc

// frame 49
ldi r1 12
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 11
ldi r2 13
cal .push_to_screen_buffer
ldi r1 10
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 51
ldi r1 12
ldi r2 20
cal .push_to_screen_buffer
ldi r1 13
ldi r2 19
cal .push_to_screen_buffer
ldi r1 17
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 18
cal .push_to_screen_buffer
ldi r1 17
ldi r2 17
cal .clear_from_screen_buffer
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 12
ldi r2 15
cal .push_to_screen_buffer
ldi r1 14
cal .push_to_screen_buffer
ldi r1 12
ldi r2 14
cal .push_to_screen_buffer
ldi r1 14
cal .push_to_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 13
cal .push_to_screen_buffer
ldi r1 11
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 53
ldi r1 17
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 17
cal .push_to_screen_buffer
ldi r2 15
cal .push_to_screen_buffer
ldi r1 14
cal .clear_from_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 14
cal .push_to_screen_buffer
ldi r1 14
cal .clear_from_screen_buffer
ldi r1 12
ldi r2 13
cal .push_to_screen_buffer
ldi r1 14
cal .clear_from_screen_buffer
ldi r1 19
cal .clear_from_screen_buffer
ldi r1 12
ldi r2 12
cal .push_to_screen_buffer
ldi r1 19
cal .clear_from_screen_buffer
cal .frame_inc

// frame 55
ldi r1 13
ldi r2 20
cal .push_to_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 18
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 13
ldi r2 16
cal .push_to_screen_buffer
ldi r2 15
cal .clear_from_screen_buffer
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 19
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 57
ldi r1 18
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 15
cal .push_to_screen_buffer
cal .frame_inc

// frame 59
ldi r1 14
ldi r2 19
cal .push_to_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 14
cal .push_to_screen_buffer
cal .frame_inc

// frame 61
ldi r1 14
ldi r2 20
cal .push_to_screen_buffer
ldi r1 16
cal .push_to_screen_buffer
ldi r1 15
ldi r2 17
cal .push_to_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 14
ldi r2 16
cal .push_to_screen_buffer
ldi r1 13
ldi r2 13
cal .clear_from_screen_buffer
cal .frame_inc

// frame 63
ldi r1 14
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 16
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 19
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 15
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 17
ldi r2 15
cal .push_to_screen_buffer
ldi r1 13
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r1 19
cal .push_to_screen_buffer
ldi r1 18
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 65
ldi r1 16
ldi r2 20
cal .push_to_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 14
ldi r2 19
cal .push_to_screen_buffer
ldi r1 17
ldi r2 16
cal .clear_from_screen_buffer
ldi r2 15
cal .clear_from_screen_buffer
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 19
cal .push_to_screen_buffer
ldi r1 13
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r1 19
cal .push_to_screen_buffer
cal .frame_inc

// frame 67
ldi r1 15
ldi r2 20
cal .push_to_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r1 14
ldi r2 19
cal .clear_from_screen_buffer
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r2 17
cal .push_to_screen_buffer
ldi r1 13
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 17
ldi r2 13
cal .clear_from_screen_buffer
cal .frame_inc

// frame 69
ldi r1 14
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 12
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
cal .frame_inc

// frame 71
ldi r1 13
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r1 12
ldi r2 14
cal .clear_from_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
cal .frame_inc

// frame 73
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
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 75
ldi r1 13
ldi r2 20
cal .push_to_screen_buffer
ldi r1 14
cal .push_to_screen_buffer
ldi r1 16
ldi r2 18
cal .clear_from_screen_buffer
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 15
cal .push_to_screen_buffer
ldi r1 17
cal .clear_from_screen_buffer
ldi r1 12
ldi r2 14
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 13
ldi r2 12
cal .push_to_screen_buffer
ldi r1 17
cal .clear_from_screen_buffer
cal .frame_inc

// frame 77
ldi r1 14
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 16
cal .clear_from_screen_buffer
ldi r1 17
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 19
cal .push_to_screen_buffer
ldi r1 17
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 16
cal .push_to_screen_buffer
ldi r1 14
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 18
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 12
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 79
ldi r1 14
ldi r2 20
cal .push_to_screen_buffer
ldi r1 16
cal .push_to_screen_buffer
ldi r1 14
ldi r2 18
cal .push_to_screen_buffer
ldi r1 18
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
cal .frame_inc

// frame 81
ldi r1 17
ldi r2 18
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 17
cal .push_to_screen_buffer
ldi r1 17
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 15
cal .push_to_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 13
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 83
ldi r1 18
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 14
cal .push_to_screen_buffer
ldi r1 19
cal .clear_from_screen_buffer
ldi r2 13
cal .clear_from_screen_buffer
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 85
ldi r1 15
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 19
cal .push_to_screen_buffer
ldi r2 16
cal .push_to_screen_buffer
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 87
ldi r1 15
ldi r2 20
cal .push_to_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r2 19
cal .clear_from_screen_buffer
ldi r1 15
ldi r2 17
cal .push_to_screen_buffer
ldi r1 14
ldi r2 12
cal .clear_from_screen_buffer
cal .frame_inc

// frame 89
ldi r1 15
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 17
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 19
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 15
ldi r2 17
cal .clear_from_screen_buffer
ldi r1 14
ldi r2 16
cal .clear_from_screen_buffer
ldi r1 17
ldi r2 15
cal .push_to_screen_buffer
ldi r1 13
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r1 19
cal .push_to_screen_buffer
ldi r2 13
cal .push_to_screen_buffer
ldi r1 18
ldi r2 12
cal .push_to_screen_buffer
cal .frame_inc

// frame 91
ldi r1 14
ldi r2 20
cal .clear_from_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r2 18
cal .push_to_screen_buffer
ldi r1 18
ldi r2 16
cal .push_to_screen_buffer
ldi r1 17
ldi r2 15
cal .clear_from_screen_buffer
ldi r1 18
cal .push_to_screen_buffer
ldi r1 17
ldi r2 14
cal .clear_from_screen_buffer
ldi r1 13
ldi r2 13
cal .clear_from_screen_buffer
ldi r1 17
cal .push_to_screen_buffer
ldi r1 13
ldi r2 12
cal .clear_from_screen_buffer
ldi r1 18
cal .clear_from_screen_buffer
ldi r1 19
cal .push_to_screen_buffer
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

# Bad Apple on mattbatwings BatPU-2

### Please watch the video for a better understanding of the project !

[![Watch the video](https://img.youtube.com/vi/3gBZHXqnleU/0.jpg)](https://www.youtube.com/watch?v=3gBZHXqnleU)


-----

![BadApple_go_brrrr](https://github.com/TheAypisamFpv/BadApple-on-BatPU-2/blob/main/images/BadApple_BatPU-2.gif)


# Introduction

This project is a port of the [Bad Apple](https://www.youtube.com/watch?v=FtutLA63Cp8) video to the BatPU-2, a 16-bit computer designed by [mattbatwings](https://github.com/mattbatwings) in Minecraft.


## Specs
- Registers: 16 1-byte registers, r0-r15. r0 is a zero register
- Data memory: 256 bytes (8 bit address, 1 byte at each address)
- Instruction memory: 2048 bytes (10 bit address, 2 bytes at each address)
- ALU w/ add, subtract, bitwise operations, & right-shift. 2 ALU flags - Z C
- Hardware stack for call/return. Maximum depth 16
Memory mapped I/O. Data memory addresses 240-255 are reserved
- Screen (32x32 Lamp Display)

The BatPU-2's instruction memory is only 2048 bytes, which is not enough to store the full Bad Apple video, so i had to use compression techniques to store the video in the instruction memory.

One major compression technique used is [Delta encoding](https://en.wikipedia.org/wiki/Delta_encoding). The other is an inline pixel optimisation.

## Delta encoding

Instead of storing the full frame, i only store the difference between the frame `n` and the frame `n+1`. This allows me to only store the pixels that changed between the two frames, minimizing the amount of data that needs to be stored.

<p align="center"> 
  <a href="" rel="noopener">
 <img width=auto height=auto src="https://github.com/TheAypisamFpv/BadApple-on-BatPU-2/blob/main/images/diff_Frame_1_to_2.png" alt="Difference between frame 1 and 2"></a>
</p>

Then, if the changing pixel is turned on, `.push_to_screen_buffer` is called, if it is turned off, then `.clear_from_screen_buffer` is called.

## Inline Pixel Optimisation

Instead of storing the x and y coordinates of the pixel, then calling `.push_to_screen_buffer` or `.clear_from_screen_buffer`, the program checks what direction (vertical or horizontal) as more pixels that share one coordinate, this allows me to only store the x or y coordinate of the pixel 'line' once, then storing the other coordinate of the pixel.
Storing one coordinate instead of two.

For example, it there is a vertical line of pixels like this :

<p align="center"> 
  <a href="" rel="noopener">
 <img width=auto height=auto src="https://github.com/TheAypisamFpv/BadApple-on-BatPU-2/blob/main/images/Inline_pixel_optimisation.png" alt="Inline Pixel Optimisation"></a>
</p>


Instead of storing both x and y coordinates of each pixel, the program stores the x coordinate of the line, then the y coordinate of each pixel.

Reducing the number of instructions from 18 to 13 (+1 for the frame draw increment)

Going from this :
```asm
    ldi r1 13
    ldi r2 20
    cal .clear_to_screen_buffer
    ldi r1 13
    ldi r2 19
    cal .clear_to_screen_buffer
    ldi r1 13
    ldi r2 18
    cal .clear_to_screen_buffer
    ldi r1 13
    ldi r2 17
    cal .clear_to_screen_buffer
    ldi r1 13
    ldi r2 16
    cal .clear_to_screen_buffer
    ldi r1 13
    ldi r2 15
    cal .clear_to_screen_buffer
    cal .frame_inc
```


To this
```asm
    ldi r1 13
    ldi r2 20
    cal .clear_to_screen_buffer
    ldi r2 19
    cal .clear_to_screen_buffer
    ldi r2 18
    cal .clear_to_screen_buffer
    ldi r2 17
    cal .clear_to_screen_buffer
    ldi r2 16
    cal .clear_to_screen_buffer
    ldi r2 15
    cal .clear_to_screen_buffer
    cal .frame_inc
```



### Possible Optimisation :
Inline pixel optimisation with multiple registers.
This would allow me to store the x/y coordinates of multiple pixels at once, then calling `.push/clear_to_screen_buffer_<line_direction>`

Reducing the number of instructions from 13 to 8 (+1 for the frame draw increment)

Exemple of what it could look like :

Registers must be changed :
```asm
    r0 -> zero register
    r1 -> x_1
    r2 -> y_1
    r3 -> x/y_2
    r4 -> x/y_3
    r5 -> x/y_4
    r6 -> x/y_5
    r7 -> x/y_6
    r8 -> x/y_7
    r9 -> pixel_x
    r10 -> pixel_y
    r11 -> frame counter
    r12 -> show_number
    r13 -> clear_pixel
    r14 -> draw_pixel
    r15 -> buffer_screen
```


```asm
    ldi r1 13 // x coordinate of the line
    ldi r2 20 // y coordinate of the first pixel
    ldi r3 19 // y coordinate of the second pixel
    ldi r4 18 // ...
    ldi r5 17
    ldi r6 16
    ldi r7 15
    ldi r8 r0 // r8 set to 0 since the line isn't 7 pixels long
    cal .clear_to_screen_buffer_y
    cal .frame_inc
```

```asm
    .clear_to_screen_buffer_y
    str r8 r1
    str r9 r2
    str r13 0 // clear pixel with x = r1, y = r2
    str r8 r1
    str r9 r3
    str r13 0 // clear pixel with x = r1, y = r3
    str r8 r1
    str r9 r4
    str r13 0 // clear pixel with x = r1, y = r4
    str r8 r1
    str r9 r5
    str r13 0 // ...
    str r8 r1
    str r9 r6
    str r13 0
    str r8 r1
    str r9 r7
    str r13 0
    str r8 r1
    str r9 r8
    str r13 0
    ret
```

One probleme with this possible optimisation is that all registers (r1 -> r8) MUST be set for a frame, hence the `ldi r8 r0` to set to 0 the last register as the line isn't 7 pixels long.

If a register is left untouched from the previous frame, a false pixel will be drawn/cleared.
Adding this to the fact that the functions to push/clear to the buffer are much longer than the previous version, this optimisation might not be worth it.

## Current registers mapping:

```asm
    r0 -> zero register
    r1 -> x_1
    r2 -> y_1
    r3 -> none
    r4 -> none
    r5 -> none
    r6 -> none
    r7 -> none
    r8 -> none
    r9 -> pixel_x
    r10 -> pixel_y
    r11 -> frame counter
    r12 -> show_number
    r13 -> clear_pixel
    r14 -> draw_pixel
    r15 -> buffer_screen
```

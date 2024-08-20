# Bad Apple on @mattbatwings Minecraft computer

Uses temporal compression and pixel sharing coordinates copression to reduce the size of a frame


### Possible Optimisation :
- inline pixel optimisation


## registers mapping:

### Current
```
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

### to try:
inline pixel optimisation (`.push_to_screen_buffer_y`, `.push_to_screen_buffer_x`(same for clearing to the buffer))
```
r0 -> zero register
r1 -> x/y_1
r2 -> y/x_1
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

## To Do:
- [ ] inline pixel optimisation (`.push_to_screen_buffer_y`, `.push_to_screen_buffer_x`(same for clear))
- [ ] Showcase of how the optimisation works
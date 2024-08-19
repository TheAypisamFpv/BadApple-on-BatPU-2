compressed_txt_path = "Bad Apple_resized_compressed.txt"

as_instructions = []


def parse_coordinates(coordinate_string):
    # Remove the leading and trailing parentheses and split by ','
    coordinate_pairs = coordinate_string.strip().split(',')
    
    # Clean up each pair and convert them to tuples of integers
    coordinates = []
    for pair in coordinate_pairs:
        if pair == "":
            continue
        
        pair = pair.replace('(', '').replace(')', '').replace(' ', ',').strip()  # Remove any remaining parentheses
        x, y, state = pair.split(',')

        #inverse y from 0 -> 8 to 20 -> 12
        y = 20 - int(y)
        x = int(x) + 8
        
        coordinates.append((int(x), int(y), int(state)))
    
    return coordinates

def generate_asm_instructions(coordinates):
    asm_instructions = []

    last_x, last_y = -1, -1
    
    for x, y, state in coordinates:
        if last_x != x: asm_instructions.append(f"ldi r1 {x}") # load x coordinate only if it has changed (save instructions space)
        if last_y != y: asm_instructions.append(f"ldi r2 {y}") # same for y coordinate
        
        asm_instructions.append("cal .push_to_screen_buffer" if state else "cal .clear_from_screen_buffer")

        last_x, last_y = x, y
    
    return asm_instructions

def main(skip_frame:int):
    """
    Main function to convert the compressed video into assembly instructions, with more space optimisations.
    """
    
    print("Compressed Video to Assembly start...")

    with open(compressed_txt_path, "r") as file:
        frame = 1
        as_instructions.append(f"ldi r7 {skip_frame}")
        for line in file:
            if line.strip() != "":
                instructions = generate_asm_instructions(parse_coordinates(line))
                as_instructions.append(f"\n// frame {frame}")
                as_instructions.extend(instructions)
                as_instructions.append("cal .frame_inc")
                
            frame += skip_frame

    # Save the instructions to a file
    as_path = "Bad Apple_resized_compressed.as.txt"
    with open(as_path, "w") as file:
        for instruction in as_instructions:
            file.write(instruction)
            file.write("\n")

    print(f"Instructions saved to {as_path}")
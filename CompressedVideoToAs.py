compressed_txt_path = "Bad Apple_resized_compressed.txt"

as_instructions = []


def parse_coordinates(coordinate_string:list[str]) -> list[tuple[int, int, int]]:
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

def generate_asm_instructions(coordinates:list[tuple[int, int, int]]) -> list[str]:
    asm_instructions = []

    # PixelSharing Compression

    # count how many coordinates share the same x or y value
    xCounts = {}
    yCounts = {}
    for x, y, _ in coordinates:
        xCounts[x] = xCounts.get(x, 0) + 1
        yCounts[y] = yCounts.get(y, 0) + 1

    # sort the x and y values by the number of coordinates that share them
    xSorted = sorted(xCounts, key=xCounts.get, reverse=True)
    ySorted = sorted(yCounts, key=yCounts.get, reverse=True)


    # if the number of coordinates sharing the same x is greater than for y (less different coordinates), sort by x, otherwise sort by y 
    if len(xSorted) <= len(ySorted):
        SortedCoordinates = sorted(coordinates, key=lambda x: x[0])
        # SortedCoordinates = sorted(coordinates, key=lambda x: (x[2], x[0])) # sort by their state addon
    else:
        SortedCoordinates = sorted(coordinates, key=lambda x: x[1])
        # SortedCoordinates = sorted(coordinates, key=lambda x: (x[2], x[1])) # sort by their state addon

    LastX, LastY, lastState = -1, -1, -1

    # coordinates_satck = []  # stack 4 different coordinates before pushing them to the screen buffer 


    # for x, y, state in SortedCoordinates:
    #     if lastState != state:
    #         asm_instructions.append("cal .push_to_screen_buffer" if lastState else "cal .clear_from_screen_buffer")
    #         lastState = state

    #     if len(coordinates_satck) == 4:
    #         for coordinates in coordinates_satck:
                

    
    for x, y, state in SortedCoordinates:
        if LastX != x: asm_instructions.append(f"ldi r1 {x}") # load x coordinate only if it has changed (save instructions space)
        if LastY != y: asm_instructions.append(f"ldi r2 {y}") # same for y coordinate
        
        asm_instructions.append("cal .push_to_screen_buffer" if state else "cal .clear_from_screen_buffer")

        LastX, LastY = x, y
    
    return asm_instructions

def main(skip_frame:int):
    """
    Main function to convert the compressed video into assembly instructions, with more space optimisations.
    """
    
    print("Compressed Video to Assembly start...")

    with open(compressed_txt_path, "r") as file:
        frame = 1
        for line in file:
            # line = frame
            if line.strip() != "":
                instructions = generate_asm_instructions(parse_coordinates(line))
                if len(instructions) > 0:
                    as_instructions.append(f"\n// frame {frame} - {len(instructions)+1} instructions")
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


if __name__ == "__main__":
    main(4)
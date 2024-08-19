import os

txt_path = "Bad Apple_resized.txt"
compressed_txt_path = "Bad Apple_resized_compressed.txt"

binary_video = []  # List of binary frames, each frame a list of binary pixels

with open(txt_path, "r") as txt_file:
    frame = []
    for line in txt_file:
        if line.strip() == "":
            if frame:
                binary_video.append(frame)
                frame = []
        else:
            row = [int(pixel) for pixel in line.strip()]
            frame.append(row)

    if frame:
        binary_video.append(frame)


def VideoTemporalCompresion(binary_video:list[list[list[int]]]) -> list[list[list[int]]]:
    """
    Compresses the video by saving the position of the pixels that change between frames.
    """
    compressed_video = []
    for i in range(1, len(binary_video)-2):
        frameA = binary_video[i]
        frameB = binary_video[i+1]
        

        compressed_frame = []
        for frameARowIndex in range(len(frameA)):
            compressed_row = []
            for frameAPixelIndex in range(len(frameA[frameARowIndex])):
                if frameA[frameARowIndex][frameAPixelIndex] != frameB[frameARowIndex][frameAPixelIndex]:
                    compressed_row.append(f"({frameAPixelIndex} {frameARowIndex} {int(frameB[frameARowIndex][frameAPixelIndex] > frameA[frameARowIndex][frameAPixelIndex])})")
                    
            compressed_frame.append(compressed_row)

        compressed_video.append(compressed_frame)

    return compressed_video

def main():
    """
    Main function to compress the video using temporal compression.
    """
    
    print("Video Compresion start...")
    # save a compressed version of the video
    compressed_video = VideoTemporalCompresion(binary_video)
    with open(compressed_txt_path, "w") as txt_file:
        for frame in compressed_video:
            for row in frame:
                for pixel in row:
                    txt_file.write(str(pixel))
                    txt_file.write(",")
                txt_file.write(",")
            txt_file.write("\n")

    # print the size of the compressed video
    og_size = os.path.getsize(txt_path)
    compressed_size = os.path.getsize(compressed_txt_path)

    print(f"\nOriginal size: {og_size//1000} KB")
    print(f"Compressed size: {compressed_size//1000} KB")
    print(f"Compression ratio: {og_size/compressed_size:.2f}\n")

    print("Video Compresion end.\n")


if __name__ == "__main__":
    main()
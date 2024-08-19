import cv2

def main(skip_frame:int):
    """
    Main function to encode the video into a text file.
    """
    print("Video Encoder start...")
    
    # Load the video
    video_path = "Bad Apple.mp4"
    cap = cv2.VideoCapture(video_path)

    # Check if video is successfully loaded
    if not cap.isOpened():
        print("Error loading video")
        exit()

    # Get the original video's width and height
    width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
    height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

    # Define the new width and height for resizing
    new_width = 16 #default 32
    new_height = 9 #default 18
    # Create a VideoWriter object to save the resized video
    output_path = video_path.removesuffix(".mp4") + f"_resized.mp4"
    fourcc = cv2.VideoWriter_fourcc(*"mp4v")
    out = cv2.VideoWriter(output_path, fourcc, 30.0, (new_width, new_height), isColor=False)



    # Create a text file to save the pixel values
    txt_path = video_path.removesuffix(".mp4") + f"_resized.txt"
    txt_file = open(txt_path, "w")

    # Read and resize each frame of the video
    frame_count = 0
    while True:
        ret, frame = cap.read()

        if not ret:
            break

        frame_count += 1
        if frame_count % skip_frame != 0:
            continue

        # Resize the frame
        resized_frame = cv2.resize(frame, (new_width, new_height))

        # Write the resized frame to the output video
        out.write(resized_frame)

        # Convert the resized frame to grayscale
        gray_frame = cv2.cvtColor(resized_frame, cv2.COLOR_BGR2GRAY)

        # Convert the grayscale frame to binary representation
        binary_frame = (gray_frame > 127).astype(int)

        for row in binary_frame:
            for pixel in row:
                txt_file.write(str(pixel))
            txt_file.write("\n")
        txt_file.write("\n")
        

        # Display the resized frame
        cv2.imshow("Resized Video", resized_frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    # Release the video capture and writer objects
    cap.release()
    out.release()

    # Close the text file
    txt_file.close()

    # Close all OpenCV windows
    cv2.destroyAllWindows()
    print("Video Encoder end.\n")
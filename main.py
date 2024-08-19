import VideoEncoder, VideoCompresion, CompressedVideoToAs

skip_frame = 2

def main():
    VideoEncoder.main(skip_frame)
    VideoCompresion.main()
    CompressedVideoToAs.main(skip_frame)

if __name__ == "__main__":
    main()
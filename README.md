# Video Converter Notebook
This repo contains the code needed to convert a greyscale video to a quadtree-compressed video.

The video should be split into individual frames for processing. This can be  done with ffmpeg:
```bash
ffmpeg -i ".\Touhou - Bad Apple.mp4" "media\badapple%04d.png"
```

The notebook saves the compressed frames as a pickled python object (a tuple of two numpy arrays: the animation (a 4-component 2d array of rectangle definitions (value, x, y, subdivision)), and the array of frame lengths (each frame uses a variable number of rectangles to represent it)).

This is inteneded to be used by the pySSV video playback demo [here](https://github.com/space928/Shaders-For-Scientific-Visualisation/tree/main/examples).

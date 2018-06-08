

from PIL import Image
import numpy as np
import random

Input_Image = Image.open('mystery_number_scrambled.jpg')
random.seed(2)
image_2d_array = np.array(Input_Image)
Image_flattened = image_2d_array.flatten()

index = range(len(Image_flattened))
random.shuffle(index)
shuffled_index = index


original_1Dimage = range(len(Image_flattened))
count = 0
for x in shuffled_index:
        original_1Dimage[x] = Image_flattened[count]
        count += 1

Final_Image = Image.new("L",Input_Image.size)
Final_Image.putdata(original_1Dimage)
Final_Image.save("True_image.jpg")


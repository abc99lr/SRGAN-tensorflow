import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

input_dir = '../result/test_SRGAN_200000/images/'
img_idx = '128329180'

full_name = input_dir + img_idx

img = mpimg.imread(full_name + '-inputs.png')
plt.subplot(1, 3, 1)
plt.imshow(img, 'gist_gray')
plt.title('input: LR')
plt.axis('off')


img = mpimg.imread(full_name + '-outputs.png')
plt.subplot(1, 3, 2)
plt.imshow(img, 'gist_gray')
plt.title('output: HR')
plt.axis('off')


img = mpimg.imread(full_name + '-targets.png')
plt.subplot(1, 3, 3)
plt.imshow(img, 'gist_gray')
plt.title('target: gound truth')
plt.axis('off')


plt.show()
# plt.savefig(img_idx + '.png')
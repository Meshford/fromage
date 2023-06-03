import numpy as np
import copy
import torch
from transformers import logging
from PIL import Image
import matplotlib.pyplot as plt
from fromage import models
from fromage.models import CheckResult
from fromage import utils

logging.set_verbosity_error()


def trunc_caption(caption: str) -> str:
    # Truncate at period.
    trunc_index = caption.find('.') + 1
    if trunc_index < 0:
        trunc_index = caption.find('\n') + 1
    caption = caption[:trunc_index]
    return caption


def display_interleaved_outputs(model_outputs, one_img_per_ret=True):
    for output in model_outputs:
        if type(output) == str:
            print(output)
        elif type(output) == list:
            if one_img_per_ret:
                plt.figure(figsize=(3, 3))
                plt.imshow(np.array(output[0]))
            else:
                fig, ax = plt.subplots(1, len(output), figsize=(3 * len(output), 3))
                for i, image in enumerate(output):
                    image = np.array(image)
                    ax[i].imshow(image)
                    ax[i].set_title(f'Retrieval #{i + 1}')
            plt.show()
        elif type(output) == Image.Image:
            plt.figure(figsize=(3, 3))
            plt.imshow(np.array(output))
            plt.show()


def main():
    model_dir = './fromage_model/'

    # Load an image of a cat.
    inp_image = utils.get_image_from_url('https://www.alleycat.org/wp-content/uploads/2019/03/FELV-cat.jpg')

    # Get FROMAGe to retrieve images of cats in other styles.
    prompt = [inp_image, 'vector icon [RET]']
    model = models.load_fromage(model_dir)
    # Display outputs.
    result = CheckResult(model, inp_image)
    print(f"result of experiment: {result}")


if __name__ == '__main__':
    main()

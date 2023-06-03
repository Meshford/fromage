# Grounding Language Models to Images for Multimodal Inputs and Outputs

## Setup instructions

1) Clone the repo:  
```
git clone https://github.com/Meshford/fromage.git  
```
2) Make docker image (It's can take some minutes due to dependencies):
```
docker build -t fromage_image .  
```
3) Run container:
```
docker run fromage_image
```
4) Run tests. You see difference between result of inference Neural Network and result of experiment:  
(It may take some time due to loading weights of model)  
```
python test_main.py
```
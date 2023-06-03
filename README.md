# Grounding Language Models to Images for Multimodal Inputs and Outputs

## Setup instructions

1) Clone the repo:  
```
git clone https://github.com/Meshford/fromage.git  
cd fromage  
```
2) Make docker image (It's can take some minutes due to dependencies):
```
docker build -t fromage_image .  
```
3) Run container. Container runs tests, and you'll see result of condacted experiment. (Result should be True):  
```
docker run fromage_image
```


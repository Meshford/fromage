FROM ubuntu:22.04
FROM python:3.9

ENTRYPOINT python -m venv venv
ENTRYPOINT source venv/bin/activate
RUN pip install --upgrade pip setuptools wheel
RUN pip install --upgrade pip

RUN pip install attrs==22.2.0
RUN pip install certifi==2022.12.7
RUN pip install charset-normalizer==3.0.1
RUN pip install contourpy==1.0.7
RUN pip install cycler==0.11.0
RUN pip install einops==0.4.1
RUN pip install exceptiongroup==1.1.0
RUN pip install filelock==3.9.0
RUN pip install fonttools==4.38.0
RUN pip install huggingface-hub==0.12.0
RUN pip install idna==3.4
RUN pip install iniconfig==2.0.0
RUN pip install kiwisolver==1.4.4
RUN pip install matplotlib==3.6.3
RUN pip install numpy==1.24.2
RUN pip install packaging==23.0
RUN pip install pandas==1.5.3
RUN pip install Pillow==9.4.0
RUN pip install pluggy==1.0.0
RUN pip install pyparsing==3.0.9
RUN pip install pytest==7.2.1
RUN pip install python-dateutil==2.8.2
RUN pip install PyYAML==6.0
RUN pip install regex==2022.10.31
RUN pip install requests==2.28.2
RUN pip install six==1.16.0
RUN pip install tensorboard==2.12.0
RUN pip install tensorboard-data-server==0.7.0
RUN pip install tensorboard-plugin-wit==1.8.1
RUN pip install tokenizers==0.12.1
RUN pip install tomli==2.0.1
RUN pip install torch==1.11.0
RUN pip install torchaudio==0.11.0
RUN pip install torchmetrics==0.9.3
RUN pip install torchvision==0.12.0
RUN pip install tqdm==4.64.1
RUN pip install transformers==4.21.3
RUN pip install typing_extensions==4.4.0
RUN pip install urllib3==1.26.14
ADD . .
ENTRYPOINT export PYTHONPATH=$PYTHONPATH:$(pwd)
ENTRYPOINT python test_main.py
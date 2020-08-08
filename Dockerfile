FROM tensorflow/tensorflow:2.1.1-gpu
WORKDIR /
COPY . /
RUN pip install -r requirements.txt
RUN apt update && apt install -y git
RUN pip install pip install git+https://github.com/salaniz/pycocoevalcap
ENTRYPOINT ["bash"]

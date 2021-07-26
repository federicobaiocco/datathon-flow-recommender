FROM python:3.6.11-buster

WORKDIR /recommender
COPY . .

RUN pip install -r requirements.txt

RUN git clone https://github.com/facebookresearch/fastText.git && \
    cd fastText && \
    pip install .
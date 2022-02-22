FROM continuumio/miniconda3:4.10.3p0-alpine

# opt/notebooks is the place to save the notebooks, you can change it as well in the bookdir
RUN conda install jupyter pandas numpy scikit-learn -y && \
    mkdir -p /opt/notebooks 

# creating a env with the pandas/numpy libs


EXPOSE 8888

WORKDIR /datasets

COPY ./datasets ./

CMD /bin/bash -c "jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"
    
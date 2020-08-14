FROM jupyter/base-notebook:python-3.7.6
RUN pip install -U turicreate
COPY ./dataset $HOME/dataset
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
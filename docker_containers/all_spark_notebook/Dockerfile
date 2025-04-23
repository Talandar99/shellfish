FROM jupyter/all-spark-notebook

USER root
RUN pip install spylon-kernel

RUN python -m spylon_kernel install

ARG NB_UID=1000
ARG NB_GID=1000

RUN usermod -u ${NB_UID} jovyan && groupmod -g ${NB_GID} users

ENV JUPYTER_RUNTIME_DIR=/home/jovyan/.local/share/jupyter/runtime

RUN mkdir -p /home/jovyan/.local/share/jupyter/runtime && \
    chown -R jovyan:users /home/jovyan/.local && \
    chmod -R 777 /home/jovyan/.local
RUN mkdir -p /home/jovyan/work && chmod -R 777 /home/jovyan/work

USER jovyan

CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]

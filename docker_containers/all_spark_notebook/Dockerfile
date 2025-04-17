# Użyj oficjalnego obrazu Jupyter z Apache Spark
FROM jupyter/all-spark-notebook

# Instalacja spylon-kernel (Scala)
USER root
RUN pip install spylon-kernel

# Rejestracja kernela Scala w Jupyter
RUN python -m spylon_kernel install

# Obsługa UID/GID przez argumenty
ARG NB_UID=1000
ARG NB_GID=1000

# Dostosowanie użytkownika jovyan do UID/GID z hosta
RUN usermod -u ${NB_UID} jovyan && groupmod -g ${NB_GID} users

# Zmieniamy lokalizację runtime i dodajemy odpowiednie uprawnienia
ENV JUPYTER_RUNTIME_DIR=/home/jovyan/.local/share/jupyter/runtime

# Ustawiamy uprawnienia katalogów
RUN mkdir -p /home/jovyan/.local/share/jupyter/runtime && \
    chown -R jovyan:users /home/jovyan/.local && \
    chmod -R 777 /home/jovyan/.local
RUN mkdir -p /home/jovyan/work && chmod -R 777 /home/jovyan/work

# Przełączamy na jovyan
USER jovyan

# Start Jupyter Notebook bez tokena
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]

FROM pfeiffermax/python-poetry:1.3.0-poetry1.5.0-python3.10.11-slim-bullseye
COPY . /app/
WORKDIR /app
RUN poetry install
RUN echo "source $(poetry env info --path)/bin/activate" >> ~/.bashrc
ENTRYPOINT [ "/bin/bash" ]

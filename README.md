# JupyterDocker
dockerfile for jupyter server with pandas, numpy, etc.

## build container

    docker build -t jupyterdocker .

## run container

    docker run -v data:/projects/data -p 8888:8888 -d --name jupyterdocker jupyterdocker

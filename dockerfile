FROM python:3.6.2

ENV PYTHONUNBUFFERED=1

RUN pip install --no-cache-dir numpy \
  && pip install --no-cache-dir scipy \
  && pip install --no-cache-dir pandas jupyter nltk scikit-learn \
  && mkdir -p /projects/data

WORKDIR /projects

CMD ["jupyter", "notebook", "--ip='*'", "--allow-root"]

EXPOSE 8888

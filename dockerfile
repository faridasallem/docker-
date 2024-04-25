FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip install jupyter
EXPOSE 8888
ENV NAME World
CMD [“jupyter”, “notebook”, “ — ip=’0.0.0.0'”, “ — port=8888”, “ — no-browser”, “ — allow-root”]

FROM ghcr.io/osgeo/gdal:ubuntu-full-latest

RUN apt-get update && \
    apt-get install -y \
    python3-pip

RUN pip3 install 'uvicorn[standard]'
RUN pip3 install fastapi

COPY example.py .

CMD ["uvicorn","example:app","--host","0.0.0.0","--port","3000"]
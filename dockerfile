FROM python:3.8
WORKDIR /app
ENV url=""
EXPOSE 8765/tcp
ADD websocket_server.py /app/
RUN pip install websockets
CMD [ "python", "/app/websocket_server.py" ]

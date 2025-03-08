FROM python:3.12

RUN apt update
RUN apt install -y wget libgl1 libglib2.0-0 python3-pip python3-venv
RUN wget https://raw.githubusercontent.com/mcmonkeyprojects/SwarmUI/refs/heads/master/install-linux.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x install-linux.sh
RUN chmod +x entrypoint.sh

EXPOSE 7801
ENTRYPOINT ["/entrypoint.sh"]

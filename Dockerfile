FROM atlassian/default-image:3
#Install pip for Python 3
RUN apt-get update && \
apt-get install -y python3.8-distutils && \
curl https://bootstrap.pypa.io/get-pip.py | python3

#Install Playwright for Python
RUN pip install playwright && \
    pip install pytest-playwright  && \
    playwright install

RUN DEBIAN_FRONTEND=noninteractive playwright install-deps
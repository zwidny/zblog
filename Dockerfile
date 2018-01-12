FROM python:3.6.4-stretch

WORKDIR /repos/zblogs
COPY requirements.txt requirements.txt  # echo $pwd ->  /repos/zblogs
COPY cmd.sh cmd.sh
COPY src src
RUN chmod +x cmd.sh
RUN pip install -i https://pypi.douban.com/simple -r requirements.txt

WORKDIR /repos/zblogs/src
CMD ['/repos/zblogs/cmd.sh']

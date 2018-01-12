FROM python:3.6.4-stretch

WORKDIR /repos/zblogs
# echo $pwd ->  /repos/zblogs
COPY requirements.txt requirements.txt  
RUN pip install -i https://pypi.douban.com/simple -r requirements.txt

COPY cmd.sh cmd.sh
RUN chmod +x cmd.sh

COPY src src
WORKDIR /repos/zblogs/src
CMD ['/repos/zblogs/cmd.sh']

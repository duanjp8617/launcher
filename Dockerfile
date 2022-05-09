FROM python:3.6.13-slim

RUN pip install 'tensorflow>=1.13,<2' -i https://pypi.mirrors.ustc.edu.cn/simple/

RUN pip install 'matplotlib>=3.0.3' -i https://pypi.mirrors.ustc.edu.cn/simple/

RUN pip install 'numpy>=1.16.2' -i https://pypi.mirrors.ustc.edu.cn/simple/

RUN pip install docker -i https://pypi.mirrors.ustc.edu.cn/simple/

RUN pip install pyzmq -i https://pypi.mirrors.ustc.edu.cn/simple/

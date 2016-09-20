FROM yandex/rep:0.6.6_py3
MAINTAINER andrey.u@gmail.com
RUN bash --login -c "\
	pip install http://github.com/mfeurer/liac-arff/archive/master.zip && \
	pip install git+https://github.com/openml/openml-python.git"
RUN bash --login -c "\
	pip install RISE && \
	jupyter-nbextension install rise --py --user && \
	jupyter-nbextension enable rise"

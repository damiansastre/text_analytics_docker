FROM jupyter/tensorflow-notebook
RUN pip install git+https://github.com/tagercito/text_analytics --no-cache-dir
RUN cp /opt/conda/lib/python3.9/site-packages/text_analytics/text_analytics.py /home/jovyan/text_analytics.py
RUN cp /opt/conda/lib/python3.9/site-packages/text_analytics/file_handler.py /home/jovyan/file_handler.py
RUN cp /opt/conda/lib/python3.9/site-packages/text_analytics/settings.py /home/jovyan/settings.py
RUN mkdir /home/jovyan/data/
COPY .env /home/jovyan/
ENV NOTEBOOK "Lab 01. Accessing the Data.ipynb"
COPY ${NOTEBOOK} /home/jovyan/
RUN pip install python-dotenv
RUN python -m spacy download en_core_web_sm

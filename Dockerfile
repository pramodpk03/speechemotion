FROM python:3.8.10
ENV PYTHONUNBUFFERED True
EXPOSE 8501
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
ENTRYPOINT ["streamlit","run"]
CMD ["main.py"]
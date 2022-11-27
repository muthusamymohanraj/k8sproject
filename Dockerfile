FROM python:3.9  
WORKDIR /code
COPY /var/lib/jenkins/workspace/k8s-project/requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY /var/lib/jenkins/workspace/k8s-project/main.py /code/main.py
COPY /var/lib/jenkins/workspace/k8s-project/form.html /code/form.html
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

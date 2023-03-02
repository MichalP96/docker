FROM python:3.9.16

WORKDIR /python-test-calculator
COPY calculator.py /python-test-calculator/
COPY test_addition.py /python-test-calculator/
COPY requirements.txt /python-test-calculator/

RUN pip install pytest
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null

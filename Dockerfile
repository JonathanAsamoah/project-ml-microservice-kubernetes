FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
COPY requirements.txt /tmp
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install -r /tmp/requirements.txt \
    && rm /tmp/requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
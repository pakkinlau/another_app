# Use a base image that supports Python
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port on which your Streamlit app runs
EXPOSE 8501

# Set the command to run your Streamlit app
CMD ["streamlit", "run", "app.py"]
# Use the official Python 3.8 base image  
FROM python:3.8  

# Set the working directory in the container to /app  
WORKDIR /app  

# Copy the current directory contents into the /app directory in the container  
COPY . /app  

# Install the application dependencies  
RUN pip install --no-cache-dir -r requirements.txt  

# Starting the Flask application  
CMD ["python", "app.py"]  

# Expose port 
EXPOSE 5000  
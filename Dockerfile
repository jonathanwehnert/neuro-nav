# Use the official Jupyter minimal-notebook image as the base
FROM jupyter/minimal-notebook

# Install Voilà
RUN pip install voila

# Copy the notebook to the working directory
COPY index.ipynb /home/jovyan/

# Set the default command to launch Voilà
CMD ["voila", "--port=8000", "--no-browser", "--Voila.ip=0.0.0.0", "--Voila.base_url=/"]

# Expose the port Voilà will run on
EXPOSE 8000

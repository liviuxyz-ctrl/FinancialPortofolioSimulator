# Start from the base Jupyter Notebook image
FROM jupyter/base-notebook

# Change working directory
WORKDIR /home/liviuxyz

# Install Python dependencies
RUN pip install numpy matplotlib jupyterthemes sphinx sphinx_rtd_theme jupyter nbconvert

# Create the 'docs' directory in the working directory
RUN mkdir -p /home/liviuxyz/docs

# Optional: Run sphinx-quickstart to set up initial Sphinx structure
RUN sphinx-quickstart --quiet -p 'Portofolio Project' -a 'Author' -v '1.0' /home/liviuxyz/docs

# Command to convert the Jupyter Notebook to a Python script and build the docs
CMD sh -c "jupyter nbconvert --to script '/home/liviuxyz/Portofolio Calculator.ipynb' && \
            sphinx-build -b html /home/liviuxyz/docs /home/liviuxyz/docs/_build/html && \
            jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root"

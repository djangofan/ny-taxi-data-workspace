# ny-taxi-data-workspace + Docker
Just a workspace where I will work on some data crunching with dockerized Jupyter notebooks.

## HOWTO

Start it by running this command from root of project folder `docker-compose up`  or  `docker-compose up -d`

Once started, the former command will tell you the approximate URL you need to login to the Jupyter notebook instance.

Something like this:  `http://localhost:10000/?token=<<unique-id>>`

## Source Data

http://www.nyc.gov/html/tlc/html/about/trip_record_data.shtml

## Info On Jupyter

https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-datascience-notebook


### What is included here

Using: docker pull jupyter/datascience-notebook


    Minimally-functional Jupyter Notebook server (e.g., no pandoc for saving notebooks as PDFs)
    Miniconda Python 3.x in /opt/conda
    No preinstalled scientific computing packages
    Unprivileged user jovyan (uid=1000, configurable, see options) in group users (gid=100) with ownership 
      over the /home/jovyan and /opt/conda paths
    tini as the container entrypoint and a start-notebook.sh script as the default command
    A start-singleuser.sh script useful for launching containers in JupyterHub
    A start.sh script useful for running alternative commands in the container (e.g. ipython, jupyter kernelgateway,
      jupyter lab)
    Options for a self-signed HTTPS certificate and passwordless sudo
    Pandoc and TeX Live for notebook document conversion
    git, emacs, jed, vim, and unzip
    The R interpreter and base environment
    IRKernel to support R code in Jupyter notebooks
    tidyverse packages, including ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, lubridate, and broom 
      from conda-forge
    plyr, devtools, shiny, rmarkdown, forecast, rsqlite, reshape2, nycflights13, caret, rcurl,
      and randomforest packages from conda-forge
    pandas, numexpr, matplotlib, scipy, seaborn, scikit-learn, scikit-image, sympy, cython, patsy, statsmodel, 
      cloudpickle, dill, numba, bokeh, sqlalchemy, hdf5, vincent, beautifulsoup, protobuf, and xlrd packages
    ipywidgets for interactive visualizations in Python notebooks
    Facets for visualizing machine learning datasets
    The Julia compiler and base environment
    IJulia to support Julia code in Jupyter notebooks
    HDF5, Gadfly, and RDatasets packages


## NOTES

Run it at scale possibly: https://github.com/jupyterhub/kubespawner


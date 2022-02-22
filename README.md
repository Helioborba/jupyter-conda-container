# Conda with Jupyter
## Simple docker container with continuumio/miniconda3 as the root image, mainly for Jupyter notebook users.
Used to quick launch the container by using a shell script (run.sh) with the specific configs already made.\
After running, you will be redirected to localhost:8888, you will need to grab the token from the command line your script is running in.\
The notebooks will have a volume linking local notebooks with container /opt/notebooks, they will be saved into the program folder under the "notebooks" folder\
The image will also build with 3 libs for now: pandas, numpy & scitkit. < Plan on expanding later \
Current data set is from : https://data-flair.training/



# CS4248-Env

[![GitHub last commit](https://img.shields.io/github/last-commit/CS4248-Team08/CS4248-Env?style=for-the-badge)](https://github.com/CS4248-Team08/CS4248-Env)
[![CI Status](https://img.shields.io/github/workflow/status/CS4248-Team08/CS4248-Env/ci?style=for-the-badge)](https://github.com/CS4248-Team08/CS4248-Env/actions/workflows/ci.yml)

## Environment

Create a conda environment:

```bash
# conda env create -f environment.yml
```

Save the environment:

```bash
# conda env export > environment.yml
# # Then remove "prefix" from the environment.yml file
pip freeze > requirements.txt
```

## Docker Build

```bash
docker build -t lirc572/cs4248-env:latest .
docker push lirc572/cs4248-env:latest
```

## Notes

How the packages are installed:

```bash
conda create --name cs4248-env python=3.6
conda activate cs4248-env

# conda install -c conda-forge numpy
# conda install -c conda-forge scipy
# conda install -c conda-forge matplotlib
# conda install -c conda-forge seaborn
# conda install -c conda-forge pandas
# conda install -c conda-forge scikit-learn
# conda install pytorch torchvision torchaudio cpuonly -c pytorch-lts
# conda install -c conda-forge transformers
# conda install captum -c pytorch
# conda install -c conda-forge tqdm
# conda install -c conda-forge jupyterlab

pip install numpy
pip install scipy
pip install pandas
pip install matplotlib
pip install seaborn
pip install scikit-learn
pip install tqdm
pip install torch
pip install transformers
pip install captum
pip install jupyterlab

# conda env export > environment.yml
pip freeze > requirements.txt
```

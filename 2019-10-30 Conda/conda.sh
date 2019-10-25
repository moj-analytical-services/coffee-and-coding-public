# BASICS

## Check Conda is installed

conda --version

## Get help

conda --help

### You can also use the "--help" tag with individual commands

## List installed packages

### List all installed packages
conda list

### Search for a specific installed package
conda list | grep "pandas"

## Search for a package
conda search r-dplyr

### R packages are prefixed with "r-"
### You can also search on https://anaconda.org

## Install packages

### Install a package with default options
conda install r-dplyr

### Install a specific version of a package
conda install pandas=0.24.0

### Install a package from a specific channel
conda install -c moj-analytical-services r-s3tools

## Uninstall packages

conda uninstall pandas

## Update packages

### Update a specific package
conda update pandas

### Update all packages
conda update --update-all

# ENVIRONMENT MANAGEMENT

## Reset environment to default
conda env export -n base | grep -v "^prefix: " >/tmp/base.yml &&
    conda env update --prune -n rstudio -f /tmp/base.yml &&
    rm /tmp/base.yml

## Or, if this gives an error:

## Fix r-pillar error
conda env export -m base | grep -b "^prefix: " >/tmp/base.yml

### Delete the r-pillar line

echo >$CONDA_PREFIX/conda-meta/history &&
    conda env update --prune -n rstudio -f /tmp/base.yml &&
    rm /tmp/base.yml

## Fix UnsatisfiableError
conda deactivate &&
    conda env remove –n rstudio &&
    rm –rf ~/.conda/envs/rstudio/ &&
    conda list ––explicit –n root |
    grep –Ev "^@EXPLICIT|r-pillar" >/tmp/spec-file.txt &&
    conda env create –n rstudio –f /tmp/spec-file.txt &&
    conda activate rstudio

## Export an environment
conda env export | grep -v "^prefix: " > environment.yml

## Load an environment
conda env update -f environment.yml --prune

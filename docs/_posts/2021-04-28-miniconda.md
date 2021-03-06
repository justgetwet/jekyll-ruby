---
layout: post
title: Miniconda
date: 2021-04-28
---

### 1. Mac(air)

#### brew install([link](https://formulae.brew.sh/cask/miniconda))

```shell
brew install --cask miniconda
ðº  miniconda was successfully installed!
python
Python 2.7.10 (default, Oct  6 2017, 22:29:07) ð
>> exit()
conda init "$(basename "${SHELL}")"
source ~/.bash_profile
(base) $ python -V
python 3.8.5 ð
```

ä»®æ³ç°å¢

```shell
(base) $ conda create -n MyEnv python=3.7 // -n or --name
(base) $ source activate MyEnv
(myEnv) $ conda install pip
(MyEnv) $ source deactivate
(base) $ conda remove -n MyEnv --all
```

ä»®æ³ç°å¢ã§ãã®ã¾ã¾pipãä½¿ãã¨rootã®pipãåãã¦ã©ã¤ãã©ãªãã°ã­ã¼ãã«ã«ã¤ã³ã¹ãã¼ã«ãã¦ãã¾ãã®ã§ãæåã«ä»®æ³ç°å¢åã§ `conda install pip` ãå¿è¦???

åºæ¬ã®ã©ã¤ãã©ãª

```shell
(base) $ conda search jupyter
(base) $ pip install jupyter notebook
(base) $ conda install numpy
(base) $ conda install matplotlib
(base) $ conda install pandas
```

jupyte_notebook_config.py

```shell
(base) $ jupyter notebook --generate-config
(base) $ cd .jupter
(base) .jupyter $ subl jupyter_notebook_config.py 
#  variable to override it.
#  Default: ''
c.NotebookApp.browser = 'firefox'
```

alias

```shell
// ~/.bashrc
alias ju='jupter notebook'
```

jupyterthemes([link](https://github.com/dunovank/jupyter-themes))

```shell
pip install jupyterthemes 
jt -l
Available Themes: 
   chesterish
   grade3
   gruvboxd
   gruvboxl
   monokai
   oceans16
   onedork
   solarizedd
   solarizedl
jt -t onedork -T -N -f consolamono -ofs 11 -tfs 11 -cellw 95%
// jt -r
```

jupiter-contrib-nbextensions([link](https://github.com/ipython-contrib/jupyter_contrib_nbextensions))

```shell
pip install jupyter-contrib-nbextensions
// Install javascript and css files
jupyter contrib nbextension install --user ð¤
pip install yapf // Code prettify
pip install Autopep8
```

nbextension tabãéããå³ä¸ã® â disable configuration ã®ãã§ãã¯ãå¤ãã¨ãåæ©è½ã®ãã§ãã¯ããã¯ã¹ãæå¹ã«ãªã

â Code prettify

â Hinterland

â Codeholding

â Autopep8

Hinterland ãå¹ããªãæ°ããã

terminal command ã!ãªãã§æ±ºã¾ã

### 2. Windows10

ã¤ã³ã¹ãã¼ã©ã¼ãä½¿ã

- Miniconda3-py39_4.9.2-Windows-x86-64

`conda install pandas`

`conda install matplotlib`


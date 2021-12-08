---
layout: post
title: Miniconda
date: 2021-04-28
---

### 1. Mac(air)

#### brew install([link](https://formulae.brew.sh/cask/miniconda))

```shell
brew install --cask miniconda
🍺  miniconda was successfully installed!
python
Python 2.7.10 (default, Oct  6 2017, 22:29:07) 😅
>> exit()
conda init "$(basename "${SHELL}")"
source ~/.bash_profile
(base) $ python -V
python 3.8.5 🎉
```

仮想環境

```shell
(base) $ conda create -n MyEnv python=3.7 // -n or --name
(base) $ source activate MyEnv
(myEnv) $ conda install pip
(MyEnv) $ source deactivate
(base) $ conda remove -n MyEnv --all
```

仮想環境でそのままpipを使うとrootのpipが働いてライブラリをグローバルにインストールしてしまうので、最初に仮想環境内で `conda install pip` が必要???

基本のライブラリ

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
jupyter contrib nbextension install --user 🤔
pip install yapf // Code prettify
pip install Autopep8
```

nbextension tabを開き、右上の ☑ disable configuration のチェックを外すと、各機能のチェックボックスが有効になる

☑ Code prettify

☑ Hinterland

☑ Codeholding

☑ Autopep8

Hinterland が効かない気がする

terminal command が!なしで決まる

### 2. Windows10

インストーラーを使う

- Miniconda3-py39_4.9.2-Windows-x86-64

`conda install pandas`

`conda install matplotlib`


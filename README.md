# data_science
Notebooks de auto capacitación en Data Science con Python

## Instalación del Ambiente
### Conda
1. Instalar conda:  https://docs.conda.io/en/latest/miniconda.html
Miniconda is a small, bootstrap version of Anaconda that includes only conda, Python, the packages they depend on, and a small number of other useful packages, including pip, zlib, and a few others.
2. Abrir un power shell de conda (recién instalado) debería aparecer algo así<br>
![image](https://user-images.githubusercontent.com/47650265/154078829-1c3ae78c-8353-4b72-828e-36a18082eeec.png)<br>
donde (base) es el ambiente recientemente creado.
### Jupyter Lab
3. Instalar Jupyter Lab: en la sesión de powershell, escribir "pip install jupyterlab"<br>
https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html<br>
NOTA: esto instalará jupyter lab en el entorno (base)
4. Para que funcione python en Jupyter, se debe instalar el ipython kernel. En la misma ventana de powershell, ejecutar "pip install ipykernel"<br>
https://ipython.readthedocs.io/en/4.x/install/kernel_install.html This package provides the IPython kernel for Jupyter.
5. Habilitar el ipython en el ambiente (base): en la sesión de powershell, ejecutar python -m ipykernel install --user --name myenv --display-name "Python (myenv)"
donde "myenv" es el nombre del ambiente donde se quiere habilitar el ikernel.
6. Para ejecutar jupyter, escribir en la línea de comando: jupyter lab
### Github
7. Desde https://git-scm.com/downloads descargar la última versión de Git.
8. Instalar la extensión de Jupyter Lab para integrarse con Github (https://github.com/jupyterlab/jupyterlab-git): en una consola de powershell de conda, en el ambiente que corre Jupyter Lab, ejecutar pip install --upgrade jupyterlab jupyterlab-git

### Paquetes Importantes
9. Crear un enviroment con python 3.8 para instalar pycaret: en una ventana de powershell, ejecutar conda create --name <nombre_env> python=3.8. https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf
10. Instalar el paquete pycaret. Sugiero instalar esto primero porque instala muchos paquetes que usa. Así no hay que instalarlos previamente.
    * Activar el ambiente con python 3.8: en la ventana powershell, ejecutar: conda activate <nombre_env>
    * Instalar pycaret con pip: pip install pycaret. https://pycaret.gitbook.io/docs/get-started/installation

Paquetes que instala: pandas, scipy, seaborn, matplotlib, scikit-learn, wordcloud, spacy, nltk, pandas-profiling, ipykernel (para ejecutar jupyter lab).
11. Instalar otras librerías necesarias:
    * Para integración con PI: pip install pythonnet. http://pythonnet.github.io/ https://pypi.org/project/pythonnet/ Python.NET is a package that gives Python programmers nearly seamless integration with the .NET Common Language Runtime (CLR)
    * Para acceso a SQL server: pyodbc. pip install pyodbc. https://github.com/mkleehammer/pyodbc/wiki

### Git Bash
Working directory:
$ pwd

$ cd name-of-subfolder/sub-subfolder/

HEAD as the "current branch"

Consultar listado de los últimos commits (con "exit" se corta el listado)
$ git log --pretty=format:"%h %cn %s"
hash | usuario | descripción del commit --> sirve para cuando necesito hacer un rollback de un commit

Hacer un rollback del arbol HASTA este commit. Se pierde todo hasta ese commit. Conviene hacer rollback del último commit y así.
$ git reset --hard <hash del commit> --> 

https://geo-python-site.readthedocs.io/en/latest/lessons/L2/intro-to-GitHub.html
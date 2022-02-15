# data_science
Notebooks de auto capacitación en Data Science con Python

## Instalación del Ambiente
1. Instalar conda:  https://docs.conda.io/en/latest/miniconda.html
Miniconda is a small, bootstrap version of Anaconda that includes only conda, Python, the packages they depend on, and a small number of other useful packages, including pip, zlib, and a few others.
2. Abrir un power shell de conda (recién instalado) debería aparecer algo así<br>
![image](https://user-images.githubusercontent.com/47650265/154078829-1c3ae78c-8353-4b72-828e-36a18082eeec.png)<br>
donde (base) es el ambiente recientemente creado.
3. Instalar Jupyter Lab: en la sesión de powershell, escribir "pip install jupyterlab"<br>
https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html<br>
NOTA: esto instalará jupyter lab en el entorno (base)
4. Para que funcione python en Jupyter, se debe instalar el ipython kernel. En la misma ventana de powershell, ejecutar "pip install ipykernel"<br>
https://ipython.readthedocs.io/en/4.x/install/kernel_install.html This package provides the IPython kernel for Jupyter.
5. Habilitar el ipython en el ambiente (base): en la sesión de powershell, ejecutar python -m ipykernel install --user --name myenv --display-name "Python (myenv)"
6. donde "myenv" es el nombre del ambiente donde se quiere habilitar el ikernel.

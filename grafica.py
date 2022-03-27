# Importamos las librerías
import numpy as np
import matplotlib.pyplot as plt

# Leemos el archivo, el primer renglón es de encabezados 
tabla = np.loadtxt('Funciones_trigonometricas.dat', skiprows=1)

# xi = 0
# xf = 10
# n = 100

# dx = (10-0)/n

# x = np.arange(xi,xf,dx)
# x2 = np.linspace(xi,xf,n)

x = tabla[:,0]
sinx = tabla[:,1]
cosx = tabla[:,2]
tanx = tabla[:,3]

#Gráfica de las curvas
plt.plot(x,sinx)
plt.plot(x,cosx)
plt.plot(x,tanx)
plt.title('Funciones Trigonométricas')
plt.xlabel('x')
plt.ylim([-3, 3])
plt.grid()
plt.show()

# Load the libraries we will use
import numpy as np
import matplotlib.pyplot as plt

# Read the .dat file, remember first row are headers
plot = np.loadtxt('Funciones_trigonometricas2.dat', skiprows=1) 

# The file is separated into columns
x = plot[:,0]
sinx = plot[:,1]
cosx = plot[:,2]
tanx = plot[:,3]
atanx = plot[:,4]
secx = plot[:,5]
cscx = plot[:,6]

# View all functions in same plot
plt.plot(x,sinx, linewidth=0.8)          # sin(x)
plt.plot(x,cosx, linewidth=0.8)          # cos(x)
plt.plot(x,tanx, linewidth=0.8)          # tan(x)
plt.plot(x,atanx, linewidth=0.8)         # atan(x)
plt.plot(x,secx, linewidth=0.8)          # sec(x)
plt.plot(x,cscx, linewidth=0.8)          # csc(x)
plt.title('Funciones Trigonométricas')   # plot title
plt.xlabel('x')
plt.ylabel('f(x)')
plt.ylim(-3, 3) # Constraints for 'y' axis limits
plt.legend(['sen(x)', 'cos(x)', 'tan(x)', 'arctan(x)', 'sec(x)','csc(x)'],\
    loc=('lower left'), prop={'size':8}) # prop, let us to change the size of the legend chart
plt.grid() # Add a grid
#plt.show()

## Uncomment the following lines to save the plot

figure = plt.gcf() # get current figure
figure.set_size_inches(8, 6)
plt.savefig("myplot.png", dpi = 150) # when saving, specify the DPI

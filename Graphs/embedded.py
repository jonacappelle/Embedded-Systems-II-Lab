#-----------------------------------------------------#
#                GRAPH PLOTS TEMPLATE                 #
#                © Jona Cappelle                      #
#           (based on michiel's latex params)         #
#-----------------------------------------------------#

# pip install pandas matplotlib
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import math
from matplotlib.ticker import ScalarFormatter
import numpy as np
# from scipy.interpolate import spline

#-----------------------------------------------------#
#                   SETTINGS                          #
#-----------------------------------------------------#

# Esthetical ratio
golden_mean = (math.sqrt(5)-1.0)/2.0 

# Adjust to your liking
width = 5                       #inches
height = width * golden_mean    #inches
fontsize = 11                   #pt
axis_linewidth = 0.4            #pt

# Params LaTeX
# mpl.use("pgf")
# mpl.rcParams.update({
#         'backend': 'ps',
#         'axes.labelsize': fontsize,
#         'axes.titlesize': fontsize,
#         'legend.fontsize': fontsize,
#         'xtick.labelsize': fontsize,
#         'ytick.labelsize': fontsize,
#         'axes.linewidth' : axis_linewidth,
#         'text.usetex': True,
#         "pgf.rcfonts": False,
#         "pgf.texsystem": "lualatex",
#         'font.family': 'serif',
#         "pgf.preamble": [
#             r"\usepackage[utf8x]{inputenc}",    # use utf8 fonts
#             r"\usepackage[T1]{fontenc}",        # plots will be generated
#             r"\usepackage[detect-all]{siunitx}" # to use si units
#         ]
#     })

#-----------------------------------------------------#
#                   READ DATA                         #
#-----------------------------------------------------#

data = pd.read_csv(r"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\Masterproef\Graph\embedded.csv")
data.head()

# Give name to data columns, will be used below
data.columns = ['y']

# x = np.linspace(1, 216, num=216)
#-----------------------------------------------------#
#                   PLOTTING                          #
#-----------------------------------------------------#

# Figure size
# plt.figure(1,figsize=(width,height))

fig, ax = plt.subplots(figsize=(width,height))

# Black & white option
# plt.style.use('grayscale')

# Plot grid onder data + lichter grid
plt.rc('axes', axisbelow=True)
ax.grid(color='silver', linestyle='-', linewidth=0.25, alpha=0.5)

# Hide the right and top spines
ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)

# Point plot
# plt.scatter(data['x'], data['y'], s=5, color='grey') # s=5 --> size of points

# Line plot
ax.plot(data['y'], c='0.4') # c=0.4 --> nice grey!
# ax.plot(data['x'], data['-4dbm'], c='0.6', label="-4 dBm") # c=0.4 --> nice grey!
# ax.plot(data['x'], data['-8dbm'], c='0.7', label="-8 dBm") # c=0.4 --> nice grey!
# ax.plot(data['x'], data['-12dbm'], c='0.8', label="-12 dBm") # c=0.4 --> nice grey!

# Select range
# plt.xlim(lower,upper)
# plt.ylim(lower,upper)

# Log scale
# plt.yscale('log')
# plt.xscale('log')

# No legend
# ax.legend().remove()

# Set labels
plt.ylabel("Hoek [°]")
plt.xlabel("Metingen [aantal]")

# plt.legend()
#-----------------------------------------------------#
#                   SAVE FILE                         #
#-----------------------------------------------------#

plt.savefig('embedded.pdf', bbox_inches='tight')
plt.show()

# OPTIONS
# tweede plot met plt.figure(2, figsize=(width, height))

# Plot done!
print("Done!")
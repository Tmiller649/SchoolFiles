import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
from pandas import DataFrame, Series

sh_raw = pd.read_csv('dataset.csv',
          header=None,
          names=['Year','Title','Comic','IMDB','RT','CompositeRating','OpeningWeekendBoxOffice',
          'AvgTicketPriceThatYear','EstdOpeningAttendance','USPopThatYear'])

sh = sh_raw[np.isfinite(sh_raw.OpeningWeekendBoxOffice)]

# Normalize the scores
imdb_normalized = sh.IMDB / 10   # IMDB scores out of 10
sh.insert(9,'IMDBNormalized', imdb_normalized)
rt_normalized = sh.RT/100        # RT scores out of 100
sh.insert(9, 'RTNormalized', rt_normalized)

print(sh[['RTNormalized','IMDBNormalized']].corr())
print(sh[['RTNormalized','IMDBNormalized']].describe())

#Plot correlation between ormalized scores
sh.plot.scatter(x='RTNormalized',y ='IMDBNormalized')
plt.show()
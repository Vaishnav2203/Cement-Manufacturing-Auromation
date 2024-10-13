import pandas as pd
import numpy as np

dataset = pd.read_csv(r'C:/Users/home/Desktop/PROJECTS/Project 1/Dataset (2).csv')

#  Dimension of data set
dataset.shape
dataset.dtypes

#  Missing value
missing_value = dataset1.isnull().sum()
print(missing_value)

# TREATMENT OF MISSING VALUE

# DFA_TPH
from sklearn.impute import SimpleImputer
# Median Imputer
median_imputer = SimpleImputer(missing_values = np.nan, strategy = 'median')
dataset["DFA_TPH"] = pd.DataFrame(median_imputer.fit_transform(dataset[["DFA_TPH"]]))
dataset["DFA_TPH"].isna().sum()  # all records replaced by median 

dataset.isna().sum()

# Mill_Vent_BF_OutLet_Draft
from sklearn.impute import SimpleImputer
# Median Imputer
median_imputer = SimpleImputer(missing_values = np.nan, strategy = 'median')
dataset["Mill_Vent_BF_OutLet_Draft"] = pd.DataFrame(median_imputer.fit_transform(dataset[["Mill_Vent_BF_OutLet_Draft"]]))
dataset["Mill_Vent_BF_OutLet_Draft"].isna().sum()  # all records replaced by median 

dataset.isna().sum()

# Sep_KW
from sklearn.impute import SimpleImputer
# Median Imputer
median_imputer = SimpleImputer(missing_values = np.nan, strategy = 'median')
dataset["Sep_KW"] = pd.DataFrame(median_imputer.fit_transform(dataset[["Sep_KW"]]))
dataset["Sep_KW"].isna().sum()  # all records replaced by median 

dataset.isna().sum()

# Sep_Vent_bag_filter_fan_rpm
from sklearn.impute import SimpleImputer
# Median Imputer
median_imputer = SimpleImputer(missing_values = np.nan, strategy = 'median')
dataset["Sep_Vent_bag_filter_fan_rpm"] = pd.DataFrame(median_imputer.fit_transform(dataset[["Sep_Vent_bag_filter_fan_rpm"]]))
dataset["Sep_Vent_bag_filter_fan_rpm"].isna().sum()  # all records replaced by median 

dataset.isna().sum()

# duplicate Values

#duplicate in row
duplicate = dataset.duplicated()
duplicate
sum(duplicate)

# TREATMENT OF DUPLICATE ROWS

dataset = dataset.drop_duplicates(keep = 'last')
duplicate = dataset.duplicated()
duplicate
sum(duplicate)

#duplicare in column
correlation = dataset.corr()


#  Outliers
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

# oultier in Mill_TPH
IQR = dataset['Mill_TPH'].quantile(0.75) - dataset['Mill_TPH'].quantile(0.25)

lower_limit = dataset['Mill_TPH'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_TPH'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_TPH > upper_limit, True, np.where(dataset.Mill_TPH < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]

len(df_out)

# oultier in Clinker_TPH
IQR = dataset['Clinker_TPH'].quantile(0.75) - dataset['Clinker_TPH'].quantile(0.25)

lower_limit = dataset['Clinker_TPH'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Clinker_TPH'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Clinker_TPH > upper_limit, True, np.where(dataset.Clinker_TPH < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]

len(df_out)

# oultier in Gypsum_TPH
IQR = dataset['Gypsum_TPH'].quantile(0.75) - dataset['Gypsum_TPH'].quantile(0.25)

lower_limit = dataset['Gypsum_TPH'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Gypsum_TPH'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Gypsum_TPH > upper_limit, True, np.where(dataset.Gypsum_TPH < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]

len(df_out)

# oultier in DFA_TPH
IQR = dataset['DFA_TPH'].quantile(0.75) - dataset['DFA_TPH'].quantile(0.25)

lower_limit = dataset['DFA_TPH'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['DFA_TPH'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.DFA_TPH > upper_limit, True, np.where(dataset.DFA_TPH < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]

len(df_out)

# oultier in WFA_TPH
IQR = dataset['WFA_TPH'].quantile(0.75) - dataset['WFA_TPH'].quantile(0.25)

lower_limit = dataset['WFA_TPH'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['WFA_TPH'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.WFA_TPH > upper_limit, True, np.where(dataset.WFA_TPH < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
Percentage = (len(df_out)/5504)*100

# oultier in Mill_KW
IQR = dataset['Mill_KW'].quantile(0.75) - dataset['Mill_KW'].quantile(0.25)

lower_limit = dataset['Mill_KW'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_KW'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_KW > upper_limit, True, np.where(dataset.Mill_KW < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
Percentage = (len(df_out)/5504)*100
print(len(df_out), Percentage)

# oultier in Mill_IntLet_Temp
IQR = dataset['Mill_InLet_Temp'].quantile(0.75) - dataset['Mill_InLet_Temp'].quantile(0.25)

lower_limit = dataset['Mill_InLet_Temp'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_InLet_Temp'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_InLet_Temp > upper_limit, True, np.where(dataset.Mill_InLet_Temp < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
Percentage = (len(df_out)/5504)*100
print(len(df_out), Percentage)

# oultier in Mill_OutLet_Temp
IQR = dataset['Mill_OutLet_Temp'].quantile(0.75) - dataset['Mill_OutLet_Temp'].quantile(0.25)

lower_limit = dataset['Mill_OutLet_Temp'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_OutLet_Temp'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_OutLet_Temp > upper_limit, True, np.where(dataset.Mill_OutLet_Temp < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
Percentage = (len(df_out)/5504)*100
print(len(df_out), Percentage)

# oultier in Mill_OutLet_BE_Amp
IQR = dataset['Mill_OutLet_BE_Amp'].quantile(0.75) - dataset['Mill_OutLet_BE_Amp'].quantile(0.25)

lower_limit = dataset['Mill_OutLet_BE_Amp'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_OutLet_BE_Amp'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_OutLet_BE_Amp > upper_limit, True, np.where(dataset.Mill_OutLet_BE_Amp < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
Percentage = (len(df_out)/5504)*100
print(len(df_out), Percentage)

# oultier in Mill_Vent_Fan_RPM
IQR = dataset['Mill_Vent_Fan_RPM'].quantile(0.75) - dataset['Mill_Vent_Fan_RPM'].quantile(0.25)

lower_limit = dataset['Mill_Vent_Fan_RPM'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_Vent_Fan_RPM'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_Vent_Fan_RPM > upper_limit, True, np.where(dataset.Mill_Vent_Fan_RPM < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
Percentage = (len(df_out)/5504)*100
print(len(df_out), Percentage) 

# oultier in Mill_Vent_Fan_KW
IQR = dataset['Mill_Vent_Fan_KW'].quantile(0.75) - dataset['Mill_Vent_Fan_KW'].quantile(0.25)

lower_limit = dataset['Mill_Vent_Fan_KW'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_Vent_Fan_KW'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_Vent_Fan_KW > upper_limit, True, np.where(dataset.Mill_Vent_Fan_KW < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
Percentage = (len(df_out)/5504)*100
print(len(df_out), Percentage)

# oultier in Mill_Vent_BF_IntLet_Draft
IQR = dataset['Mill_Vent_BF_InLet_Draft'].quantile(0.75) - dataset['Mill_Vent_BF_InLet_Draft'].quantile(0.25)

lower_limit = dataset['Mill_Vent_BF_InLet_Draft'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_Vent_BF_InLet_Draft'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_Vent_BF_InLet_Draft > upper_limit, True, np.where(dataset.Mill_Vent_BF_InLet_Draft < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Mill_Vent_BF_OutLet_Draft
IQR = dataset['Mill_Vent_BF_OutLet_Draft'].quantile(0.75) - dataset['Mill_Vent_BF_OutLet_Draft'].quantile(0.25)

lower_limit = dataset['Mill_Vent_BF_OutLet_Draft'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_Vent_BF_OutLet_Draft'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_Vent_BF_OutLet_Draft > upper_limit, True, np.where(dataset.Mill_Vent_BF_OutLet_Draft < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Reject
IQR = dataset['Reject'].quantile(0.75) - dataset['Reject'].quantile(0.25)

lower_limit = dataset['Reject'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Reject'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Reject > upper_limit, True, np.where(dataset.Reject < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Sep_RPM
IQR = dataset['Sep_RPM'].quantile(0.75) - dataset['Sep_RPM'].quantile(0.25)

lower_limit = dataset['Sep_RPM'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Sep_RPM'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Sep_RPM > upper_limit, True, np.where(dataset.Sep_RPM < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Sep_KW
IQR = dataset['Sep_KW'].quantile(0.75) - dataset['Sep_KW'].quantile(0.25)

lower_limit = dataset['Sep_KW'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Sep_KW'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Sep_KW > upper_limit, True, np.where(dataset.Sep_KW < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Sep_Amp
IQR = dataset['Sep_Amp'].quantile(0.75) - dataset['Sep_Amp'].quantile(0.25)

lower_limit = dataset['Sep_Amp'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Sep_Amp'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Sep_Amp > upper_limit, True, np.where(dataset.Sep_Amp < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in CA_Fan_RPM
IQR = dataset['CA_Fan_RPM'].quantile(0.75) - dataset['CA_Fan_RPM'].quantile(0.25)

lower_limit = dataset['CA_Fan_RPM'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['CA_Fan_RPM'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.CA_Fan_RPM > upper_limit, True, np.where(dataset.CA_Fan_RPM < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in CA_Fan_KW
IQR = dataset['CA_Fan_KW'].quantile(0.75) - dataset['CA_Fan_KW'].quantile(0.25)

lower_limit = dataset['CA_Fan_KW'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['CA_Fan_KW'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.CA_Fan_KW > upper_limit, True, np.where(dataset.CA_Fan_KW < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Mill_Folaphone
IQR = dataset['Mill_Folaphone'].quantile(0.75) - dataset['Mill_Folaphone'].quantile(0.25)

lower_limit = dataset['Mill_Folaphone'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_Folaphone'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_Folaphone > upper_limit, True, np.where(dataset.Mill_Folaphone < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Mill_IntLet_Draft
IQR = dataset['Mill_InLet_Draft'].quantile(0.75) - dataset['Mill_InLet_Draft'].quantile(0.25)

lower_limit = dataset['Mill_InLet_Draft'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_InLet_Draft'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_InLet_Draft > upper_limit, True, np.where(dataset.Mill_InLet_Draft < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Mill_OutLet_Draft
IQR = dataset['Mill_OutLet_Draft'].quantile(0.75) - dataset['Mill_OutLet_Draft'].quantile(0.25)

lower_limit = dataset['Mill_OutLet_Draft'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Mill_OutLet_Draft'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Mill_OutLet_Draft > upper_limit, True, np.where(dataset.Mill_OutLet_Draft < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Sep_Vent_IntLet_Draft
IQR = dataset['Sep_Vent_InLet_Draft'].quantile(0.75) - dataset['Sep_Vent_InLet_Draft'].quantile(0.25)

lower_limit = dataset['Sep_Vent_InLet_Draft'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Sep_Vent_InLet_Draft'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Sep_Vent_InLet_Draft > upper_limit, True, np.where(dataset.Sep_Vent_InLet_Draft < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Sep_Vent_OutLet_Draft
IQR = dataset['Sep_Vent_OutLet_Draft'].quantile(0.75) - dataset['Sep_Vent_OutLet_Draft'].quantile(0.25)

lower_limit = dataset['Sep_Vent_OutLet_Draft'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Sep_Vent_OutLet_Draft'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Sep_Vent_OutLet_Draft > upper_limit, True, np.where(dataset.Sep_Vent_OutLet_Draft < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Sep_Vent_bag_filter_fan_kw
IQR = dataset['Sep_Vent_bag_filter_fan_kw'].quantile(0.75) - dataset['Sep_Vent_bag_filter_fan_kw'].quantile(0.25)

lower_limit = dataset['Sep_Vent_bag_filter_fan_kw'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Sep_Vent_bag_filter_fan_kw'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Sep_Vent_bag_filter_fan_kw > upper_limit, True, np.where(dataset.Sep_Vent_bag_filter_fan_kw < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)


# oultier in Sep_Vent_bag_filter_fan_rpm
IQR = dataset['Sep_Vent_bag_filter_fan_rpm'].quantile(0.75) - dataset['Sep_Vent_bag_filter_fan_rpm'].quantile(0.25)

lower_limit = dataset['Sep_Vent_bag_filter_fan_rpm'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Sep_Vent_bag_filter_fan_rpm'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Sep_Vent_bag_filter_fan_rpm > upper_limit, True, np.where(dataset.Sep_Vent_bag_filter_fan_rpm < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)

# oultier in Residue
IQR = dataset['Residue'].quantile(0.75) - dataset['Residue'].quantile(0.25)

lower_limit = dataset['Residue'].quantile(0.25) - (IQR * 1.5)
upper_limit = dataset['Residue'].quantile(0.75) + (IQR * 1.5)

outliers_df = np.where(dataset.Residue > upper_limit, True, np.where(dataset.Residue < lower_limit, True, False))
df_out = dataset.loc[outliers_df, ]
len(df_out)



# BoxPlot
sns.boxplot(dataset.Mill_TPH)
plt.title('Mill_TPH')
plt.show()
 
sns.boxplot(dataset.Clinker_TPH)
plt.title('Clinker_TPH')
plt.show()
 
sns.boxplot(dataset.Gypsum_TPH)
plt.title('Gypsum_TPH')
plt.show()
 
sns.boxplot(dataset.DF_TPH)
plt.title('DFA_TPH')
plt.show()
 
sns.boxplot(dataset.WFA_TPH)
plt.title('WFA_TPH')
plt.show()
 
sns.boxplot(dataset.Mill_KW)
plt.title('Mill_KW')
plt.show()
 
sns.boxplot(dataset.Mill_IntLet_Temp)
plt.title('Mill_IntLet_Temp')
plt.show()
 
sns.boxplot(dataset.Mill_OutLet_Temp)
plt.title('Mill_OutLet_Temp')
plt.show()
 
sns.boxplot(dataset.Mill_OutLet_BE_Amp)
plt.title('Mill_OutLet_BE_Amp')
plt.show()
 
sns.boxplot(dataset.Mill_Vent_Fan_RPM)
plt.title('Mill_Vent_Fan_RPM')
plt.show()
 
sns.boxplot(dataset.Mill_Vent_Fan_KW)
plt.title('Mill_Vent_Fan_KW')
plt.show()
 
sns.boxplot(dataset.Mill_Vent_BF_IntLet_Draft)
plt.title('Mill_Vent_BF_IntLet_Draft')
plt.show()
 

sns.boxplot(dataset.Mill_Vent_BF_OutLet_Draft)
plt.title('Mill_Vent_BF_OutLet_Draft')
plt.show()

sns.boxplot(dataset.Reject)
plt.title('Reject')
plt.show()
 
sns.boxplot(dataset.Sep_RPM)
plt.title('Sep_RPM')
plt.show()
 
sns.boxplot(dataset.Sep_KW)
plt.title('Sep_KW')
plt.show()
 
sns.boxplot(dataset.Sep_Amp)
plt.title('Sep_Amp')
plt.show()
 
sns.boxplot(dataset.CA_Fan_RPM)
plt.title('CA_Fan_RPM')
plt.show()
 
sns.boxplot(dataset.CA_Fan_KW)
plt.title('CA_Fan_KW')
plt.show()
 
sns.boxplot(dataset.Mill_Folaphone)
plt.title('Mill_Folaphone')
plt.show()
 
sns.boxplot(dataset.Mill_IntLet_Draft)
plt.title('Mill_IntLet_Draft')
plt.show()
 
sns.boxplot(dataset.Mill_OutLet_Draft)
plt.title('Mill_OutLet_Draft')
plt.show()
 
sns.boxplot(dataset.Sep_Vent_IntLet_Draft)
plt.title('Sep_Vent_IntLet_Draft')
plt.show()
 
sns.boxplot(dataset.Sep_Vent_OutLet_Draft)
plt.title('Sep_Vent_OutLet_Draft')
plt.show()
 
sns.boxplot(dataset.Sep_Vent_bag_filter_fan_kw)
plt.title('Sep_Vent_bag_filter_fan_kw')
plt.show()
 
sns.boxplot(dataset.Sep_Vent_bag_filter_fan_rpm)
plt.title('Sep_Vent_bag_filter_fan_rpm')
plt.show()
 
sns.boxplot(dataset.Residue)
plt.title('Residue')
plt.show()
 
# Create a histogram
sns.distplot(dataset.Mill_TPH,  axlabel='Mill_TPH', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Clinker_TPH,  axlabel='Clinker_TPH', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Gypsum_TPH,  axlabel='Gypsum_TPH', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.DF_TPH,  axlabel='DFA_TPH', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.WFA_TPH,  axlabel='WFA_TPH', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_KW,  axlabel='Mill_KW', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_IntLet_Temp,  axlabel='Mill_IntLet_Temp', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_OutLet_Temp,  axlabel='Mill_OutLet_Temp', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_OutLet_BE_Amp,  axlabel='Mill_OutLet_BE_Amp', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_Vent_Fan_RPM,  axlabel='Mill_Vent_Fan_RPM', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_Vent_Fan_KW,  axlabel='Mill_Vent_Fan_KW', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_Vent_BF_IntLet_Draft,  axlabel='Mill_Vent_BF_IntLet_Draft', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_Vent_BF_OutLet_Draft,  axlabel='Mill_Vent_BF_OutLet_Draft', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Reject,  axlabel='Reject', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Sep_RPM,  axlabel='Sep_RPM', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Sep_KW,  axlabel='Sep_KW', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Sep_Amp,  axlabel='Sep_Amp', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.CA_Fan_RPM,  axlabel='CA_Fan_RPM', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.CA_Fan_KW,  axlabel='CA_Fan_KW', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_Folaphone,  axlabel='Mill_Folaphone', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_IntLet_Draft,  axlabel='Mill_IntLet_Draft', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Mill_OutLet_Draft,  axlabel='Mill_OutLet_Draft', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Sep_Vent_IntLet_Draft,  axlabel='Sep_Vent_IntLet_Draft', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Sep_Vent_OutLet_Draft,  axlabel='Sep_Vent_OutLet_Draft', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Sep_Vent_bag_filter_fan_kw,  axlabel='Sep_Vent_bag_filter_fan_kw', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Sep_Vent_bag_filter_fan_rpm,  axlabel='Sep_Vent_bag_filter_fan_rpm', color = 'purple' , hist_kws={"edgecolor" : 'black'})

sns.distplot(dataset.Residue,  axlabel='Residue', color = 'purple' , hist_kws={"edgecolor" : 'black'})




# Q-Q plot
import statsmodels.api as sm
sm.qqplot(dataset.Mill_TPH, line= 's', xlabel= 'Mill_TPH')

sm.qqplot(dataset.Clinker_TPH, line= 's', xlabel= 'Clinker_TPH')

sm.qqplot(dataset.Gypsum_TPH, line= 's', xlabel= 'Gypsum_TPH')

sm.qqplot(dataset.DF_TPH, line= 's', xlabel= 'DFA_TPH')

sm.qqplot(dataset.WFA_TPH, line= 's', xlabel= 'WFA_TPH')

sm.qqplot(dataset.Mill_KW, line= 's', xlabel= 'Mill_KW')

sm.qqplot(dataset.Mill_IntLet_Temp, line= 's', xlabel= 'Mill_IntLet_Temp')

sm.qqplot(dataset.Mill_OutLet_Temp, line= 's', xlabel= 'Mill_OutLet_Temp')

sm.qqplot(dataset.Mill_OutLet_BE_Amp, line= 's', xlabel= 'Mill_OutLet_BE_Amp')

sm.qqplot(dataset.Mill_Vent_Fan_RPM, line= 's', xlabel= 'Mill_Vent_Fan_RPM')

sm.qqplot(dataset.Mill_Vent_Fan_KW, line= 's', xlabel= 'Mill_Vent_Fan_KW')

sm.qqplot(dataset.Mill_Vent_BF_IntLet_Draft, line= 's', xlabel= 'Mill_Vent_BF_IntLet_Draft')

sm.qqplot(dataset.Mill_Vent_BF_OutLet_Draft, line= 's', xlabel= 'Mill_Vent_BF_OutLet_Draft')

sm.qqplot(dataset.Reject, line= 's', xlabel= 'Reject')

sm.qqplot(dataset.Sep_RPM, line= 's', xlabel= 'Sep_RPM')

sm.qqplot(dataset.Sep_KW, line= 's', xlabel= 'Sep_KW')

sm.qqplot(dataset.Sep_Amp, line= 's', xlabel= 'Sep_Amp')

sm.qqplot(dataset.CA_Fan_RPM, line= 's', xlabel= 'CA_Fan_RPM')

sm.qqplot(dataset.CA_Fan_KW, line= 's', xlabel= 'CA_Fan_KW')

sm.qqplot(dataset.Mill_Folaphone, line= 's', xlabel= 'Mill_Folaphone')

sm.qqplot(dataset.Mill_IntLet_Draft, line= 's', xlabel= 'Mill_IntLet_Draft')

sm.qqplot(dataset.Mill_OutLet_Draft, line= 's', xlabel= 'Mill_OutLet_Draft')

sm.qqplot(dataset.Sep_Vent_IntLet_Draft, line= 's', xlabel= 'Sep_Vent_IntLet_Draft')

sm.qqplot(dataset.Sep_Vent_OutLet_Draft, line= 's', xlabel= 'Sep_Vent_OutLet_Draft')

sm.qqplot(dataset.Sep_Vent_bag_filter_fan_kw, line= 's', xlabel= 'Sep_Vent_bag_filter_fan_kw')

sm.qqplot(dataset.Sep_Vent_bag_filter_fan_rpm, line= 's', xlabel= 'Sep_Vent_bag_filter_fan_rpm')

sm.qqplot(dataset.Residue, line= 's', xlabel= 'Residue')

plt.scatter(x = dataset['Mill_TPH'], y = dataset['Mill_KW']) 
plt.show()


sns.pairplot(dataset)
plt.show()

import pandas as pd
import numpy as np
dataset = pd.read_csv(r"C:/Users/home/Desktop/PROJECTS/Project 1/Dataset (2).csv")

Lower_limit = dataset.Mill_InLet_Temp.mean() - (3*dataset.Mill_InLet_Temp.std())
Upper_limit = dataset.Mill_InLet_Temp.mean() + (3*dataset.Mill_InLet_Temp.std())

IQR = dataset.Mill_InLet_Temp.quantile(0.75) - dataset.Mill_InLet_Temp.quantile(0.25)

Lower_limit = dataset.Mill_InLet_Temp.quantile(0.25) - (1.5*IQR)
Upper_limit = dataset.Mill_InLet_Temp.quantile(0.75) + (1.5*IQR)

outlier = np.where(dataset.Mill_InLet_Temp > Upper_limit, True, np.where(dataset.Mill_InLet_Temp < Lower_limit, True, False))
df_out = dataset.loc[outlier]
df_out1 = dataset.loc[outlier, ]
len(df_out)



import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import scipy.stats as stats
dataset = pd.read_csv(r'C:/Users/home/Desktop/PROJECTS/Project 1/Dataset (2).csv')
sns.boxplot(dataset.Mill_InLet_Temp)

lower_limit = dataset.Mill_InLet_Temp.mean() - (3*dataset.Mill_InLet_Temp.std())
upper_limit = dataset.Mill_InLet_Temp.mean() + (3*dataset.Mill_InLet_Temp.std())

Outlier = np.where(dataset.Mill_InLet_Temp > upper_limit , True , np.where(dataset.Mill_InLet_Temp < lower_limit , True , False))
df_out = dataset.loc[Outlier, ]
len(df_out)

'Treatment of outlier'
dataset['df_replace'] = pd.DataFrame(np.where(dataset.Mill_InLet_Temp > upper_limit , upper_limit , np.where(dataset.Mill_InLet_Temp < lower_limit, lower_limit, dataset.Mill_InLet_Temp)))
sns.boxplot(dataset.df_replace)

# # # # # # # # # # # # # # # # # # # # # # # # #
''''Identify Outlier'''
IQR = dataset.Mill_InLet_Temp.quantile(0.75) - dataset['Mill_InLet_Temp'].quantile(0.25)
lower = dataset.Mill_InLet_Temp.quantile(0.25) - (1.5*IQR)
upper = dataset.Mill_InLet_Temp.quantile(0.75) + (1.5*IQR)

Outlier = np.where(dataset.Mill_InLet_Temp > upper , True , np.where(dataset.Mill_InLet_Temp < lower , True , False))
df_out = dataset.loc[Outlier, ]
len(df_out)

'''Treatment of Outlier'''
dataset['Mill_InLet_Temp'] = pd.DataFrame(np.where(dataset.Mill_InLet_Temp > upper , upper , np.where(dataset.Mill_InLet_Temp < lower, lower, dataset.Mill_InLet_Temp)))
dataset.Mill_InLet_Temp.mean()
dataset.Mill_InLet_Temp.median()
dataset.Mill_InLet_Temp.mode()

'''Data Transformation'''
import scipy.stats as stats
stats.probplot(dataset.fitted_data, dist ="norm", plot = plt)
stats.probplot(np.log(dataset.Mill_InLet_Temp), dist = "norm", plot = plt)
stats.probplot(dataset.Mill_InLet_Temp, dist = "norm" , plot = plt)

dataset.fitted_data, fitted_lamda = stats.boxcox(dataset.Mill_InLet_Temp)

fig, ax = plt.subplots(1, 2)

# Plotting the original data (non-normal) and fitted data (normal)
sns.distplot(df_norm, hist = False, kde = True,
             kde_kws = {'shade': True, 'linewidth': 2},
             label = "Non-Normal", color = "green", ax = ax[0])

sns.distplot(dataset.fitted_data, hist = False, kde = True,
             kde_kws = {'shade': True, 'linewidth': 2},
             label = "Normal", color = "green", ax = ax[1])

plt.hist(dataset.df_replace)

sns.distplot(dataset.Mill_InLet_Temp, hist = True, color= 'green')
sns.distplot(dataset.df_replace, hist = True, color= 'red')
sns.distplot(df_norm, hist = True, color= 'red')

IQR = dataset.fitted_data.quantile(0.75) - dataset['fitted_data'].quantile(0.25)
lower = dataset.fitted_data.quantile(0.25) - (1.5*IQR)
upper = dataset.fitted_data.quantile(0.75) + (1.5*IQR)

def norm_func(i):
    x = (i-i.min())/(i.max()-i.min())
    return(x)

df_norm = norm_func(dataset.df_replace)
b = df_norm.describe()

sns.boxplot(df_norm)
sns.distplot(df_norm)


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import scipy.stats as stats



'''Normlization'''

#Histogram before nomalization
sns.distplot(dataset.Mill_InLet_Temp, hist = True , color ='green')
plt.title('original')
plt.show()

""" Box Cox Trnasformation """
fitted_data, fitted_lamda = stats.boxcox(dataset.Mill_InLet_Temp)
dataset['fitted_data'] = fitted_data

sns.distplot(dataset.fitted_data, hist = True, color = 'green')
plt.title('boxcox transormation')

""" Normalization """
def norm_func(i):
    x = (i-i.min()/(i.max()-i.min()))
    return(x)

def norm_func(i):
    x = (i-i.min())/(i.max()-i.min())
    return(x)

dataset['df_norm'] = norm_func(dataset.Mill_InLet_Temp)
b = dataset.describe()

dataset.Mill_InLet_Temp.mean()

sns.distplot(dataset.df_norm, hist = True , color ='green')
plt.title('MinMaxScaler')

""" standardization """

def df_std (i):
    x = ((i - i.mean())/i.std())
    return(x)

dataset['df_std'] = df_std(dataset.Mill_InLet_Temp)

sns.distplot(dataset.df_std , hist = True , color ='green')
plt.title('Standardization')


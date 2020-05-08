## Introduction

The purpose of this assignment is to reproduce the plots that are available 
from the following GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)

## Output Files

|**Plot#** | **My Plot**     | **Example Plot**  |
|:--|-----------------| ---------------------|
| 1 | ![plot1.png](plot1.png)  | ![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png)  |
| 2 | ![plot2.png](plot2.png)       |   ![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png)  |
| 3 | ![plot3.png](plot3.png)       |    ![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png)  |
| 4 | ![plot4.png](plot4.png)       |   ![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png)  |

## Methodology

### Data
This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which is available from:

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.

The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

### Loading the data

The scripts look to see if the data already exists. If not it will download
and extract the data.

The is reads in only the lines containing the relevant dates, 2007-02-01 and
2007-02-02. 

### Making Plots
* Each plot is saved to a PNG file with a width of 480 pixels and a height of 480 pixels.

* The name each of the plot file is `plot1.png`, `plot2.png`, etc.

* Each plot has  a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot. 

* Each code file includes code for reading the data so that the plot can be 
fully reproduced as well as the code that creates the PNG file.




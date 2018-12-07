# Code Book
Execution of run_analysis.r at 2018-12-07 14:30:14.


The data set that this code book pertains to is located in the tidy_data.txt file of this repository.See the README.md file of this repository for background information on this data set. The structure of the data set is described in the Data section, its variables are listed in the Variables section, and the transformations that were carried out to obtain the data set based on the source data are presented in the Transformations section.
  
DATA  
       
The tidy_data.txt data file is a text file, containing space-separated values. The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables

Variable

Each row contains, for a given subject and activity, 79 averaged signal measurements.

Identifiers 

        subject 
            Subject identifier, integer, ranges from 1 to 30.
        activity
            Activity identifier, string with 6 possible values:
                o WALKING: subject was walking
                o WALKING_UPSTAIRS: subject was walking upstairs
                o WALKING_DOWNSTAIRS: subject was walking downstairs
                o SITTING: subject was sitting
                o STANDING: subject was standing
                o LAYING: subject was laying

Average of measurements: 
All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing Accelerometer) were made in g's (9.81 m.s???²) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s???¹).Magnitudes of three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.

The measurements are classified in two domains

. Time-domain signals (variables prefixed by timeDomain), resulting from the capture of accelerometer and gyroscope raw signals. 
. Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals. 

Time-domain signals 
.	Average time-domain body acceleration in the X, Y and Z directions: 
    o	timeDomainBodyAccelerometerMeanX 
    o	timeDomainBodyAccelerometerMeanY 
    o	timeDomainBodyAccelerometerMeanZ 
.	Standard deviation of the time-domain body acceleration in the X, Y and Z directions: 
         o	timeDomainBodyAccelerometerStandardDeviationX 
         o	timeDomainBodyAccelerometerStandardDeviationY 
         o	timeDomainBodyAccelerometerStandardDeviationZ 
         .	Average time-domain gravity acceleration in the X, Y and Z directions: 
         o	timeDomainGravityAccelerometerMeanX 
         o	timeDomainGravityAccelerometerMeanY 
         o	timeDomainGravityAccelerometerMeanZ 
.	Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions: 
         o	timeDomainGravityAccelerometerStandardDeviationX 
         o	timeDomainGravityAccelerometerStandardDeviationY 
         o	timeDomainGravityAccelerometerStandardDeviationZ 
.	Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions: 
         o	timeDomainBodyAccelerometerJerkMeanX 
         o	timeDomainBodyAccelerometerJerkMeanY 
         o	timeDomainBodyAccelerometerJerkMeanZ 
.	Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions: 
         o	timeDomainBodyAccelerometerJerkStandardDeviationX 
         o	timeDomainBodyAccelerometerJerkStandardDeviationY 
         o	timeDomainBodyAccelerometerJerkStandardDeviationZ 
.	Average time-domain body angular velocity in the X, Y and Z directions: 
         o	timeDomainBodyGyroscopeMeanX 
         o	timeDomainBodyGyroscopeMeanY 
         o	timeDomainBodyGyroscopeMeanZ 
.	Standard deviation of the time-domain body angular velocity in the X, Y and Z directions: 
         o	timeDomainBodyGyroscopeStandardDeviationX 
         o	timeDomainBodyGyroscopeStandardDeviationY 
         o	timeDomainBodyGyroscopeStandardDeviationZ 
.	Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions: 
         o	timeDomainBodyGyroscopeJerkMeanX 
         o	timeDomainBodyGyroscopeJerkMeanY 
         o	timeDomainBodyGyroscopeJerkMeanZ 
.	Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions: 
         o	timeDomainBodyGyroscopeJerkStandardDeviationX 
         o	timeDomainBodyGyroscopeJerkStandardDeviationY 
         o	timeDomainBodyGyroscopeJerkStandardDeviationZ 
.	Average and standard deviation of the time-domain magnitude of body acceleration: 
         o	timeDomainBodyAccelerometerMagnitudeMean 
         o	timeDomainBodyAccelerometerMagnitudeStandardDeviation 
.	Average and standard deviation of the time-domain magnitude of gravity acceleration: 
         o	timeDomainGravityAccelerometerMagnitudeMean 
         o	timeDomainGravityAccelerometerMagnitudeStandardDeviation 
.	Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time): 
         o	timeDomainBodyAccelerometerJerkMagnitudeMean 
         o	timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation 
.	Average and standard deviation of the time-domain magnitude of body angular velocity: 
         o	timeDomainBodyGyroscopeMagnitudeMean 
         o	timeDomainBodyGyroscopeMagnitudeStandardDeviation 
.	Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time): 
         o	timeDomainBodyGyroscopeJerkMagnitudeMean 
         o	timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation 
         
Frequency-domain signals 
.	Average frequency-domain body acceleration in the X, Y and Z directions: 
         o	frequencyDomainBodyAccelerometerMeanX 
         o	frequencyDomainBodyAccelerometerMeanY 
         o	frequencyDomainBodyAccelerometerMeanZ 
.	Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions: 
         o	frequencyDomainBodyAccelerometerStandardDeviationX 
         o	frequencyDomainBodyAccelerometerStandardDeviationY 
         o	frequencyDomainBodyAccelerometerStandardDeviationZ 
.	Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions: 
         o	frequencyDomainBodyAccelerometerMeanFrequencyX 
         o	frequencyDomainBodyAccelerometerMeanFrequencyY 
         o	frequencyDomainBodyAccelerometerMeanFrequencyZ 
.	Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions: 
         o	frequencyDomainBodyAccelerometerJerkMeanX 
         o	frequencyDomainBodyAccelerometerJerkMeanY 
         o	frequencyDomainBodyAccelerometerJerkMeanZ 
.	Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions: 
         o	frequencyDomainBodyAccelerometerJerkStandardDeviationX 
         o	frequencyDomainBodyAccelerometerJerkStandardDeviationY 
         o	frequencyDomainBodyAccelerometerJerkStandardDeviationZ 
.	Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions: 
         o	frequencyDomainBodyAccelerometerJerkMeanFrequencyX 
         o	frequencyDomainBodyAccelerometerJerkMeanFrequencyY 
         o	frequencyDomainBodyAccelerometerJerkMeanFrequencyZ 
.	Average frequency-domain body angular velocity in the X, Y and Z directions: 
         o	frequencyDomainBodyGyroscopeMeanX 
         o	frequencyDomainBodyGyroscopeMeanY 
         o	frequencyDomainBodyGyroscopeMeanZ 
. Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions: 
         o	frequencyDomainBodyGyroscopeStandardDeviationX 
         o	frequencyDomainBodyGyroscopeStandardDeviationY 
         o	frequencyDomainBodyGyroscopeStandardDeviationZ 
.	Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions: 
         o	frequencyDomainBodyGyroscopeMeanFrequencyX 
         o	frequencyDomainBodyGyroscopeMeanFrequencyY 
         o	frequencyDomainBodyGyroscopeMeanFrequencyZ 
.	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration: 
         o	frequencyDomainBodyAccelerometerMagnitudeMean 
         o	frequencyDomainBodyAccelerometerMagnitudeStandardDeviation 
         o	frequencyDomainBodyAccelerometerMagnitudeMeanFrequency 
.	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time): 
         o	frequencyDomainBodyAccelerometerJerkMagnitudeMean 
         o	frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation 
         o	frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency 
.	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity: 
         o	frequencyDomainBodyGyroscopeMagnitudeMean 
         o	frequencyDomainBodyGyroscopeMagnitudeStandardDeviation 
         o	frequencyDomainBodyGyroscopeMagnitudeMeanFrequency 
.	Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time): 
         o	frequencyDomainBodyGyroscopeJerkMagnitudeMean 
         o	frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation 
         o	frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency 
         
The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 
         
The following transformations were applied to the source data: 
    1.	The training and test sets were merged to create one data set. 
    2.	The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement, and the others were discarded. 
    3.	The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see Identifiers section). 
    4.	The variable names were replaced with descriptive variable names (e.g. tBodyAcc-mean()-X was expanded to timeDomainBodyAccelerometerMeanX), using the following set of rules: 
         a.	Special characters (i.e. (, ), and -) were removed 
         b.	The initial f and t were expanded to frequencyDomain and timeDomain respectively. 
         c.	Acc, Gyro, Mag, Freq, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and StandardDeviation respectively. 
         d.	Replaced (supposedly incorrect as per source's features_info.txt file) BodyBody with Body. 
    5.	From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject. 
    


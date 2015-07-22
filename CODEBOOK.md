#*CODEBOOK of the tidydataset*

The tidydataset is made up of 68 variables, in columns, two of them allow subject and activity to be identified.
The rest of the variables are the mean and the standard deviation of diferent measurements.
The data set has 130 observations (30 subject x 6 activities per subject). For each subject and activity the average of the mean and the average of the standard deviation has been calculated.

Measure units are not clear: some of them are expressed as time while others are expressed as frequency. That feature has been included in the descriptive name used for the variables by starting with 'time' or 'freq'.


##List of variables:

subject: identification of the subject who carried out the experiment
activity: activity performed by the subject

**Mean variables**
time.body.accel.mean.X: average of body acceleration on the X axis measured as time
time.body.accel.mean.Y: average of body acceleration on the Y axis measured as time
time.body.accel.mean.Z: average of body acceleration on the Z axis measured as time

time.gravity.accel.mean.X: average of gravity acceleration on the X axis measured as time
time.gravity.accel.mean.Y: average of gravity acceleration on the Y axis measured as time
time.gravity.accel.mean.Z: average of gravity acceleration on the Z axis measured as time

time.body.accel.jerk.mean.X: average of jerk on the X axis obtained by deriving body acceleration in time
time.body.accel.jerk.mean.Y: average of jerk on the Y axis obtained by deriving body acceleration in time
time.body.accel.Jerk.mean.Z: average of jerk on the Z axis obtained by deriving body acceleration in time

time.body.ang.velocity.mean.X: average of body angular velocity on the X axis measured as time
time.body.ang.velocity.mean.Y: average of body angular velocity on the Y axis measured as time
time.body.ang.velocity.mean.Z: average of body angular velocity on the Z axis measured as time

time.body.ang.velocity.jerk.mean.X: average of jerk on the X axis obtained by deriving body angular velocity in time
time.body.ang.velocity.jerk.mean.Y: average of jerk on the Y axis obtained by deriving body angular velocity in time
time.body.ang.velocity.jerk.mean.Z: average of jerk on the Z axis obtained by deriving body angular velocity in time

time.body.accel.magnitude.mean: average magnitude (euclidean norm) of the body acceleration measured as time
time.gravity.accel.magnitude.mean: average magnitude (euclidean norm) of the gravity acceleration measured as time
time.body.accel.jerk.magnitude.mean: average magnitude (euclidean norm) of the jerk obtained by deriving body acceleration in time

time.body.ang.velocity.magnitude.mean: average magnitude (euclidean norm) of the body angular velocity measured as time
time.body.ang.velocity.jerk.magnitude.mean: average magnitude (euclidean norm) of the jerk obtained by deriving body angular velocity in time

freq.body.accel.mean.X: average body acceleration on the X axis measured as frequency
freq.body.accel.mean.Y: average body acceleration on the Y axis measured as frequency
freq.body.accel.mean.Z: average body acceleration on the Z axis measured as frequency

freq.body.accel.jerk.mean.X: average of jerk on the X axis obtained by deriving body acceleration in frequency
freq.body.accel.jerk.mean.Y: average of jerk on the Y axis obtained by deriving body acceleration in frequency
freq.body.accel.jerk.mean.Z: average of jerk on the Z axis obtained by deriving body acceleration in frequency

freq.body.ang.velocity.mean.X: average of body angular velocity on the X axis measured as frequency
freq.body.ang.velocity.mean.Y: average of body angular velocity on the Y axis measured as frequency
freq.body.ang.velocity.mean.Z: average of body angular velocity on the Z axis measured as frequency

freq.body.accel.magnitude.mean: average magnitude (euclidean norm) of the body acceleration measured as frequency
freq.body.accel.jerk.magnitude.mean: average magnitude (euclidean norm) of the jerk obtained by deriving body acceleration in frequency
freq.body.ang.velocity.magnitude.mean: average magnitude (euclidean norm) of the body angular velocity measured as frequency
freq.body.ang.velocity.jerk.magnitude.mean: average magnitude (euclidean norm) of the jerk obtained by deriving body angular velocity in frequency


**Standard deviation variables**
time.body.accel.stddev.X: average of body acceleration on the X axis measured as time
time.body.accel.stddev.Y: average of body acceleration on the Y axis measured as time
time.body.accel.stddev.Z: average of body acceleration on the Z axis measured as time

time.gravity.accel.stddev.X: average of gravity acceleration on the X axis measured as time
time.gravity.accel.stddev.Y: average of gravity acceleration on the Y axis measured as time
time.gravity.accel.stddev.Z: average of gravity acceleration on the Z axis measured as time

time.body.accel.jerk.stddev.X: average of jerk on the X axis obtained by deriving body acceleration in time
time.body.accel.jerk.stddev.Y: average of jerk on the Y axis obtained by deriving body acceleration in time
time.body.accel.Jerk.stddev.Z: average of jerk on the Z axis obtained by deriving body acceleration in time

time.body.ang.velocity.stddev.X: average of body angular velocity on the X axis measured as time
time.body.ang.velocity.stddev.Y: average of body angular velocity on the Y axis measured as time
time.body.ang.velocity.stddev.Z: average of body angular velocity on the Z axis measured as time

time.body.ang.velocity.jerk.stddev.X: average of jerk on the X axis obtained by deriving body angular velocity in time
time.body.ang.velocity.jerk.stddev.Y: average of jerk on the Y axis obtained by deriving body angular velocity in time
time.body.ang.velocity.jerk.stddev.Z: average of jerk on the Z axis obtained by deriving body angular velocity in time

time.body.accel.magnitude.stddev: average magnitude (euclidean norm) of the body acceleration measured as time
time.gravity.accel.magnitude.stddev: average magnitude (euclidean norm) of the gravity acceleration measured as time
time.body.accel.jerk.magnitude.stddev: average magnitude (euclidean norm) of the jerk obtained by deriving body acceleration in time

time.body.ang.velocity.magnitude.stddev: average magnitude (euclidean norm) of the body angular velocity measured as time
time.body.ang.velocity.jerk.magnitude.stddev: average magnitude (euclidean norm) of the jerk obtained by deriving body angular velocity in time

freq.body.accel.stddev.X: average body acceleration on the X axis measured as frequency
freq.body.accel.stddev.Y: average body acceleration on the Y axis measured as frequency
freq.body.accel.stddev.Z: average body acceleration on the Z axis measured as frequency

freq.body.accel.jerk.stddev.X: average of jerk on the X axis obtained by deriving body acceleration in frequency
freq.body.accel.jerk.stddev.Y: average of jerk on the Y axis obtained by deriving body acceleration in frequency
freq.body.accel.jerk.stddev.Z: average of jerk on the Z axis obtained by deriving body acceleration in frequency

freq.body.ang.velocity.stddev.X: average of body angular velocity on the X axis measured as frequency
freq.body.ang.velocity.stddev.Y: average of body angular velocity on the Y axis measured as frequency
freq.body.ang.velocity.stddev.Z: average of body angular velocity on the Z axis measured as frequency

freq.body.accel.magnitude.stddev: average magnitude (euclidean norm) of the body acceleration measured as frequency
freq.body.accel.jerk.magnitude.stddev: average magnitude (euclidean norm) of the jerk obtained by deriving body acceleration in frequency
freq.body.ang.velocity.magnitude.stddev: average magnitude (euclidean norm) of the body angular velocity measured as frequency
freq.body.ang.velocity.jerk.magnitude.stddev: average magnitude (euclidean norm) of the jerk obtained by deriving body angular velocity in frequency


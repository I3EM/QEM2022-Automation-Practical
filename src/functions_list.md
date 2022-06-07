# List of Microscope Related Functions

## Beam Shift

```java
// Get the current Beam Shift
void EMGetBeamShift(number &shiftX, number &shiftY)

// Set the beam shift to the values specified
void EMSetBeamShift(number beamshiftX, number beamshiftY)

// Change the beam shift by the amount specified in x and y
void EMChangeBeamShift(number xAmount, number yAmount)

// Get the Calibrated Beam Shift
void EMGetCalibratedBeamShift(number &calbeamshiftX, number &calbeamshiftY)

// Set the calibrated beam shift to the values specified
void EMSetCalibratedBeamShift( number calbeamshiftX, number calbeamshiftY)

// Changes the beam shift by the calibrated amounts supplied
void EMChangeCalibratedBeamShift(number xAmount, number yAmount)
```

## Beam Tilt

```java
// Get the current Beam Tilts
void EMGetBeamTilt(number &tiltX, number &tiltY)

// Set the beam tilts to the values specified
void EMSetBeamTilt(number beamtiltX, number beamtiltY )

// Changes the beam tilt by the amount specified in x and y
void EMChangeBeamTilt(number xAmount, number yAmount)

// Get the calibrated beam tilt
void EMGetCalibratedBeamTilt(number caltiltX, number  caltiltY)

// Set the calibrated beam tilts to the values specified
void EMSetCalibratedBeamTilt(number  setcaltiltX, number setcaltiltY)

// Change the beam tilt by the calibrated amounts
void EMChangeCalibratedBeamTilt(number xAmount, number yAmount)
```

## Image Shift

```java
// Get the current image shift x and y values
void EMGetImageShift(number &getimageshiftx, number &getimageshifty)

// Set the image shift to the values specified
void EMSetImageShift(number setimageshiftX, number setimageshiftY)

// Change the Image Shift by an uncalibrated amount
void EMChangeImageShift(number xAmount, number yAmount)

// Get the current calibrated image shifts
void EMGetCalibratedImageShift(number &calimgshiftX, number &calimgshiftY)

// Set the calibrated image shift to the values specified
void EMSetCalibratedImageShift(number setcalimageshiftX, number setcalimageshiftY)

// Change the image shift by a calibrated amount
void EMChangeCalibratedImageShift(number xAmount, number yAmount)
```

## Condensor Stigmation

```java
// Get the current condensor stigmator values
void EMGetCondensorStigmation(number &condstigx, number &condstigy)

// Set the condensor stigmation values to the those specified
void EMSetCondensorStigmation(number setcondstigX, number setcondstigY)

// Change the Condensor Stigmation
void EMChangeCondensorStigmation(number xAmount, number yAmount)
```

## Objective Stigmation

```java
// Change the (uncalibrated) objective stigmation
void EMChangeObjectiveStigmation(number xAmount, number yAmount)

// Get the current objective stigmation
void EMGetObjectiveStigmation(number &getstigx, number &getstigy)

// Set the objective stigmation value
void EMSetObjectiveStigmation(number setobjstigX, number setobjstigY)

// Get the current calibrated objective stigmation x and y values
void EMGetCalibratedObjectiveStigmation(number &calobjstigX, number & calobjstigY)

// Set the calibrated objective stigmation to the values specified
void EMSetCalibratedObjectiveStigmation(number setcalobjstigX, number setcalobjstigY )

// Change Calibrated Objective Stigmation
void EMChangeCalibratedObjectiveStigmation(number xAmount, number yAmount)
```

## Brightness

```java
// Get the current Brightness
number EMGetBrightness()

// Set the brightness to the value specified
void EMSetBrightness(number brightness)
```

## Focus 

```java
// Get the current focus
number EMGetFocus()

// Set the focus to the value specified
number EMSetFocus(number setfocus)

// Change the focus - by an uncalibrated amount 
void EMChangeFocus(number amount)

// Get the current calibrated focus value
number EMGetCalibratedFocus()

// Set the calibrated focus to the value specified
void EMSetCalibratedFocus(number setcalfocus)

// Change the focus by the calibrated amount
void EMChangeCalibratedFocus(number amount)
```

## Stage

```java
// Get the taggroup which (presumably) reports on the state of
// calibrations - (presumably) which are, and which are not, present.
TagGroup EMGetCalibrationStateTags()

// Read the current stage positions. The values read are selected
// by an axisflags parameter which can be any integer between 0 and
// 31 - see function for details
void EMGetStagePositions(number axisFlags, number &stagepositionx, number &stagepositiony, number &stagepositionz, number &stagealpha, number &stagebeta)

// Set the current stage positions. The values read are selected by an axisflags parameter
// which can be any integer between 0 and 31 - see function for details
void EMSetStagePositions(number axisFlags, number stagepositionx, number stagepositiony, number stagepositionz, number stagealpha, number stagebeta)

// Get the current stage x and y positions
void EMGetStageXY(number &stagexposition, number &stageyposition)

// Set the stage x and y values to those specified
void EMSetStageXY(number bisetstagex, number bisetstagey)

// Get the current stage x position
number EMGetStageX()

// Set the stage x position to the value specified
void EMSetStageX(number monosetstagex)

// Get the current stage y position
number EMGetStageY()

// Set the stage y position to the value specified
void EMSetStageY(number monosetstagey)

// Get the current stage z position
number EMGetStageZ()

// Set the stage z position to the value specified
void EMSetStageZ(number monosetstagez)

// Get the current stage alpha (x) tilt
number EMGetStageAlpha()

// Set the stage alpha (x tilt) to the value specified
void EMSetStageAlpha(number setstagealpha)

// Get the current stage beta (y) tilt
number EMGetStageBeta()

// Set the stage beta (y tilt) to the value specified
void EMSetStageBeta(number setstagebeta)
```

## Screen

```java
// Get the fluorescent screen position as an index
number EMGetScreenPosition()

// Set the screen position
void EMSetScreenPosition(number setscreenpos)
```

## High Tension 

```java
// Get the current high tension value
number EMGetHighTension()
```

## Magnification 

```java
// Get the current calibrated magnification
number EMGetCalibratedMag(String deviceLocation, TagGroup stateInfo, number &calMag, number matchOptions)

// Get the index of the current magnification 
number EMGetMagIndex()

// Set the magnification index - each magnification has a numberical value eg 1- 40
void EMSetMagIndex(number setmagindex)

// Get the current magnification
number EMGetMagnification()
```

## Field of View 

```java
// Get the calibrated field of view for the selected camera location
number EMGetCalibratedFieldOfView(String deviceLocation, TagGroup stateInfo, number calFOV, number matchOptions)
```

## Camera Length 

```java
// Get the current camera length
number EMGetCameraLength()

// Get the calibrated camera length
number EMGetCalibratedCameraLength(String deviceLocation, TagGroup stateInfo, number calCL, number matchOptions)
```

## Microscope Utilities 

```java
// Get the microscope name
String EMGetMicroscopeName()

// Get the current illumination mode as a string
String EMGetIlluminationMode()

// Get a taggroup which contains the various illuminatin modes available
TagGroup EMGetIlluminationModes()

// Get the imaging optics mode
String EMGetImagingOpticsMode()

// Get the available imaging optics modes as a taggroup()
TagGroup EMGetImagingOpticsModes()

// Get the current microscope operation mode
String EMGetOperationMode()

// Get the current spot size
number EMGetSpotSize()

// Set the spot size to the values specified
void EMSetSpotSize(number spotSize)

// Update the calibration state
void EMUpdateCalibrationState()

// Return a boolean indicating if the microscope is ready
number EMIsReady()

// Wait until the microscope is ready
void EMWaitUntilReady()
```

## Test functions 

```java
// Test whether the microscope can return the camera length
number EMCanGetCameraLength()

// Test whether the microscope can return the HT value
number EMCanGetHighTension()

// Test whether the microscope can return the current illumination mode
number EMCanGetIlluminationMode()

// Test whether the microscope can return the current optics mode
number EMCanGetImagingOpticsMode()

// Test whether the microscope can return the current magnification
number EMCanGetMagnification()
```
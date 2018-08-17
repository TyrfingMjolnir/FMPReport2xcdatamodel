# FMPReport2XCDataModel
## FileMaker Data Design XML Report to CoreData contents-file
This piece of tooling is an updated subset of a larger tool; for now there is only the data structure that is ported to 16 and tested. One thing that is beyond me is why FileMaker exports regular data as UTF-8 and this report as UTF-16... I would prefer to see all character data as UTF-8 myself.

#### Written by Gjermund Gusland Thorsen through years 1999 on, all rights deserved

### If you are using an older or newer version of XCode than 8.2.1 you may want to copy/paste the model element from your own CoreData file

## Reminder; removing id-attributes will make XCode regenerate unique IDs.

How to use this piece of tooling
---

## There is no need to download anything from this page to use this piece of tooling.

Create a new XCode project; make sure you have an empty CoreData xcdatamodel in your project

In FileMaker go to the Tools-menu, and ask for a Database Design Report ...
<img alt="Tools -> Database Design Report..." src="ScreenShot1.png" width="100%" max-width=1008>
<img alt="Make sure what you export is XML" src="ScreenShot2.png" width="100%" max-width=1008>
Make sure you check [X] Data Sources and check the radiobutton for (*) for XML
<img alt="Pick a place to save the file" src="ScreenShot3.png" width="100%" max-width=1008>
Save the file, preferably in the same folder as your FileMaker or XCode project if you are to play around with the data, or in the /tmp folder if it's a one off. 
<img alt="What the folder you save to should at least contain" src="ScreenShot4.png" width="100%" max-width=1008>

Please close your XCode project before you overwrite the entity file
```bash
$ time curl https://raw.githubusercontent.com/TyrfingMjolnir/FMPReport2xcdatamodel/master/fmpreport2xcdatamodel.xslt | xsltproc - DDRTestMotCoreData_fmp12.xml > DDRTestMotCoreData_fmp12.xcdatamodel/contents

real	0m3.400s
user	0m0.848s
sys	0m0.157s
```
Timed from hotel room in Bali for a 50 table, 20 fields on average pr table file.

or the more cumbersome approach downloading this project with PNGs that are larger than the tool itself.
```bash
$ sudo mkdir -p /opt/local/dev
$ sudo chown $(whoami) /opt/local/dev
$ cd /opt/local/dev
$ git clone https://github.com/TyrfingMjolnir/FMPReport2xcdatamodel
$ time xsltproc /opt/local/dev/FMPReport2xcdatamodel/fmpreport2xcdatamodel.xslt DDRTestMotCoreData_fmp12.xml > DDRTestMotCoreData_fmp12.xcdatamodel/contents

real	0m0.941s
user	0m0.801s
sys	0m0.137s
```

# FMPReport2XCDataModel
This piece of tooling gives you the power to convert a 1 file FileMaker graph to a CoreData graph by using this xslt as described above. If you use FileMaker as single source of truth AND need native support for data in iOS I have not found any easier way to achieve naming conformity throughout the solution.

License
=======

Copyright (c) 1999 on Gjermund Gusland Thorsen, released under the MIT License.

All rights deserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

This piece of software comes with ABSOLUTELY NO WARRANTY, to the extent permitted by applicable law.


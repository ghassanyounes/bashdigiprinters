#!/bin/sh
dpusr=`zenity --width 500 --height 150 --title "Ghassan's Linux Print Script" --entry --text "Enter your DigiPen username: "`
if [ $? = 0 ]; then
  passwd=`zenity --width 500 --height 150 --title "Ghassan's Linux Print Script" --password "Enter your DigiPen Password: "`
  if [ $? = 0 ]; then
    printer=`zenity --width 500 --height 600 --title "Ghassan's Linux Print Script" --list --radiolist --column 'Select' \
      --column "Printer: " \
    10006copyroom "10006copyroom" "Copy Room"\
    1114Library "1114Library" "Library"\
    1138DaVinci "1138DaVinci" "Da Vinci" \
    1140bAlkwarizmi "1140bAlkwarizmi" "Al Khwarizmi" \
    2022Lumiere "2022Lumiere" "Lumiere" \
    2024Meiles "2024Meiles" "Meiles" \
    2030Curie  "2030Curie"  "Curie" \
    2034Reynaud "2034Reynaud" "Reynaud" \
    2038Carr "2038Carr" "Carr" \
    2042Newton "2042Newton" "Newton" \
    2050edison "2050Edison" "Edison"\
    2064AcademicSupport "2064AcademicSupport" "Academic Support"\
    2106NOC "2106NOC" "IT Dept"\
    2124Accounting "2124Accounting" "Accounting"\
    2134Einstein "2135Einstein" "Einstein"\
    2140Gallileo "2140Gallileo" "Gallileo" \
    2148Archimedes "2148Archimedes" "Archimedes"\
    2152StudentServices "2152StudentServices" "Student Services"\
    3004JasonChu "3004JasonChu" "Jason Chu" \
    3011MFA "3011MFA" "MFA" \
    3015AEngineering "3015AEngineering" "AEngineering"\
    3120MMKVG1 "3120MMKVG1" "MMKVG1" \
    3299Outreach "3299Outreach" "Outreach" \
    3300Tesla "3300Tesla" "Tesla" \
    CareerServices "CareerServices" "Career Services" \
    facultylounge "facultylounge" "Faculty Lounge" \
    stafflounge "stafflounge" "Staff Lounge" --column "Location: " `
    if [ $? = 0 ]; then
      filename=`zenity --title "Ghassan's Linux Print Script" --file-selection`
      if [ $? = 0 ]; then
        smbclient //print0.digipen.edu/$printer $passwd -U $dpusr -c "print $filename"
      else
        exit
      fi
    else
      exit
    fi
  else
    exit
  fi
else
  exit
fi

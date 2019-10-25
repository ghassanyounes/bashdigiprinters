#!/bin/sh
dpusr=`kdialog --title "Ghassan's Print Script" --inputbox "Enter your DigiPen username: "`
if [ $? = 0 ]; then
  passwd=`kdialog --title "Ghassan's Print Script" --password "Enter your DigiPen Password: "`
  if [ $? = 0 ]; then
    printer=`kdialog --title "Ghassan's Print Script" --menu "Choose a Printer: " \
    10006copyroom "Copy Room" \
    1114Library "Library" \
    1138DaVinci "Da Vinci" \
    1140bAlkwarizmi "Al Khwarizmi" \
    2022Lumiere "Lumiere" \
    2024Meiles "Meiles" \
    2030Curie  "Curie" \
    2034Reynaud "Reynaud" \
    2038Carr "Carr" \
    2042Newton "Newton" \
    2050edison "Edison" \
    2064AcademicSupport "Academic Support" \
    2124Accounting "Accounting" \
    2134Einstein "Einstein" \
    2140Gallileo "Gallileo" \
    2148Archimedes "Archimedes" \
    2152StudentServices "Student Services" \
    3004JasonChu "Jason Chu" \
    3011MFA "MFA" \
    3015AEngineering "AEngineering" \
    3120MMKVG1 "MMKVG1" \
    3299Outreach "Outreach" \
    3300Tesla "Tesla" \
    CareerServices "Career Services" \
    facultylounge "Faculty Lounge" \
    stafflounge "Staff Lounge"`
    if [ $? = 0 ]; then
      filename=`kdialog --title "Ghassan's Print Script" --getopenfilename` 
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
echo Welcome to Ghassan's Linux DigiPen Printer Utility
echo Enter DigiPen username:
read dpuser
echo Enter Printer Code and Name - e.g. 2050Edison: 
read printer
echo Enter Path to File - e.g. Documents/homework.pdf: 
read filename
smbclient -U $dpuser //print0.digipen.edu/$printer -c "print $filename"

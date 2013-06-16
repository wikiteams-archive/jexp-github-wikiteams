import csv,sys

if len(sys.argv) != 3:
    print 'usage: commas.py source.csv destination.csv'
    SYS.exit(1)

i = 0
with open(sys.argv[1],'rb') as source:
    rdr = csv.reader( source, delimiter=',' )
    with open(sys.argv[2],'wb') as target:
        wtr = csv.writer( target, delimiter='\t' )
        for row in rdr:
	    i += 1
            #wtr.writerow( '' + i + ' ' + row )
	    row.insert(0, i)
            wtr.writerow( row )
	    #wtr.writerow(row)
# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"J62y.00","system":"readv2"},{"code":"J632.00","system":"readv2"},{"code":"J631500","system":"readv2"},{"code":"AyuB000","system":"readv2"},{"code":"A705.00","system":"readv2"},{"code":"AyuB100","system":"readv2"},{"code":"Jyu7100","system":"readv2"},{"code":"Jyu7200","system":"readv2"},{"code":"A704z00","system":"readv2"},{"code":"14i..00","system":"readv2"},{"code":"A704.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('liver-disease-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["liver-disease-elixhauser-primary-care-sclerotherapy---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["liver-disease-elixhauser-primary-care-sclerotherapy---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["liver-disease-elixhauser-primary-care-sclerotherapy---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

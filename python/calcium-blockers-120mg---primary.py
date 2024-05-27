# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"49001","system":"gprdproduct"},{"code":"61532","system":"gprdproduct"},{"code":"219","system":"gprdproduct"},{"code":"43430","system":"gprdproduct"},{"code":"48288","system":"gprdproduct"},{"code":"9708","system":"gprdproduct"},{"code":"1995","system":"gprdproduct"},{"code":"31676","system":"gprdproduct"},{"code":"42731","system":"gprdproduct"},{"code":"49289","system":"gprdproduct"},{"code":"61010","system":"gprdproduct"},{"code":"57208","system":"gprdproduct"},{"code":"32089","system":"gprdproduct"},{"code":"34824","system":"gprdproduct"},{"code":"30758","system":"gprdproduct"},{"code":"19013","system":"gprdproduct"},{"code":"30197","system":"gprdproduct"},{"code":"62064","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('calcium-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["calcium-blockers-120mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["calcium-blockers-120mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["calcium-blockers-120mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

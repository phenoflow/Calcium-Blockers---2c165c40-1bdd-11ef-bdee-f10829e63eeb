# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"48457","system":"gprdproduct"},{"code":"27135","system":"gprdproduct"},{"code":"47996","system":"gprdproduct"},{"code":"56758","system":"gprdproduct"},{"code":"62065","system":"gprdproduct"},{"code":"1686","system":"gprdproduct"},{"code":"34475","system":"gprdproduct"},{"code":"12639","system":"gprdproduct"},{"code":"4732","system":"gprdproduct"},{"code":"49390","system":"gprdproduct"},{"code":"48282","system":"gprdproduct"},{"code":"27136","system":"gprdproduct"},{"code":"57859","system":"gprdproduct"},{"code":"34377","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('calcium-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["calcium-blockers-diltiazem---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["calcium-blockers-diltiazem---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["calcium-blockers-diltiazem---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

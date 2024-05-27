# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"40405","system":"gprdproduct"},{"code":"45051","system":"gprdproduct"},{"code":"45308","system":"gprdproduct"},{"code":"8759","system":"gprdproduct"},{"code":"3943","system":"gprdproduct"},{"code":"39009","system":"gprdproduct"},{"code":"46009","system":"gprdproduct"},{"code":"47222","system":"gprdproduct"},{"code":"19459","system":"gprdproduct"},{"code":"47230","system":"gprdproduct"},{"code":"41693","system":"gprdproduct"},{"code":"1298","system":"gprdproduct"},{"code":"1574","system":"gprdproduct"},{"code":"46884","system":"gprdproduct"},{"code":"1118","system":"gprdproduct"},{"code":"32590","system":"gprdproduct"},{"code":"33471","system":"gprdproduct"},{"code":"9569","system":"gprdproduct"},{"code":"19175","system":"gprdproduct"},{"code":"1747","system":"gprdproduct"},{"code":"34959","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('calcium-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["calcium-blockers-verapamil---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["calcium-blockers-verapamil---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["calcium-blockers-verapamil---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

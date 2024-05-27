# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"1300","system":"gprdproduct"},{"code":"24228","system":"gprdproduct"},{"code":"10267","system":"gprdproduct"},{"code":"13243","system":"gprdproduct"},{"code":"59163","system":"gprdproduct"},{"code":"30473","system":"gprdproduct"},{"code":"737","system":"gprdproduct"},{"code":"11943","system":"gprdproduct"},{"code":"25919","system":"gprdproduct"},{"code":"20311","system":"gprdproduct"},{"code":"34101","system":"gprdproduct"},{"code":"55824","system":"gprdproduct"},{"code":"56767","system":"gprdproduct"},{"code":"5181","system":"gprdproduct"},{"code":"53629","system":"gprdproduct"},{"code":"46355","system":"gprdproduct"},{"code":"39984","system":"gprdproduct"},{"code":"2926","system":"gprdproduct"},{"code":"15715","system":"gprdproduct"},{"code":"49338","system":"gprdproduct"},{"code":"47529","system":"gprdproduct"},{"code":"8213","system":"gprdproduct"},{"code":"2343","system":"gprdproduct"},{"code":"59233","system":"gprdproduct"},{"code":"17338","system":"gprdproduct"},{"code":"1262","system":"gprdproduct"},{"code":"40316","system":"gprdproduct"},{"code":"52701","system":"gprdproduct"},{"code":"12606","system":"gprdproduct"},{"code":"536","system":"gprdproduct"},{"code":"4856","system":"gprdproduct"},{"code":"38545","system":"gprdproduct"},{"code":"46687","system":"gprdproduct"},{"code":"4635","system":"gprdproduct"},{"code":"40074","system":"gprdproduct"},{"code":"37025","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('calcium-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["calcium-blockers-200mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["calcium-blockers-200mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["calcium-blockers-200mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

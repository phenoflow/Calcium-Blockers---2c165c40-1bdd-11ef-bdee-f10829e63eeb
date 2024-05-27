# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"48272","system":"gprdproduct"},{"code":"4939","system":"gprdproduct"},{"code":"18975","system":"gprdproduct"},{"code":"46937","system":"gprdproduct"},{"code":"26759","system":"gprdproduct"},{"code":"56467","system":"gprdproduct"},{"code":"34581","system":"gprdproduct"},{"code":"13926","system":"gprdproduct"},{"code":"2453","system":"gprdproduct"},{"code":"57594","system":"gprdproduct"},{"code":"37774","system":"gprdproduct"},{"code":"9750","system":"gprdproduct"},{"code":"5513","system":"gprdproduct"},{"code":"32870","system":"gprdproduct"},{"code":"32262","system":"gprdproduct"},{"code":"47285","system":"gprdproduct"},{"code":"13410","system":"gprdproduct"},{"code":"9374","system":"gprdproduct"},{"code":"3930","system":"gprdproduct"},{"code":"61245","system":"gprdproduct"},{"code":"47217","system":"gprdproduct"},{"code":"47415","system":"gprdproduct"},{"code":"47887","system":"gprdproduct"},{"code":"7398","system":"gprdproduct"},{"code":"21773","system":"gprdproduct"},{"code":"21778","system":"gprdproduct"},{"code":"10246","system":"gprdproduct"},{"code":"43410","system":"gprdproduct"},{"code":"7681","system":"gprdproduct"},{"code":"18834","system":"gprdproduct"},{"code":"2888","system":"gprdproduct"},{"code":"21763","system":"gprdproduct"},{"code":"39171","system":"gprdproduct"},{"code":"1836","system":"gprdproduct"},{"code":"11922","system":"gprdproduct"},{"code":"34115","system":"gprdproduct"},{"code":"47530","system":"gprdproduct"},{"code":"41635","system":"gprdproduct"},{"code":"636","system":"gprdproduct"},{"code":"21918","system":"gprdproduct"},{"code":"1538","system":"gprdproduct"},{"code":"39800","system":"gprdproduct"},{"code":"22619","system":"gprdproduct"},{"code":"21145","system":"gprdproduct"},{"code":"55257","system":"gprdproduct"},{"code":"29676","system":"gprdproduct"},{"code":"20642","system":"gprdproduct"},{"code":"4227","system":"gprdproduct"},{"code":"38066","system":"gprdproduct"},{"code":"18404","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('calcium-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["calcium-blockers-360mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["calcium-blockers-360mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["calcium-blockers-360mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

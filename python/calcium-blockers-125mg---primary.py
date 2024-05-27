# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"43512","system":"gprdproduct"},{"code":"43470","system":"gprdproduct"},{"code":"43880","system":"gprdproduct"},{"code":"48009","system":"gprdproduct"},{"code":"34975","system":"gprdproduct"},{"code":"34522","system":"gprdproduct"},{"code":"269","system":"gprdproduct"},{"code":"34607","system":"gprdproduct"},{"code":"8257","system":"gprdproduct"},{"code":"47727","system":"gprdproduct"},{"code":"54633","system":"gprdproduct"},{"code":"39804","system":"gprdproduct"},{"code":"39914","system":"gprdproduct"},{"code":"53990","system":"gprdproduct"},{"code":"32917","system":"gprdproduct"},{"code":"54983","system":"gprdproduct"},{"code":"44859","system":"gprdproduct"},{"code":"53868","system":"gprdproduct"},{"code":"47573","system":"gprdproduct"},{"code":"41205","system":"gprdproduct"},{"code":"749","system":"gprdproduct"},{"code":"32595","system":"gprdproduct"},{"code":"46724","system":"gprdproduct"},{"code":"16162","system":"gprdproduct"},{"code":"60884","system":"gprdproduct"},{"code":"61422","system":"gprdproduct"},{"code":"60569","system":"gprdproduct"},{"code":"501","system":"gprdproduct"},{"code":"491","system":"gprdproduct"},{"code":"45279","system":"gprdproduct"},{"code":"55306","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('calcium-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["calcium-blockers-125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["calcium-blockers-125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["calcium-blockers-125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

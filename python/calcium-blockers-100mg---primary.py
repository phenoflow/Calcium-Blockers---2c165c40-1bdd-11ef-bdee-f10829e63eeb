# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"10135","system":"gprdproduct"},{"code":"2746","system":"gprdproduct"},{"code":"37726","system":"gprdproduct"},{"code":"47331","system":"gprdproduct"},{"code":"53357","system":"gprdproduct"},{"code":"452","system":"gprdproduct"},{"code":"46445","system":"gprdproduct"},{"code":"56334","system":"gprdproduct"},{"code":"6856","system":"gprdproduct"},{"code":"60244","system":"gprdproduct"},{"code":"35189","system":"gprdproduct"},{"code":"34093","system":"gprdproduct"},{"code":"2605","system":"gprdproduct"},{"code":"43511","system":"gprdproduct"},{"code":"34187","system":"gprdproduct"},{"code":"58580","system":"gprdproduct"},{"code":"49762","system":"gprdproduct"},{"code":"34247","system":"gprdproduct"},{"code":"33091","system":"gprdproduct"},{"code":"26774","system":"gprdproduct"},{"code":"36202","system":"gprdproduct"},{"code":"42912","system":"gprdproduct"},{"code":"47616","system":"gprdproduct"},{"code":"42210","system":"gprdproduct"},{"code":"41203","system":"gprdproduct"},{"code":"22142","system":"gprdproduct"},{"code":"43394","system":"gprdproduct"},{"code":"60856","system":"gprdproduct"},{"code":"54654","system":"gprdproduct"},{"code":"28688","system":"gprdproduct"},{"code":"46715","system":"gprdproduct"},{"code":"34146","system":"gprdproduct"},{"code":"57444","system":"gprdproduct"},{"code":"410","system":"gprdproduct"},{"code":"13672","system":"gprdproduct"},{"code":"59001","system":"gprdproduct"},{"code":"56147","system":"gprdproduct"},{"code":"38434","system":"gprdproduct"},{"code":"45070","system":"gprdproduct"},{"code":"55358","system":"gprdproduct"},{"code":"52440","system":"gprdproduct"},{"code":"59762","system":"gprdproduct"},{"code":"49636","system":"gprdproduct"},{"code":"58990","system":"gprdproduct"},{"code":"5593","system":"gprdproduct"},{"code":"55455","system":"gprdproduct"},{"code":"17448","system":"gprdproduct"},{"code":"40668","system":"gprdproduct"},{"code":"29044","system":"gprdproduct"},{"code":"61611","system":"gprdproduct"},{"code":"54515","system":"gprdproduct"},{"code":"568","system":"gprdproduct"},{"code":"54696","system":"gprdproduct"},{"code":"43515","system":"gprdproduct"},{"code":"21245","system":"gprdproduct"},{"code":"32922","system":"gprdproduct"},{"code":"53220","system":"gprdproduct"},{"code":"47027","system":"gprdproduct"},{"code":"35304","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('calcium-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["calcium-blockers-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["calcium-blockers-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["calcium-blockers-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

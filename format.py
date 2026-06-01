import ipaddress

outputLines=[]
with open('israelCIDR.txt', 'r', newline='') as cidr:
    for line in cidr:
        line=line.replace("\n", "")
        allIps=[str(ip) for ip in ipaddress.IPv4Network(line)]
        with open('comp.p2p', 'a') as f:
            f.write("ISRAEL:"+str(allIps[0])+"-"+str(allIps[len(allIps)-1])+"\n")
        
with open('comp.p2p', 'r', newline='') as ips:
    for line in ips:
        if("#" in line):
            #ignore commented out lines
            continue
        ipRange=line.split(":")[1]
        comment=line.split(":")[0]
        if("," in comment):
            continue
        if len(line.split(":")) != 2:
            #comment includes ":" instead of dealing with these 2 cases we skip them
            continue
        firstIP=ipRange.split("-")[0]
        firstIpPartsInOrder=[]
        for part in firstIP.split("."):
            if len(part) ==3:
                firstIpPartsInOrder.append(part)
            if len(part) ==2:
                firstIpPartsInOrder.append("0"+part)
            if len(part) ==1:
                firstIpPartsInOrder.append("00"+part)
        firstIpFormatted=""
        i=0
        for partFormatted in firstIpPartsInOrder:
            i=i+1
            if(len(firstIpPartsInOrder) == i):
                #we are on the last block dont add end point
                firstIpFormatted=firstIpFormatted+partFormatted
            else:
                firstIpFormatted=firstIpFormatted+partFormatted+"."
        
        secondIP=ipRange.split("-")[1]
        secondIpPartsInOrder=[]
        for part in secondIP.split("."):
            part=part.replace("\n", "")
            if len(part) ==3:
                secondIpPartsInOrder.append(part)
            if len(part) ==2:
                secondIpPartsInOrder.append("0"+part)
            if len(part) ==1:
                secondIpPartsInOrder.append("00"+part)
        secondIpFormatted=""
        i=0
        for partFormatted in secondIpPartsInOrder:
            i=i+1
            if(len(secondIpPartsInOrder) == i):
                #we are on the last block dont add end point
                secondIpFormatted=secondIpFormatted+partFormatted
            else:
                secondIpFormatted=secondIpFormatted+partFormatted+"."
        
        outputLines.append(firstIpFormatted+"-"+secondIpFormatted+",000,"+comment)

with open('compFormated.dat', 'w') as f:
    for line in outputLines:
         f.write(line+"\n")
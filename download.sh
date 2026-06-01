#!/bin/bash
cd /mnt/hdds/media/ipBlocks
wget -O tor.p2p.gz "https://list.iblocklist.com/?list=togdoptykrlolpddwbvz&fileformat=p2p&archiveformat=gz"
gunzip -f tor.p2p.gz

wget -O sony.p2p.gz "https://list.iblocklist.com/?list=tukpvrvlubsputmkmiwg&fileformat=p2p&archiveformat=gz"
gunzip -f sony.p2p.gz

wget -O pedo.p2p.gz "https://list.iblocklist.com/?list=dufcxgnbjsdwmwctgfuj&fileformat=p2p&archiveformat=gz"
gunzip -f pedo.p2p.gz

wget -O level1.p2p.gz "https://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=p2p&archiveformat=gz"
gunzip -f level1.p2p.gz

wget -O badPeers.p2p.gz "https://list.iblocklist.com/?list=cwworuawihqvocglcoss&fileformat=p2p&archiveformat=gz"
gunzip -f badPeers.p2p.gz

wget -O microsoft.p2p.gz "https://list.iblocklist.com/?list=xshktygkujudfnjfioro&fileformat=p2p&archiveformat=gz"
gunzip -f microsoft.p2p.gz

wget -O israel.p2p.gz "https://list.iblocklist.com/?list=il&fileformat=p2p&archiveformat=gz"
gunzip -f israel.p2p.gz

#wget -O china.p2p.gz "https://list.iblocklist.com/?list=cn&fileformat=p2p&archiveformat=gz"
#gunzip  -f china.p2p.gz

wget -O blizzard.p2p.gz "https://list.iblocklist.com/?list=ercbntshuthyykfkmhxc&fileformat=p2p&archiveformat=gz"
gunzip  -f blizzard.p2p.gz

wget -O Ubisoft.p2p.gz "https://list.iblocklist.com/?list=etmcrglomupyxtaebzht&fileformat=p2p&archiveformat=gz"
gunzip  -f Ubisoft.p2p.gz

wget -O CrowdControlProductions.p2p.gz "https://list.iblocklist.com/?list=eveiyhgmusglurfmjyag&fileformat=p2p&archiveformat=gz"
gunzip  -f CrowdControlProductions.p2p.gz

wget -O LindenLab.p2p.gz "https://list.iblocklist.com/?list=qnjdimxnaupjmpqolxcv&fileformat=p2p&archiveformat=gz"
gunzip  -f LindenLab.p2p.gz

wget -O Nintendo.p2p.gz "https://list.iblocklist.com/?list=pevkykuhgaegqyayzbnr&fileformat=p2p&archiveformat=gz"
gunzip -f Nintendo.p2p.gz

wget -O Activision.p2p.gz "https://list.iblocklist.com/?list=gfnxlhxsijzrcuxwzebb&fileformat=p2p&archiveformat=gz"
gunzip -f Activision.p2p.gz

wget -O EA.p2p.gz "https://list.iblocklist.com/?list=ejqebpcdmffinaetsvxj&fileformat=p2p&archiveformat=gz"
gunzip -f EA.p2p.gz

wget -O SquareEnix.p2p.gz "https://list.iblocklist.com/?list=odyaqontcydnodrlyina&fileformat=p2p&archiveformat=gz"
gunzip -f SquareEnix.p2p.gz

wget -O RiotGames.p2p.gz "https://list.iblocklist.com/?list=sdlvfabdjvrdttfjotcy&fileformat=p2p&archiveformat=gz"
gunzip -f RiotGames.p2p.gz

wget -O PunkBuster.p2p.gz "https://list.iblocklist.com/?list=zvwwndvzulqcltsicwdg&fileformat=p2p&archiveformat=gz"
gunzip -f PunkBuster.p2p.gz

wget -O Pandora.p2p.gz "https://list.iblocklist.com/?list=aevzidimyvwybzkletsg&fileformat=p2p&archiveformat=gz"
gunzip -f Pandora.p2p.gz

rm comp.p2p
cat Pandora.p2p >> comp.p2p
cat PunkBuster.p2p >> comp.p2p
cat RiotGames.p2p >> comp.p2p
cat SquareEnix.p2p >> comp.p2p
cat EA.p2p >> comp.p2p
cat Activision.p2p >> comp.p2p
cat Nintendo.p2p >> comp.p2p
cat LindenLab.p2p >> comp.p2p
cat CrowdControlProductions.p2p >> comp.p2p
cat Ubisoft.p2p >> comp.p2p
cat blizzard.p2p >> comp.p2p
cat tor.p2p >> comp.p2p
cat sony.p2p >> comp.p2p
cat pedo.p2p >> comp.p2p
cat level1.p2p >> comp.p2p
cat badPeers.p2p >> comp.p2p
cat microsoft.p2p >> comp.p2p
cat israel.p2p >> comp.p2p
cat china.p2p >> comp.p2p

sed '/^[[:space:]]*$/d' comp.p2p
sed -i '/^\s*$/d' comp.p2p
#grep -v '^\s*$' comp.p2p > comp.p2p
#cat comp.p2p | grep -v '^\s*$' > comp.p2p

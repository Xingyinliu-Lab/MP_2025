#L0: ASD-WL
#L1: ASD-L
mkdir NT_L0
mkdir NT_L0/logs

python PM_Analysis_multiprocessing.py /home/mk/asd/analysis/NT_L0 /home/mk/asd/analysis/NT_L0/logs /home/mk/asd/lac_vNT.csv 10 10 0 NT L0 group 28 ON ON 0.95 ON gaussian

mkdir NT_L1
mkdir NT_L1/logs

python PM_Analysis_multiprocessing.py /home/mk/asd/analysis/NT_L1 /home/mk/asd/analysis/NT_L1/logs /home/mk/asd/lac_vNT.csv 10 10 0 NT L1 group 28 ON ON 0.95 ON gaussian


#!/bin/bash
#tokenize chinese text using BPE (pieces with "@@ " delimeter).
python /OpenNMT-py/tools/apply_bpe.py -c /src.code -i /tmp/data/input.txt -o /input.bpe
#translate tokenized text, tokenized translation will be produced (because we learned on tokenized Russian corpora).
python /OpenNMT-py/translate.py -model /ondatr-trans_step_20000.pt -src /input.bpe -output /output.bpe -replace_unk -verbose
#detokenize file with translation (replace "@@ " sequences).
sed 's/@@ //g' /output.bpe > /opt/results/output.txt
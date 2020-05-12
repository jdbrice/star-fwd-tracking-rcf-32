# list file should have one fully specified (absolute) file path per line
filelist="./fzd/pythia_short.lis"
while read -r filename
do
	echo "Running on $filename"
	./run.sh 250 "./fzd/${filename}" config_pythia_track_fitting.xml >& LOG
	mv results_pythia_track_fitting.root results_${filename}.root
	mv LOG "log_${filename}.log"

done < "$filelist"

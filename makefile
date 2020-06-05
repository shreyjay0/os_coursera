all: README.md

README.md:
	echo '## The Unix Workbench, by Johns Hopkins University' > README.md
	echo '* This file was run at: $(shell date +%Y/%m/%d~%H:%M:%S)' >> README.md
	echo '* Number of lines in the file guessinggame.sh is $(shell wc -l < guessinggame.sh)' >> README.md

clean:
	rm README.md

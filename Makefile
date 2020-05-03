bin:
	MIX_ENV=prod mix escript.build

deploy: bin
	cp ./bb $(HOME)/bin

.PHONY: box clean clean-all

box: virtualbox

virtualbox:
	packer build virtualbox.json

clean:
	-rm *.box

clean-all: clean
	-rm -rf packer_cache

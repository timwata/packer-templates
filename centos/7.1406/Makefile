.PHONY: box clean clean-all

box:
	packer build template.json

clean:
	-rm *.box

clean-all: clean
	-rm -rf packer_cache

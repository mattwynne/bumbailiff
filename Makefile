TESTS:=$(wildcard tests/*.sh)
SRC:=$(wildcard src/*)

BUILDDIR:=./tmp

check: $(TESTS:tests/%.sh=$(BUILDDIR)/tests/%.diff)
	@echo Success ✅

$(BUILDDIR)/tests/%.diff: $(BUILDDIR)/tests/%.output tests/%.expected
	@diff $^ > $@ || ! cat $@

$(BUILDDIR)/tests/%.output: tests/%.sh tests/%.expected $(SRC)
	@echo TEST: $*
	@rm -rf $(dir $@)/$*
	@mkdir -p $(dir $@)/$*
	@(cd $(dir $@)/$* && \
		PATH=/bin:/usr/bin:$(abspath src):$(abspath tests):$(abspath test_helpers) \
		/bin/bash $(abspath $<) | $(abspath normalize-output.sh) > $(abspath $@) 2>&1) || ! cat $@

linux:
	docker-compose run --build test

clean:
	rm -rf $(BUILDDIR)

.PHONY: all clean linux
.PRECIOUS: $(BUILDDIR)/tests/%.output
.DELETE_ON_ERROR:

#!/bin/bash
CLEAN = sed 's$$// .*$$$$'
JSON = $(wildcard *.example.json)
CLEANEDJSON = $(JSON:.example.json=.cleaned.json)

%.cleaned.json: %.example.json
	cat $< | $(CLEAN) > $@

all: $(CLEANEDJSON)

.PHONY: all clean

clean:
	rm -f *.cleaned.json
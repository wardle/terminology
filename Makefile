
INCLUDE=-I. -Ivendor/fhir/proto -Ivendor/googleapis

all: java go

java: protos/snomed.proto
	mkdir -p out/java
	protoc $(INCLUDE) --java_out=out/java protos/*

go: protos/snomed.proto
	mkdir -p out/golang
	protoc $(INCLUDE) --go_out=out/golang protos/*

swift : protos/*
	mkdir -p out/swift
	protoc $(INCLUDE) --swift_out=out/swift protos/*
	
	
clean:
	rm -rf out

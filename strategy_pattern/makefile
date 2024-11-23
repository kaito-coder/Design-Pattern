# Variables
JAVA_SRC_DIR = java/src
JAVA_OUT_DIR = java/out
GO_DIR = go
RUBY_DIR = ruby

# Java commands
java: java_clean java_compile java_run

java_clean:
	rm -rf $(JAVA_OUT_DIR)
	mkdir -p $(JAVA_OUT_DIR)

java_compile:
	javac -d $(JAVA_OUT_DIR) $(JAVA_SRC_DIR)/behavior/*.java $(JAVA_SRC_DIR)/duck/*.java $(JAVA_SRC_DIR)/MiniDuckSimulator.java

java_run:
	java -cp $(JAVA_OUT_DIR) MiniDuckSimulator

# Go commands
go: go_build go_run

go_build:
	cd $(GO_DIR) && go build -o duck-app

go_run:
	cd $(GO_DIR) && ./duck-app

# Ruby commands
ruby:
	cd $(RUBY_DIR) && ruby main.rb

# Clean all
clean:
	rm -rf $(JAVA_OUT_DIR)
	rm -f $(GO_DIR)/duck-app
	find . -name "*.class" -type f -delete

# Run all implementations
all: java go ruby

# Help
help:
	@echo "Available commands:"
	@echo "  make java    - Run Java implementation"
	@echo "  make go      - Run Go implementation"
	@echo "  make ruby    - Run Ruby implementation"
	@echo "  make all     - Run all implementations"
	@echo "  make clean   - Clean build artifacts"

.PHONY: java java_clean java_compile java_run go go_build go_run ruby clean all help
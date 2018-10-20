# https://jekyllrb.com/docs/step-by-step/01-setup/

BUND=bundle
EXEC=$(BUND) exec jekyll
EXEC_IP="0.0.0.0"
EXEC_PORT=9444
LOG_FILE=jekyll.log

install:
	sudo apt install ruby ruby-dev build-essential zlib1g zlib1g-dev zlib1g-dbg
	#
	if [ -z "$$GEM_HOME" ]; then										\
		echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc;				\
		echo 'export GEM_HOME=$$HOME/gems' >> ~/.bashrc;				\
		echo 'export PATH=$$HOME/gems/bin:$$PATH' >> ~/.bashrc;			\
		source ~/.bashrc;												\
	fi
	#
	sudo gem install jekyll bundler

build: Gemfile
	# 构建网站，输出到 _site 目录
	$(EXEC) build

update: Gemfile
	$(BUND) update

test: Gemfile
	# 每当文件发生变更时，重新构建
	nohup $(EXEC) serve --host $(EXEC_IP) --port $(EXEC_PORT) &>$(LOG_FILE) &

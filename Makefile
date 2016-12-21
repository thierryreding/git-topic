prefix = /usr/local
gitexecdir = $(prefix)/libexec/git-core

install:
	install -m 755 -d $(DESTDIR)$(gitexecdir)
	install -m 755 git-topic $(DESTDIR)$(gitexecdir)/git-topic

dev-install:
	ln -s $(abspath git-topic) $(HOME)/bin/git-topic
	ln -s $(abspath git-topic-completion.bash) $(HOME)/.bash_completion.d/git-topic

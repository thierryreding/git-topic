prefix = /usr/local
gitexecdir = $(prefix)/libexec/git-core

install:
	install -m 755 -d $(DESTDIR)$(gitexecdir)
	install -m 755 git-topic $(DESTDIR)$(gitexecdir)/git-topic

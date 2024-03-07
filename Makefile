.PHONY: all publish run

all: publish run

publish: publish.el
	@echo "Publishing..."
	emacs -q --script publish.el

run:
	@echo "Running server..."
	python -m http.server --directory=public

clean:
	@echo "Cleaning up.."
	trash public
	trash ~/.cache/org-publish

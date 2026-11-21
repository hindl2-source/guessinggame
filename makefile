
.PHONY: all FORCE

all: README.md

README.md: guessinggame.sh makefile FORCE
	@echo Generating README.md...
	@echo # Guessing Game > README.md
	@echo. >> README.md
	@echo ## Project Description >> README.md
	@echo. >> README.md
	@echo A Bash game where the user guesses the number of files in the current directory. >> README.md
	@echo. >> README.md
	@echo ## Date and Time >> README.md
	@echo. >> README.md
	@powershell -NoProfile -Command "Get-Date -Format 'yyyy-MM-dd HH:mm:ss'" >> README.md
	@echo. >> README.md
	@echo ## Number of Lines >> README.md
	@echo. >> README.md
	@powershell -NoProfile -Command "(Get-Content guessinggame.sh).Count" >> README.md

FORCE:

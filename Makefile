#===============================================================================
#
#         FILE: Makefile
#
#        USAGE: ---
#
#  DESCRIPTION: Build latex cv and letter to pdf files
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#  ORIG AUTHOR: Samuel Gabrielsson <samuel.gabrielsson@gmail.com>
# ORGANIZATION: ---
#      VERSION: 1.0
#      CREATED: 2021-05-06 14:37:03
#     REVISION: ---
#      CHANGES: ---
#
#===============================================================================
TARGETS=cv letter

all: $(TARGETS)

# Create cv pdf
cv:
	make -C open-application/curriculum-vitae
	mv open-application/curriculum-vitae/cv.pdf samuel-cv.pdf

# Create cover letter pdf
letter:
	make -C open-application/cover-letter pdf
	mv open-application/cover-letter/cover-letter.pdf samuel-letter.pdf

# CLean rule
clean:
	make -C open-application/curriculum-vitae clean
	make -C open-application/cover-letter clean
	rm -fv samuel-{cv,letter}.pdf

.PHONY: cv letter

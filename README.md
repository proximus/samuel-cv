# CV and Letter
Curriculum vitae (CV) of my personal experience and qualifications with a
friendly generic personal letter.

# Requirements
sudo apt install -y texlive texlive-lang-european

# Get moderncv as a submodule
git submodule update --init --recursive

# Build the CV
make

# View CV
evince samuel-cv.pdf &
evince samuel-letter.pdf &

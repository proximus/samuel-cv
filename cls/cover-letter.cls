%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Identification
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{cover-letter}[1994/11/04 Per Foreby]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initial code
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Declaration of options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Execution of options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Package loading
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[a4paper]{letter}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main code
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\topmargin}{0pt}
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\textheight}{700pt}

\indentedwidth=.3\textwidth

% Swedish date YYYY-MM-DD
\gdef\@date{\number\year--%
  \ifnum\month<10 0\fi\number\month--%
  \ifnum\day<10 0\fi\number\day}

\def\opening#1{\ifx\@empty\fromaddress
      \thispagestyle{firstpage}%
      \parbox[t]{\indentedwidth}{%
         \raggedright\toname \\
         \toaddress\par%
      }%
      {\raggedleft\@date\par}%
   \else  % home address
      \thispagestyle{empty}\vspace*{-60pt}\hspace{-72pt}%
      \parbox[t]{1.5\indentedwidth}{%
         \fromname \\ \fromaddress\par%
      }\hfill%
      \parbox[t]{1.5\indentedwidth}{%
         \raggedright\titlename ~ \\~\\ \@date \\[54pt] \toname \\
         \toaddress\par
      }
   \fi
   #1\vspace{6pt}\par\nobreak%
}

\long\def\closing#1{\par\nobreak\vspace{1.7\parskip}%
  \stopbreaks
  \noindent
  \parbox{\textwidth}{\raggedright
       \ignorespaces #1\\[5\medskipamount]%
       \ifx\@empty\fromsig
           \fromname
       \else \fromsig \fi\strut}%
   \par}

\def\cc#1{\par\vspace{10pt}\noindent
\parbox[t]{\textwidth}{\@hangfrom{\reset@font\rm \ccname: }%
                       \ignorespaces #1\strut}\par}

\def\encl#1{\par\vspace{10pt}\noindent
\parbox[t]{\textwidth}{\@hangfrom{\reset@font\rm \enclname: }%
                       \ignorespaces #1\strut}\par}

\let\@texttop\relax

\renewcommand{\title}[1]{\def\titlename{#1}}
\title{~}

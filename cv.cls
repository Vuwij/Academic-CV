\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2016/10/13 Jason Resume Class]
\LoadClass[11pt]{article}

% DOCUMENT LAYOUT
\usepackage{geometry} 
\geometry{a4paper, textwidth=5.5in, textheight=8.5in, marginparsep=7pt, marginparwidth=.6in}
\setlength\parindent{0in}
\usepackage{enumitem}

% FONTS
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{xunicode}
\usepackage{xltxtra}
\defaultfontfeatures{Mapping=tex-text}
%\setromanfont [Ligatures={Common}, Numbers={OldStyle}, Variant=01]{Linux Libertine O}
%\setmonofont[Scale=0.8]{Monaco}
%%% modified by Karol Kozioł for ShareLaTeX use
\setmainfont[
Ligatures={Common}, Numbers={OldStyle}, Variant=01,
BoldFont=LinLibertine_RB.otf,
ItalicFont=LinLibertine_RI.otf,
BoldItalicFont=LinLibertine_RBI.otf
]{LinLibertine_R.otf}
\setmonofont[Scale=0.8]{DejaVuSansMono.ttf}

% ---- CUSTOM COMMANDS
\chardef\&="E050
\newcommand{\html}[1]{\href{#1}{\scriptsize\textsc{[html]}}}
\newcommand{\pdf}[1]{\href{#1}{\scriptsize\textsc{[pdf]}}}
\newcommand{\doi}[1]{\href{#1}{\scriptsize\textsc{[doi]}}}
% ---- MARGIN YEARS
\usepackage{marginnote}
\newcommand{\amper{}}{\chardef\amper="E0BD }
\newcommand{\years}[1]{\marginnote{\scriptsize #1}}
\renewcommand*{\raggedleftmarginnote}{}
\setlength{\marginparsep}{7pt}
\reversemarginpar

% HEADINGS
\usepackage{sectsty} 
\usepackage[normalem]{ulem} 
\sectionfont{\mdseries\upshape\Large}
\subsectionfont{\mdseries\scshape\normalsize} 
\subsubsectionfont{\mdseries\upshape\large} 

% PDF SETUP
% ---- FILL IN HERE THE DOC TITLE AND AUTHOR
\usepackage[%dvipdfm, 
bookmarks, colorlinks, breaklinks, 
% ---- FILL IN HERE THE TITLE AND AUTHOR
pdftitle={Jason Wang - cv},
pdfauthor={Jason Wang}
]{hyperref}  
\hypersetup{linkcolor=blue,citecolor=blue,filecolor=black,urlcolor=MidnightBlue}

% SECTIONS

\newcommand\name[1]{
	{\LARGE #1}\\[0.1cm]
}

\newcommand\contact[3]{
	{\large #1}\,\textperiodcentered\,
	{\large #2}\,\textperiodcentered\,
	{\large #3}
	\\[.2cm]
}

\newcommand\textline[4][t]{
	\par\smallskip\noindent
	\parbox[#1]{.333\textwidth}{\raggedright#2}
	\parbox[#1]{.333\textwidth}{\raggedleft#3}\par\smallskip
}

\setlist[itemize]{
	itemsep = -0.1em
}

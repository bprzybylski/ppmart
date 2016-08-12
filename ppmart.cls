\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ppmart}[2016/08/12 PPM]

% Niniejsza klasa opiera się na klasie mwart (12pt)
\LoadClass[12pt]{mwart}

% Język polski
\RequirePackage[utf8]{inputenc}
\RequirePackage{polski}

% Times New Roman
\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}

\setcounter{secnumdepth}{0}

\RequirePackage[a4paper,margin=3cm]{geometry}
\RequirePackage{setspace}
\setstretch{1.15}

\RequirePackage{xcolor}
 
\renewcommand{\maketitle}{%
    \setstretch{1}
	\noindent\LARGE\@title\par
	\vspace{.5cm}\normalsize
	\noindent\@author{} {\color{gray}@\@date}
	\vspace{1cm}
	\setstretch{1.15}
}

% Zbiór podstawowych pakietów
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{graphicx}
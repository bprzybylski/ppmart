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
	\noindent\@author{} {\color{gray}@ \@date}
	\vspace{1cm}
	\setstretch{1.15}
}

\RequirePackage[mathlines]{lineno}
\newcommand*\patchAmsMathEnvironmentForLineno[1]{%
  \expandafter\let\csname old#1\expandafter\endcsname\csname #1\endcsname
  \expandafter\let\csname oldend#1\expandafter\endcsname\csname end#1\endcsname
  \renewenvironment{#1}%
     {\linenomath\csname old#1\endcsname}%
     {\csname oldend#1\endcsname\endlinenomath}}% 
\newcommand*\patchBothAmsMathEnvironmentsForLineno[1]{%
  \patchAmsMathEnvironmentForLineno{#1}%
  \patchAmsMathEnvironmentForLineno{#1*}}%
\AtBeginDocument{%
\patchBothAmsMathEnvironmentsForLineno{equation}%
\patchBothAmsMathEnvironmentsForLineno{align}%
\patchBothAmsMathEnvironmentsForLineno{flalign}%
\patchBothAmsMathEnvironmentsForLineno{alignat}%
\patchBothAmsMathEnvironmentsForLineno{gather}%
\patchBothAmsMathEnvironmentsForLineno{multline}%
}
\DeclareOption{lineno}{\linenumbers}
\ProcessOptions\relax

% Zbiór podstawowych pakietów
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{graphicx}

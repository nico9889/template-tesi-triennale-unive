\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{univebachelor}[2025/01/17 Ca' Foscari Bachelor thesis template]
\LoadClass[12pt,a4paper,twoside,italian]{report}


\RequirePackage[a4paper,top=0.9in,bottom=0.8in,
footskip=.35in]{geometry}

\RequirePackage{afterpage}

\RequirePackage{algpseudocode,algorithm,algorithmicx}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}

\RequirePackage[italian]{babel}
\RequirePackage{booktabs}

\RequirePackage{comment}
\RequirePackage{courier}

\RequirePackage{enumitem}
\RequirePackage{epsfig}

\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage{framed}

\RequirePackage{graphicx}

\RequirePackage[hidelinks]{hyperref}

\RequirePackage[utf8]{inputenc}

\RequirePackage{lastpage}
\RequirePackage{lipsum}
\RequirePackage{listings}

\RequirePackage{mathtools}
\RequirePackage{mdwlist}

\RequirePackage[numbers]{natbib}

\RequirePackage{placeins}

\RequirePackage{rotating}

\RequirePackage{tcolorbox}

\RequirePackage{tikz}

\RequirePackage{url}


% tcolorbox settings
\tcbuselibrary{minted}
\tcbuselibrary{skins}
\tcbset{listing engine=minted}


% template per code block
\newtcolorbox[auto counter,number within=section]{pabox}[2][]{%
colback=red!5!white,colframe=red!75!black,fonttitle=\bfseries,
title=Examp.~\thetcbcounter: #2,#1}


\newtcblisting{codeblock}[3][]{%
	listing engine=minted,
	minted style=colorful,
	minted language=#2,
	minted options={fontsize=\small,breaklines,autogobble,linenos,numbersep=3mm},
	colback=gray!5,colframe=gray!50!black,listing only,
	left=5mm,enhanced,
	title={#3},
	overlay={
		\begin{tcbclipinterior}
			\fill[gray!5] (frame.south west)
			rectangle ([xshift=5mm]frame.north west);
		\end{tcbclipinterior}
		},#1
}



\hyphenation{a-gen-tiz-za-zio-ne}
\setlength{\paperwidth}{21. cm}
\setlength{\paperheight}{29.7 cm}
\setlength{\oddsidemargin} {2. cm}
\setlength{\evensidemargin} {2. cm}
\addtolength{\oddsidemargin} {-0.4 cm}
\addtolength{\evensidemargin} {-0.4 cm}


\newcommand*\Let[2]{\State #1 $\gets$ #2}
\algrenewcommand\algorithmicrequire{\textbf{Input Data:}}
\algrenewcommand\algorithmicensure{\textbf{Output:}}

\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}

%\renewcommand{\captionfont}{\normalfont \sffamily \itshape \small}
\newcommand{\hrefoot}[1]{\footnote{\href{#1}{#1}}}
\newcommand{\footprofile}[2]{\footnote{\href{#1}{#2}}}


\newcommand{\infig}[3]{\begin{figure*}[t]
\centerline{\epsfbox{#1}}
\caption{\label{#2} #3} \end{figure*}}

\setlength\parindent{0pt} % No indent


\newcommand{\image}[3]{ % 1 image 2 caption 3 size
	\begin{figure}[h!]
	  \centering
	  \includegraphics[width=#3\textwidth]{#1} 
	  \caption{#2}
	\end{figure}
	\FloatBarrier
}

\newcommand{\imageb}[2]{ % 1 image 2 size
	\begin{figure}[H]
		\centering
		\includegraphics[width=#2\textwidth]{#1} 
	\end{figure}
	\FloatBarrier
}

\newcommand{\imageLabel}[4]{ % 1 image 2 caption 3 size
	\begin{figure}[H]
		\centering
		\includegraphics[width=#3\textwidth]{#1} 
		\caption{#2}
		\label{fig:#4}
	\end{figure}
	\FloatBarrier
}
\newcommand{\Z}{\mathbb{Z}}

%Theorem definitions
\theoremstyle{plain}
\newtheorem{thm}{Theorem}[section] % reset theorem numbering for each chapter
\theoremstyle{definition}
\newtheorem{defn}[thm]{Definition} % definition numbers are dependent on theorem numbers
\newtheorem{exmp}[thm]{Example} % same for example numbers

\newcommand\supervisor[1]{\def\@supervisor{#1}}

\newcommand\ay[1]{\def\@ay{#1}}
\newcommand\teachassistant[1]{\def\@teachassistant{#1}}
\newcommand\authorid[1]{\def\@authorid{#1}}

\renewcommand{\maketitle}{
	\begin{titlepage}
		\newgeometry{left=1.31cm,right=2.96cm,top=1.27cm,bottom=0.49cm}
	
		\includegraphics[height=20mm]{img/logo.pdf}\\
		\Large{
		Università\\
		Ca'Foscari\\
		Venezia
		}
	
		\begin{center}
	
			\Large{Corso di Laurea\\in Informatica \\}
	
			\vspace{1.5cm}
			\LARGE{Tesi di Laurea}
			\vspace{1.5cm}
	
			\Huge{\textbf{\@title}}\\
			\ifdefined\@subtitle
			\huge{\textbf{\@subtitle}}
			\else 
			\empty 
			\fi
		\end{center}
	
		\vfill
		\textbf{Relatore} \\
		\@supervisor \\[.2cm]
		\ifdefined\@teachassistant 
			\textbf{Correlatore} \\
			\@teachassistant \\
		\else 
			\empty
		\fi

		\textbf{Laureando} \\
		\@author \\
		\ifdefined\@authorid 
			Matricola \@authorid \\
		\else 
			\empty
		\fi

		\textbf{Anno accademico}\\
		\@ay
		\vspace{1cm}
	\end{titlepage}
}
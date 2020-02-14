% Current Version: 0.06
% Author: Dongsheng Deng
% Homepage: https://ddswhu.me/
% Email: elegantlatex2e@gmail.com
% Lastest Version: https://github.com/ElegantLaTeX/ElegantPaper

% --- Class structure: identification part
% ---
\ProvidesClass{chinese-erj}[2019/03/28 v1.00 Economic Research Journal Class]
\NeedsTeXFormat{LaTeX2e}



\PassOptionsToClass{twoside,english,11pt}{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


\LoadClass{article}


\PassOptionsToPackage{no-math}{fontspec}
\RequirePackage[UTF8, scheme=plain,punct=kaiming,space=auto]{ctex}
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxtext}
% \RequirePackage{newtxtt}


\RequirePackage{amsmath,amssymb}


\RequirePackage{lipsum,zhlipsum}


\RequirePackage{hyperref}
\hypersetup{
  pdfborder={0 0 0},
  colorlinks=none,
  linktoc=all,
}

% indentation, table and figure package
\RequirePackage{graphicx}


\RequirePackage{abstract}

\graphicspath{{image/}{figure/}{fig/}{img/}}

% caption settings
\RequirePackage[font=small,labelfont={bf}]{caption}
\captionsetup[table]{skip=3pt}
\captionsetup[figure]{skip=3pt}

% list/itemize/enumerate setting
\RequirePackage[shortlabels,inline]{enumitem}
\setlist{nolistsep}

% define the hyperref color
\RequirePackage{xcolor}
\definecolor{winered}{rgb}{0.5,0,0}



\RequirePackage[left=27.6mm, right=27.6mm, top=32.7mm, bottom=28mm]{geometry}
% \setlength{\voffset}{-0.75in}
\setlength{\headsep}{10pt}

\newtoks\header

\usepackage{fancyhdr}
\fancyhead{} % clear all fields
% @author@title
\fancyhead[LE]{\the\header}
\fancyhead[OR]{\raisebox{-0.2\height}{\includegraphics[width=0.16\textwidth]{ERJ.png}} \raisebox{.2\height}{ \small 2019 年工作论文}}
\fancyfoot[OR,LE]{\thepage}
\fancyfoot[C]{}

\renewcommand{\headrulewidth}{0.4pt}

\pagestyle{fancy}


\usepackage{abstract}
\renewcommand{\abstractname}{}    % clear the title
\renewcommand{\absnamepos}{empty} % originally center
%\usepackage{lineno}
%\linenumbers

%
% modified by hzz 20191009
% 1.为避免正文中出现因姓名歧义处理而引出的名的缩写使用uniquename=false选项
% 2.不再使用natbib选项，因为gb7714-2015ay样式已经定义了citet和citep命令
\usepackage[backend=biber,style=chinese-erj,uniquename=false]{biblatex}
\renewcommand*{\bibfont}{\scriptsize}
\setlength\bibitemsep{0.2\baselineskip}
\renewcommand{\refname}{\small  参考文献}
\renewcommand{\parencite}{\cite} % if biblatex-gb7714-2015 更新则删除

\newcommand{\erjref}{
\vspace*{0.8\baselineskip}
\begin{flushleft}
\small 参考文献
\vspace*{-0.3\baselineskip}
\end{flushleft}}

\let\origabstract=\abstract
\def\abstract{\origabstract\vspace*{-0.1ex}\indent 内容提要：}

\let\origendabstract=\endabstract
\def\endabstract{\vskip2em\origendabstract}

\newcommand{\keywords}[1]{\par 关键词：#1}

\usepackage{indentfirst}


\linespread{1.15}
\setlength{\parindent}{2em}
\setlength{\parskip}{0em}
\renewcommand{\abstracttextfont}{\normalsize}
\renewcommand{\footnotesize}{\scriptsize}


%\renewcommand{\baselinestretch}{1}


\usepackage{titlesec}
%\widowpenalty=10000
%\clubpenalty=10000
\titleformat{name=\section}[block]{\large\filcenter}{\zhnumber{\thesection}、}{0pt}{}
\titleformat{name=\subsection}[hang]{\normalfont}{\hspace{2em}（\zhnumber{\arabic{subsection}}）}{0pt}{}
\titlespacing*{\section}{0pt}{0.8\baselineskip}{0.5\baselineskip}
\titlespacing*{\subsection}{0pt}{0.1\baselineskip}{0.1\baselineskip}

\newtoks\entitle
\newtoks\enauthor
\newtoks\eninstitute
\newtoks\enabstract
\newtoks\enkeywords
\newtoks\jel



\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{fancy}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@ELEGANT@version\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \global\let\ELEGANT@version\relax
}
\def\@maketitle{%
\vspace*{-5ex}
  \begin{center}%
  \let \footnote \thanks
    {\huge \@title \par}%
    \vskip 2em%
    {\Large
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}
      }%
  \end{center}%
}


\newcommand{\enmaketitle}{%
\vspace{2em}
% \begin{titlepage}
\begin{center}
{\bfseries \Large \the\entitle}\\
\the\enauthor\\
\small(\the\eninstitute)
\end{center}
\vspace*{-2ex}
\noindent\small\textbf{Summary:}\the\enabstract \\
\textbf{Keywords:} \the\enkeywords \\
\textbf{JEL Classification:} \the\jel
% \end{titlepage}
}

\addbibresource{erjref.bib}

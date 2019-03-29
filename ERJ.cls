% Current Version: 0.06
% Author: Dongsheng Deng
% Homepage: https://ddswhu.me/
% Email: elegantlatex2e@gmail.com
% Lastest Version: https://github.com/ElegantLaTeX/ElegantPaper

% --- Class structure: identification part
% ---
\ProvidesClass{ERJ}[2019/03/28 v1.00 Economic Research Journal Class]
\NeedsTeXFormat{LaTeX2e} 



\PassOptionsToClass{twoside,english,11pt}{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


\LoadClass{article}


\PassOptionsToPackage{no-math}{fontspec}
\RequirePackage[UTF8, scheme=plain,punct=kaiming]{ctex}
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxtext}
\RequirePackage{newtxmath}
% \RequirePackage{newtxtt}


\RequirePackage{amsmath,amssymb}





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



% settings for the geometry
% \RequirePackage{hyperref}
% \hypersetup{
%   pdfborder={0 0 0},
%   colorlinks=true,
%   linkcolor={winered},
%   urlcolor={winered},
%   filecolor={winered},
%   citecolor={winered},
%   linktoc=all,
% }
\RequirePackage[left=27.6mm, right=27.6mm, top=32.7mm, bottom=28mm]{geometry}



\usepackage{fancyhdr}
\fancyhead{} % clear all fields 
% @author@title
\fancyhead[LE]{张宁、张维洁：中国用能权交易可以获得经济红利与节能减排的双赢吗？} 
\fancyhead[OR]{\raisebox{-0.2\height}{\includegraphics[width=0.16\textwidth]{ERJ.png}} \raisebox{.2\height}{ \small 2019 年工作论文}}
\fancyfoot[R]{\thepage} 
\fancyfoot[C]{} 
% \fancyfoot[LO,CE]{From: K. Grant} 
% \fancyfoot[CO,RE]{To: Dean A. Smith} 
\renewcommand{\headrulewidth}{0.4pt} 
% \renewcommand{\footrulewidth}{0.4pt}
\pagestyle{fancy}


\usepackage{abstract}
\renewcommand{\abstractname}{}    % clear the title
\renewcommand{\absnamepos}{empty} % originally center
%\usepackage{lineno}
%\linenumbers
\usepackage[backend=biber,style=chinese-erj,natbib]{biblatex}
\addbibresource{erjref.bib}
\usepackage{indentfirst}

\setlength{\parindent}{2em}
\renewcommand{\abstracttextfont}{\normalsize}
\usepackage{zhlipsum}

%\renewcommand{\baselinestretch}{1} 
\linespread{1.15}
\setlength{\parskip}{0em}
\usepackage{titlesec}
%\widowpenalty=10000 
%\clubpenalty=10000 
\titleformat{name=\section}[block]{\large\filcenter}{\zhnumber{\thesection}、}{0pt}{}
\titlespacing*{\section}{0pt}{0.8\baselineskip}{0.5\baselineskip}





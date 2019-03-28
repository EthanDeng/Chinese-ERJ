% Current Version: 0.06
% Author: Dongsheng Deng
% Homepage: https://ddswhu.me/
% Email: elegantlatex2e@gmail.com
% Lastest Version: https://github.com/ElegantLaTeX/ElegantPaper

% --- Class structure: identification part
% ---
\ProvidesClass{ERJ}[2019/03/28 v1.00 Economic Research Journal Class]
\NeedsTeXFormat{LaTeX2e} 



\PassOptionsToClass{11pt,twoside}{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


\LoadClass{article}


\PassOptionsToPackage{no-math}{fontspec}
\RequirePackage[UTF8, scheme=plain]{ctex}
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxtext}
\RequirePackage{newtxmath}
% \RequirePackage{newtxtt}


\RequirePackage{amsmath,amssymb}

\linespread{1.2}



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
\RequirePackage[left=25.6mm, right=25.6mm, top=30mm, bottom=35mm]{geometry}



\usepackage{fancyhdr}
\fancyhead{} % clear all fields 
\fancyhead[LO]{\@author：\@title \@title} 
\fancyhead[RE]{\includegraphics[width=0.12\textwidth]{ERJ.png} \raisebox{.2\height}{ \small 2019 年第 1 期}}
\fancyfoot[R]{\thepage} 
\fancyfoot[C]{} 
% \fancyfoot[LO,CE]{From: K. Grant} 
% \fancyfoot[CO,RE]{To: Dean A. Smith} 
\renewcommand{\headrulewidth}{0.4pt} 
% \renewcommand{\footrulewidth}{0.4pt}
\pagestyle{fancy}




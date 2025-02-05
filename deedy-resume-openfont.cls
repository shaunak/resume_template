% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=0.5cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{soul}


% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}


% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}

\setmainfont{Inter}[
    Path = fonts/inter/,
    Extension = .ttf,
    UprightFont = *-Regular,
    ItalicFont = *-Italic,
]



% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\namesection}[2]{
    \noindent
    \begin{minipage}{0.6\linewidth}
        \raggedright
        \fontsize{33pt}{40pt}
        \fontspec[Path = fonts/playfair/]{PlayfairDisplay-VariableFont_wght}\selectfont #1 
    \end{minipage}%
    \begin{minipage}{0.4\linewidth}
        \raggedleft
        \color{headings}
        \fontspec[Path = fonts/inter/]{Inter-Regular}\fontsize{11pt}{14pt}\selectfont #2
    \end{minipage}
    \\[5pt]
    \noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
    \vspace{-15pt}
}



% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/playfair/]{PlayfairDisplay-VariableFont_wght}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/inter/]{Inter-Regular}\fontsize{14pt}{14pt}\selectfont\bfseries\uppercase}{}{0em}{}


\newcommand{\runsubsection}[2]{
  \par\vspace{0.3em}%                 % Space above
  {\Large\bfseries{#1}\par}%  
  % Larger, bold text
  \vspace{0.5em}%                   % Space below
}

\newcommand{\subtitle}[2]{
  {
    \ul{#1}
    \hfill
    {\color{headings}
      \fontspec[Path = fonts/inter/]{Inter-Regular}
      \fontsize{10pt}{12pt}\selectfont
      #2
    }
  }\par
  \vspace{0.5em}
  \normalfont
}



\newcommand{\descript}[1]{
\fontspec[Path = fonts/inter/]{Inter-Regular}
{#1}}

% Location command
\newcommand{\location}[1]{
    {\raggedleft\color{headings}\fontspec[Path = fonts/inter/]{Inter-Regular}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}
}


% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\fontspec[Path = fonts/inter/]{Inter_28pt-Regular}
\setlength{\leftmargini}{12pt}
\vspace{-\topsep}\begin{itemize}\itemsep4pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}


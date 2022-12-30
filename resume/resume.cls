% ------------- %
% CLASS OPTIONS %
% ------------- %
\ProvidesClass{resume}[2022/04/20 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\PassOptionsToPackage{usenames, dvipsnames}{xcolor}

% Page margins asymmetrical to accommodate running header
\usepackage[hmargin=.5in, vmargin=.5in]{geometry}

% Disable page numbers
\pagenumbering{gobble}

% --------- %
%  COLUMNS  %
% --------- %
\usepackage{multicol}


% -------- %
%  TABLES  %
% -------- %
\usepackage{tabularx}
\usepackage{array}

% Sets spacing between lines in table rows
\renewcommand{\arraystretch}{1.2}


% --------- %
%  BULLETS  %
% --------- %
% Reverses order of enumeration (for publications) enclosed in brackets
\usepackage{etaremune}
\renewcommand{\labelenumi}{[\theenumi]}


% ------- %
%  DATES  %
% ------- %
\usepackage{datetime}
\usepackage{advdate}
\usepackage{fancyhdr}
\newcommand{\yesterday}{{\AdvanceDate[-1]\today}}


% ------ %
%  TEXT  %
% ------ %
% Hyperlink support
\usepackage{hyperref}

% Primary font specs
\usepackage{fontspec}
\setmainfont[Path = ../fonts/JosefinSans/, 
             SlantedFont = JosefinSans-LightItalic, 
             BoldItalicFont = JosefinSans-BoldItalic, 
             BoldFont = JosefinSans-Bold, 
             ItalicFont = JosefinSans-Light]
             {JosefinSans-Regular}

% -------- %
%  COLORS  %
% -------- %
% Required for custom colors
\usepackage[usenames, dvipsnames]{xcolor}

% The primary document color for content text
\definecolor{primary}{HTML}{000000}

% The color of subsections headings
\definecolor{subsection_color}{HTML}{393939}

% Custom bullet point colors for heading
\definecolor{grid_yellow}{HTML}{F8D872}
\definecolor{grid_orange}{HTML}{F3874C}
\definecolor{grid_red}{HTML}{F95D59}
\definecolor{grid_pink}{HTML}{FDC7D9}
\definecolor{grid_purple}{HTML}{A296F4}
\definecolor{grid_indigo}{HTML}{4457C2}
\definecolor{grid_blue}{HTML}{5A9FE0}
\definecolor{grid_lightgreen}{HTML}{B4F75E}
\definecolor{grid_green}{HTML}{55DD35}


% ------------------- %
%  CUSTOM TYPOGRAPHY  %
% ------------------- %
% Custom format for my name and CV title section
\newcommand{\header}[2]{
    {\fontspec[Path = ../fonts/CrimsonText/]{CrimsonText-Regular}\fontsize{26pt}{30pt}\selectfont #1}
    {\color{subsection_color}\fontspec[Path = ../fonts/CrimsonText/]{CrimsonText-Italic}\fontsize{14pt}{16pt}\selectfont #2}
    \vspace{-5pt}
}

% Custom format for my research interests section
\newcommand{\researchinterests}[1]{
    {\fontspec[Path = ../fonts/CrimsonText/]{CrimsonText-Italic}\fontsize{11pt}{12pt}\selectfont #1}
}


% ----------------------------------- %
%  SECTION TITLE STYLING AND SPACING  %
% ----------------------------------- %
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}

\newcommand{\sectionspace}{\vspace{8pt}}
\usepackage[first=1, last=3]{lcg}
\newcommand{\random}{\rand\arabic{rand}}

% Calculate the length of a header to dynamically determine header rule length
\usepackage{calc}
\newcommand\rulearoundmain[1]{\raisebox{2ex}{\rule{.5in}{.8pt}\hfill \ \ }~#1~\raisebox{2ex}{ \ \rule{.5in}{.8pt}\hfill}}

% \renewcommand\rulearoundmain[1]{\raisebox{2ex}{\rule{1.75in - \widthof{#1}/2}{.8pt}}~#1~\raisebox{2ex}{\rule{1.75in - \widthof{#1}/2}{.8pt}}}

\titleformat{\section}{\color{primary}\fontspec[Path = ../fonts/CrimsonText/]{CrimsonText-Bold}\fontsize{10pt}{12pt}\selectfont\centering\uppercase}{\thesection}{0em}{\rulearoundmain}

% Set static dotted subheader rule length
\newcommand\dotrulearound[1]{\raisebox{2ex}{\hbox to 2cm{\leaders\hbox to 10pt{\hss . \hss}\hfil}}#1~\raisebox{2ex}{\hbox to 2cm{\leaders\hbox to 10pt{\hss . \hss}\hfil}}}

\titleformat{\subsection}{\color{subsection_color}\fontspec[Path = ../fonts/CrimsonText/]{CrimsonText-Regular}\fontsize{8pt}{11pt}\selectfont\centering\uppercase}{\thesection}{0em}{\dotrulearound}


% ----------------- %
%  SYMBOLS + ICONS  %
% ----------------- %
% Defining symbols for legibility in monospace font instead of serif font
\def\Plus{\texttt{+}}
\def\Pound{\texttt{\#}}
\def\Minus{\texttt{-}}
\def\Dollar{\texttt{\$}}

% Decorative and academic app icons
\usepackage{academicons}
\usepackage{fontawesome5}
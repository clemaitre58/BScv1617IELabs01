%% Style TDTP

\NeedsTeXFormat{LaTeX2e} \ProvidesClass{TDTP}[2006/9/30 Style TD TP 2006]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass[a4paper,12pt]{article}

\usepackage{fullpage,amsmath,amssymb,times,subfigure}
\usepackage[final]{graphicx}
\usepackage[T1]{fontenc}
\usepackage{multirow,fancybox,pifont,multido}
\usepackage[misc,geometry]{ifsym}
\usepackage{geometry}

\geometry{hmargin=1.8cm, vmargin=2.3cm }

\newcounter{exercicecount}
\setcounter{exercicecount}{1} 

\usepackage{fancyhdr}
\AtEndDocument{\label{LastPage}}
\renewcommand{\headrulewidth}{0pt}

\lfoot{\it \small \promo~-~\matiere}
\cfoot{}
\rfoot{\it \small \tdtp~-~ Page { \thepage}/\pageref{LastPage}  }



\pagestyle{fancy}

% {\footnotesize \DiamondShadowA~~}

\newcommand{\Exo}{%
\vspace{20pt}
\par
{\hspace{-1.2cm}\raisebox{-2pt}{$\llcorner$}~~\bf Problem \theexercicecount~~\raisebox{2pt}{$\urcorner$}}
\\[12pt]
 	\addtocounter{exercicecount}{1}
	}
	
%
% fin du fichier
%

\newcommand{\sujet}{\multido{\nA=1+1}{20}{\_}}


\newcommand{\titre}{
\begin{table}[h]
\vspace{-0.7cm}
    \centering
\begin{tabular*}{\textwidth}{cc}
\begin{minipage}{0.3\textwidth}
\centering
\includegraphics[width=0.9\textwidth]{images/logo_ub.jpg}\\
%\includegraphics[width=0.9\textwidth]{./logo-telecom.png}\\
%\ \\
\end{minipage}
&
\begin{minipage}{0.7\textwidth}
\centering
{
  \begin{minipage}{\textwidth}
\begin{center}
	{\ \\[18pt]}
    {\bf \Large \matiere}\\
	{\large \tdtp \\}
	{\ \\}
\end{center}
  \end{minipage}}
\end{minipage}
\\
%\promo~ {\tiny \DiamondShadowB\ }  \annee  & {\auteur} \\
\promo  & {\auteur} \\
 & {\couriel}
   \end{tabular*}
  \end{table}
\ \\
\begin{flushright}
\vspace{8pt}
{\Large \raisebox{2pt}{\huge  $\lceil$}~~\sujet~~\raisebox{-2pt}{\huge  $\rfloor$}}
\\[15pt]
\end{flushright}
}


\setlength\parindent{0em}

\endinput


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Criar cabecalho daqui

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufstex}[12/01/2017 v1.4 Modelo de Relatorios adaptado de abntex2 e dcomp-abntex2] % TODO: Atualizar data

\DeclareOption{pibic}{%
  \let\@pesquisatipo=0}

\DeclareOption{picvol}{%
  \let\@pesquisatipo=0}


\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}
}

\ProcessOptions\relax
% \LoadClass[a4paper]{article}
\LoadClass[sumario = tradicional, 12pt, openright, oneside, a4paper]{abntex2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

\usepackage{subfig}
\usepackage{geometry}
\usepackage{caption}
\usepackage{textcomp}
\usepackage[utf8]{inputenc}
\usepackage{cmap}
\usepackage{indentfirst}
\usepackage{color}		
\usepackage{graphicx}
\usepackage{multicol}
\usepackage{multirow}
\usepackage{lipsum}
\usepackage{amsmath}
\usepackage{epstopdf}
\usepackage{enumitem}
\usepackage{float}
\usepackage[portuguese, ruled, linesnumbered]{algorithm2e}
\usepackage[noend]{algpseudocode}
\usepackage{longtable}
\usepackage{tabularx}
\usepackage{tabulary}
\usepackage{multirow}
\usepackage{array,colortbl,xcolor}
\usepackage{syntax}
\usepackage{listings}
\usepackage{lscape}
\usepackage{afterpage}
\usepackage{capt-of}
\usepackage{pdflscape}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\providecommand{\imprimirperiodobolsa}{}
\newcommand{\periodobolsa}[2]{
  \renewcommand{\imprimirperiodobolsa}{Periodo da bolsa: de #1 a #2}
}

% \providecommand{\imprimirtipobolsa}




\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \centering \includegraphics[scale=.3]{imagens/ufs_logo}
  \end{capa}
}
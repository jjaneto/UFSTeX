%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Criar cabecalho daqui

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufstex}[12/01/2017 v1.4 Modelo de Relatorios adaptado de abntex2 e dcomp-abntex2] % TODO: Atualizar data

\DeclareOption{pibic}{%
  \let\@pesquisatipo=0}

\DeclareOption{picvol}{%
  \let\@pesquisatipo=1}

\DeclareOption{parcial}{%
  \let\@relatoriotipo=0}

\DeclareOption{final}{%
  \let\@relatoriotipo=1}


\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}
}

\ProcessOptions\relax
\LoadClass[sumario = tradicional, 12pt, openright, oneside, a4paper]{abntex2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

\RequirePackage{subfig}
\RequirePackage{geometry}
\RequirePackage{caption}
\RequirePackage{textcomp}
\RequirePackage[utf8]{inputenc}
\RequirePackage{cmap}
\RequirePackage{indentfirst}
\RequirePackage{color}		
\RequirePackage{graphicx}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{lipsum}
\RequirePackage{amsmath}
\RequirePackage{epstopdf}
\RequirePackage{enumitem}
\RequirePackage{float}
\RequirePackage[portuguese, ruled, linesnumbered]{algorithm2e}
\RequirePackage[noend]{algpseudocode}
\RequirePackage{longtable}
\RequirePackage{tabularx}
\RequirePackage{tabulary}
\RequirePackage{multirow}
\RequirePackage{array,colortbl,xcolor}
\RequirePackage{syntax}
\RequirePackage{listings}
\RequirePackage{lscape}
\RequirePackage{afterpage}
\RequirePackage{capt-of}
\RequirePackage{pdflscape}
\RequirePackage{cmap}               % Mapear caracteres especiais no PDF
\RequirePackage[utf8]{inputenc}     % Codificacao do documento
\RequirePackage{lastpage}           % Para total de páginas
\RequirePackage{mathptmx}
\RequirePackage{parskip}
\RequirePackage[brazilian,hyperpageref]{backref}
\RequirePackage[alf]{abntex2cite}	% Citações padrão ABNT
\RequirePackage{ifthen}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\providecommand{\imprimirperiodobolsa}{}
\newcommand{\periodobolsa}[2]{
  \renewcommand{\imprimirperiodobolsa}{Periodo da bolsa: de #1 a #2}
}

\providecommand{\imprimirtipobolsa}{}
\if \@pesquisatipo0
\renewcommand{\imprimirtipobolsa}{PROGRAMA INSTITUCIONAL DE BOLSAS DE INICIAÇÃO CIENTÍFICA – PIBIC}
\else \if \@pesquisatipo1
\renewcommand{\imprimirtipobolsa}{PROGRAMA DE INICIAÇÃO CIENTÍFICA VOLUNTÁRIA – PICVOL}
\fi
\fi

\providecommand{\imprimirtiporelatorio}{}
\if \@relatoriotipo0
\renewcommand{\imprimirtiporelatorio}{Relatório Parcial}
\else \if \@relatoriotipo1
\renewcommand{\imprimirtiporelatorio}{Relatório Final}
\fi
\fi

\providecommand{\imprimirarea}{}
\newcommand{\area}[1]{
  \renewcommand{\imprimirarea}{Área do conhecimento: #1}
}

\providecommand{\imprimirsubarea}{}
\newcommand{\subarea}[1]{
  \renewcommand{\imprimirsubarea}{\ifthenelse{\equal{#1}{}}
    {} % Se a opção for declarada vazia.
    {Subárea do conhecimento: #1}
  }
}

\providecommand{\imprimirespecialidade}{}
\newcommand{\especialidade}[1]{
  \renewcommand{\imprimirespecialidade}{
    \ifthenelse{\equal{#1}{}}
    {} % Se a opção for declarada vazia.
    {Especialidade do conhecimento: #1}
  }
}

\providecommand{\imprimiragencia}{}
\newcommand{\agencia}[1]{
  \renewcommand{\imprimiragencia}{Este projeto é desenvolvido com bolsa de iniciação científica \par
    \if \@pesquisatipo0
    PIBIC/#1
    \else \if \@pesquisatipo1
    PICVOL
    \fi
    \fi
  }
}


\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \begin{center}
      \includegraphics[scale=.2]{imagens/ufs_logo} \par
      SERVIÇO PÚBLICO FEDERAL \par
      UNIVERSIDADE FEDERAL DE SERGIPE \par
      PRÓ-REITORIA DE PÓS-GRADUAÇÃO E PESQUISA
    \end{center}

    \vspace*{1cm}
    
    \center \imprimirtipobolsa
    \vspace*{\fill}

    \begin{center}
      \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \end{center}
    \vspace*{\fill}

    {\imprimirtiporelatorio}
    
    \imprimirarea

    \imprimirsubarea

    \imprimirespecialidade

    \vspace*{\fill}

    \imprimiragencia

    \vspace{2cm}

    Orientador: \imprimirorientador \par    
    Autor: \imprimirautor
  \end{capa}
}


\makeatletter
\hypersetup{
  unicode=true,
  pdftitle={\@title}, 
  pdfauthor={\@author},
  pdfsubject={\imprimirpreambulo},
  pdfcreator={LaTeX with abnTeX2},
  pdfkeywords={abnt}{latex}{abntex}{abntex2}{trabalho acadêmico}, 
  colorlinks=true,       		% false: boxed links; true: colored links
  linkcolor=blue,          	% color of internal links
  citecolor=blue,        		% color of links to bibliography
  filecolor=magenta,      	% color of file links
  urlcolor=blue,
  bookmarksdepth=4,
  breaklinks=true            % deve ser usado com o pacote breakurl, sem ele não fuciona
}
\makeatother

\setlrmarginsandblock{3cm}{2cm}{*}
\setulmarginsandblock{3cm}{2cm}{*}
\checkandfixthelayout

\renewcommand{\ABNTEXchapterfont}{\rmfamily\bfseries}

\setlength{\parindent}{1.3cm}
\setlength{\parskip}{0.2cm}
\frenchspacing

% Uso do sumário tradicional, com espaçamento entre os capítulos
\setlength{\cftbeforechapterskip}{1em}




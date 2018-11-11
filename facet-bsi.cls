
% Essa linha indica que a folha é do tipo A4, com tamanho de fonte igual a 12. O formato de texto
% é o report.
\LoadClass[a4paper, 12pt]{report}

% Inserção de pacotes necessários
\RequirePackage[brazil]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[pdftex]{hyperref}
\RequirePackage{fancyhdr, multicol, float, multirow}
\RequirePackage[bmargin=2cm, tmargin=3cm, lmargin=3cm, rmargin=2cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage{lmodern} 
\RequirePackage{setspace}

% Extensões de imagens suportadas
\DeclareGraphicsExtensions{.pdf,.png,.jpg,.eps}

\pagestyle{fancy} % chama o pacote fancyhdr pra deixar o numero das páginas no topo e personalizar 
% cabecalho
\setlength\headheight{14.5pt} 

%---------------------------------------------------------------%
% Definições de novos comandos e renomeação                     %
%---------------------------------------------------------------%
% Comandos para a capa, folha de rosto e folha de aprovação.
%
\newcommand{\institution}[1]{\gdef\@institution{#1}}%
\newcommand{\@institution}{\@latex@warning@no@line{No \noexpand\institution given}}

\newcommand{\faculty}[1]{\gdef\@faculty{#1}}%
\newcommand{\@faculty}{\@latex@warning@no@line{No \noexpand\faculty given}}

\newcommand{\course}[1]{\gdef\@course{#1}}%
\newcommand{\@course}{\@latex@warning@no@line{No \noexpand\course given}}

\newcommand{\leader}[1]{\gdef\@leader{#1}}%
\newcommand{\@leader}{\@latex@warning@no@line{No \noexpand\leader given}}

\newcommand{\firstmember}[1]{\gdef\@firstmember{#1}}%
\newcommand{\@firstmember}{\@latex@warning@no@line{No \noexpand\firstmember given}}

\newcommand{\secondmember}[1]{\gdef\@secondmember{#1}}%
\newcommand{\@secondmember}{\@latex@warning@no@line{No \noexpand\secondmember given}}


\newcommand{\coleader}[1]{\gdef\@coleader{#1}}%
\newcommand{\@coleader}{\@latex@warning@no@line{No \noexpand\coleader given}}


\newcommand{\defcoleader}[1]{\gdef\@defcoleader{#1}}%
\newcommand{\@defcoleader}{\@latex@warning@no@line{No \noexpand\defcoleader given}}

\newcommand{\mes}[1]{\gdef\@mes{#1}}%
\newcommand{\@mes}{\@latex@warning@no@line{No \noexpand\mes given}}

\newcommand{\ano}[1]{\gdef\@ano{#1}}%
\newcommand{\@ano}{\@latex@warning@no@line{No \noexpand\ano given}}

\newcommand{\dia}[1]{\gdef\@dia{#1}}%
\newcommand{\@dia}{\@latex@warning@no@line{No \noexpand\dia given}}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

% Definições para citações de capítulos, seções, programas, figuras, tabelas, apêndices,
% algoritmos, equações e gráficos.
\newcommand{\chapref}[1]{\chaptername~\ref{#1}}
\newcommand{\progref}[1]{Programa~\ref{#1}}
\newcommand{\secref}[1]{Se\c{c}\~{a}o~\ref{#1}}
\newcommand{\figref}[1]{Figura~\ref{#1}}
\newcommand{\tabref}[1]{Tabela~\ref{#1}}
\newcommand{\appref}[1]{Ap\^{e}ndice~\ref{#1}}
\newcommand{\algref}[1]{Algoritmo~\ref{#1}}
\newcommand{\equref}[1]{Equa\c{c}\~{a}o~\ref{#1}}
\newcommand{\graphref}[1]{Gr\'{a}fico~\ref{#1}}

%---------------------------------------------------------------%
% Definições de capa e folha de rosto.                          %
%---------------------------------------------------------------%

\renewcommand{\maketitle}{%

  \begin{center}
     \fontsize{13}{13}
     
     \@institution \\
     \@faculty \\
     \@course \\
     \vspace{2cm}
     
     \includegraphics[width=3.5cm]{imagens/logo_si}
    
    \vspace{1.5cm}
    \HRule \\[0.5cm]
    \fontsize{12}{16}
%     \fontfamily{qpl}%\fontseries{b}%
%     \fontshape{sc} %\headlinecolor
    {\Large \bfseries \@title}
    \HRule
    
    \vspace{2cm}

    \begin{multicols}{2}
      \begin{flushleft}
        \fontsize{12}{12}
%         \fontfamily{ptm}
%         \fontshape{n}\selectfont
        {\em Orientador}: \\
        \@leader \vspace{0.25cm} 
        {\em \@defcoleader} \\
        \@coleader
      \end{flushleft}
      \columnbreak
      \begin{flushright}
        \fontsize{12}{12}
%         \fontfamily{ptm}
%         \fontshape{n}\selectfont
        {\em Acadêmico(s)}: \\
        \@author
      \end{flushright}
    \end{multicols} 

    \vfill
    \fontsize{12}{12}
%     \fontfamily{ptm}
%     \fontshape{n}\selectfont
    Dourados, \@mes de \@ano
  \end{center}
  \thispagestyle{empty}
  \newpage
  }
  
  \newcommand{\folhaderosto}{
    \thispagestyle{empty}
    \begin{center}
	
      \textmd{\@author}

      
	\vspace{7.5cm}
	
	\HRule \\[0.5cm]
% 	\fontsize{13}{13}
% 	\fontfamily{qpl}%\fontseries{b}%
% 	\fontshape{sc} %\headlinecolor
% 	\fontfamily{qpl}%\fontseries{b}%
% 	\fontshape{sc}\selectfont %\headlinecolor
	{\Large \bfseries \@title}
	\HRule
	
	\vspace{4cm}
	
	\fontsize{12}{12}
% 	\fontfamily{ptm}
% 	\fontshape{n}\selectfont %\headlinecolor
	 \begin{flushright}
         \parbox[t]{.5\linewidth}{
            Trabalho de Conclusão de Curso de graduação apresentado 
            para a obtenção de título de Bacharel em Sistemas de Informação
            pela Faculdade de Ciências Exatas e Tecnologia da
            Universidade Federal da Grande Dourados sob a orientação de
            \@leader.
         }
      \end{flushright}
	\vfill
	
	Dourados, \@mes de \@ano
      \end{center}
      \newpage
      \flushbottom
  }
  
  \newcommand{\folhadeaprovacao}{	
    \thispagestyle{empty}
    \begin{center}
	
      \textmd{\@author}
      
	\vspace{4cm}
	
	\HRule \\[0.5cm]
	\fontsize{11}{16}
% 	\fontfamily{qpl}%\fontseries{b}%
% 	\fontshape{sc}\selectfont %\headlinecolor
	{\Large \bfseries \@title}
	\HRule
	
	\vspace{3cm}
	
% 	\fontsize{12}{12}\fontfamily{ptm}
% % 	\fontshape{n}\selectfont
	Trabalho de Conclusão de Curso aprovado como requisito parcial para 
	obtenção do título de Bacharel em Sistemas de Informação na Univeridade Federal
	da Grande Dourados, pela comissão formada por:
	\vspace{2.0cm}
	
	\underline{\hspace{8cm}} \\
	\vspace{0.1cm}
	Orientador: \@leader \\
	FACET - UFGD
	
	\vspace{1.5cm}
	
	\underline{\hspace{8cm}} \\
	\vspace{0.1cm}
	\@firstmember
	\vspace{0.1cm}
	\\FACET - UFGD
	
	\vspace{1.5cm}
	\underline{\hspace{8cm}} \\
	\vspace{0.1cm}
	\@secondmember
	\\FACET - UFGD
	
	\vfill
	
      Dourados, \@dia de \@mes de \@ano.
      \end{center}
      \newpage
  }
  \newcommand{\fichacatalografica}{
    \thispagestyle{empty}
    \vspace*{15cm}
    % Posição vertical
    \hrule
    % Linha horizontal
    \begin{center}
    % Minipage Centralizado
    \begin{minipage}[c]{12.5cm} % Largura
    
    \hspace{0.5cm} \@title / \@author. --
    Dourados, \@dia/\@mes/\@ano-
    \hspace{0.5cm}  p. : il.(alguma color.); 30 cm.\\
    \hspace{0.5cm} \@leader\\
    \hspace{0.5cm}
    \parbox[t]{\textwidth}{\TCC~--~\@institution,
    \@dia/\@mes/\@ano.}\\
    \hspace{0.5cm}
    1. Palavra-chave1.
    2. Palavra-chave2.
    I. Orientador.
    II. Universidade xxx.
    III. Faculdade de xxx.
    IV. Título\\
    \hspace{8.75cm} CDU 02:141:005.7 \\
    \end{minipage}
    \end{center}
    \hrule
    
    \newpage
  }
  \newcommand{\estilodapagina}{
    %----------------------------------------------------
    % redefine o cabecalho superior
    %

    \fancyhf{} % deixa cabecalho e rodapé vazios.

    % se o documemento for twoside use essas linhas 
%         \fancyhead[LE,RO]{\thepage}
%         \fancyhead[RE]{\textit{ \nouppercase{\leftmark}} }
%         \fancyhead[LO]{\textit{ \nouppercase{\rightmark}} }
    
    % se o documento não for twoside, comente as linhas acima
    % e descomente as de baixo.
    \fancyhead[R]{\thepage}
    \fancyhead[L]{\textit{ \nouppercase{\rightmark}} }
    %-------- fim da redefinicao do cabecalho ----------
 
  }
  \hypersetup{pageanchor=false} % comando usado para remover warning.

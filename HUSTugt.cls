% Huazhong University of Science and Technology Undergraduate Thesis
% Copyright (C) 2012 Song Xie<mail@xiesong.me>

% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or
% (at your option) any later version.

% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
% General Public License for more details.

% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
% 02110-1301, USA.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HUSTugt}
[2012/05/24 0.3 Huazhong University of Science and Technology Undergraduate Thesis]

\newif\ifHUST@LMMath
\DeclareOption{LM-Math}{\HUST@LMMathtrue}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{book}}

\ProcessOptions
\LoadClass[12pt, a4paper, openany, nocap]{ctexbook}

\RequirePackage{ifthen}
\RequirePackage{calc}

\RequirePackage[bookmarks]{hyperref}

% Load AMSLaTeX macro for more mathematical support
\RequirePackage{amsmath, amssymb}

% Load graphicx to support jpg, png, and other figure file types
\RequirePackage{graphicx}

% This macro supports layout figures side by side
% "config" option for backward compatibility
\RequirePackage[config]{subfig}

% Require array macro to support more table styles
\RequirePackage{array}

% Require XeLaTeX
\RequirePackage{fontspec,xltxtra,xunicode}
\setmainfont[Mapping=tex-text]{Times New Roman}
\setsansfont[Mapping=tex-text]{Helvetica}
\setmonofont{Courier}
\ifHUST@LMMath
  \setmathrm{Latin Modern Math}
\fi

\setCJKmainfont[ItalicFont={KaiTi}]{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont*{Fangsong}
\xeCJKsetcharclass{"0}{"2E7F}{0}
\xeCJKsetcharclass{"2E80}{"FFFF}{1}

% List bibliography in ToC
\RequirePackage[nottoc]{tocbibind}

% Set the layout
\setlength{\textwidth}{\paperwidth}
\setlength{\textheight}{\paperheight} 
\setlength{\marginparwidth}{0cm} 
\setlength{\marginparsep}{0cm} 
\addtolength{\textwidth}{-5.6cm} 
\setlength{\oddsidemargin}{2.8cm-1in} 
\setlength{\evensidemargin}{\oddsidemargin} 
\setlength{\headheight}{0.9cm} 
\setlength{\topskip}{0pt} 
\setlength{\skip\footins}{15pt} 
\setlength{\footskip}{1.3cm} 
\setlength{\topmargin}{3.0cm-1in} 
\setlength{\headsep}{0.5cm} 
\addtolength{\textheight}{-7.0cm} 

% 1.415 is chosen for 1.25x line height after experiments
\linespread{1.415}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 重定义字号命令，采用薛瑞尼版本中关于字号命令的定义，
% 消除了字体大小和行距的紧耦合
% 命令中的可选参数用于指定行距，默认为单倍行距。
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% \newlength\HUST@linespace
% \newcommand{\HUST@choosefont}[2]{%
%   \setlength{\HUST@linespace}{#2*\real{#1}}%
%   \fontsize{#2}{\HUST@linespace}\selectfont}
% \newcommand{\chuhao}[1][\baselinestretch]{\HUST@choosefont{#1}{42pt}}
% \newcommand{\xiaochu}[1][\baselinestretch]{\HUST@choosefont{#1}{36pt}}
% \newcommand{\yihao}[1][\baselinestretch]{\HUST@choosefont{#1}{26pt}}
% \newcommand{\xiaoyi}[1][\baselinestretch]{\HUST@choosefont{#1}{24pt}}
% \newcommand{\erhao}[1][\baselinestretch]{\HUST@choosefont{#1}{22pt}}
% \newcommand{\xiaoer}[1][\baselinestretch]{\HUST@choosefont{#1}{18pt}}
% \newcommand{\sanhao}[1][\baselinestretch]{\HUST@choosefont{#1}{16pt}}
% \newcommand{\xiaosan}[1][\baselinestretch]{\HUST@choosefont{#1}{15pt}}
% \newcommand{\sihao}[1][\baselinestretch]{\HUST@choosefont{#1}{14pt}}
% \newcommand{\banxiaosi}[1][\baselinestretch]{\HUST@choosefont{#1}{13pt}}
% \newcommand{\xiaosi}[1][\baselinestretch]{\HUST@choosefont{#1}{12pt}}
% \newcommand{\dawu}[1][\baselinestretch]{\HUST@choosefont{#1}{11pt}}
% \newcommand{\wuhao}[1][\baselinestretch]{\HUST@choosefont{#1}{10.5pt}}
% \newcommand{\xiaowu}[1][\baselinestretch]{\HUST@choosefont{#1}{9pt}}
% \newcommand{\liuhao}[1][\baselinestretch]{\HUST@choosefont{#1}{7.5pt}}
% \newcommand{\xiaoliu}[1][\baselinestretch]{\HUST@choosefont{#1}{6.5pt}}
% \newcommand{\qihao}[1][\baselinestretch]{\HUST@choosefont{#1}{5.5pt}}
% \newcommand{\bahao}[1][\baselinestretch]{\HUST@choosefont{#1}{5pt}}

% Text font is Xiaosi(12 pt), line height is 15 pt (15/12 = 1.25)
% \renewcommand\normalsize{\fontsize{12pt}{15pt}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 定制浮动图形和表格的样式
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% 表格中的字体比正文小半号，为大五号，11pt，同时表格中的行距为 1.4 倍行距

% 重定义 tabular 环境
% \let\HUST@tabular\tabular
% \renewcommand\tabular{\dawu[1.4]\HUST@tabular}
% \let\endHUST@tabular\endtabular

% 重定义 tabular* 环境
% \@namedef{tabular*}#1{\dawu[1.4]%
%   \setlength\dimen@{#1}%
%   \edef\@halignto{to\the\dimen@}\@tabular}

% 设置标题样式
\long\def\@makecaption#1#2{%
  % 图表标题字体比正文小半号，为大五号，11pt
  \dawu 
  \rmfamily
  \vskip\abovecaptionskip
  % 去掉图表号后面的":"
  \setbox\@tempboxa\hbox{#1~~#2}%
  \ifdim \wd\@tempboxa >\hsize
  % 如果图表标题的长度超过一行，则采用悬挂缩进的方式
  \@hangfrom{#1~~}#2
  \else
  % 如果图表标题的长度不超过一行，则采用居中方式
  \global \@minipagefalse
  \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

% 设置标题标签的样式
\def\thefigure{\@arabic\c@figure}
\def\fnum@figure{\figurename~\thefigure}
\def\thetable{\@arabic\c@table}
\def\fnum@table{\tablename~\thetable}

% 设置标题前后间距
\setlength\abovecaptionskip{12bp}
\setlength\belowcaptionskip{12bp}

% 下面两条命令可以使标题编号随着每开始新的一章而重新开始，即按章的顺序编号
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
% \renewcommand{\thesubfigure}{\thefigure--(\arabic{subfigure})}
% 定制引用子图的标记形式
% \renewcommand{\p@subfigure}{:}

% 定义新命令\hlinewd 来改变水平线的粗细
\def\hlinewd#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
  \reserved@a\@xhline}

% 表格行间距增大10%
\renewcommand{\arraystretch}{1.1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Customize cover
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makecover}{
  \begin{titlepage}
    \HUST@ctitlepage
  \end{titlepage}
  \pagenumbering{Roman}
  % \begin{titlepage}
    % \HUST@ctitlepage
    % \clearpage\thispagestyle{empty}\HUST@etitlepage
  % \end{titlepage}
  \addtocontents{toc}{\cftpagenumberson{chapter}}
  \HUST@makeabstract
  \clearpage
  \tableofcontents
  \mainmatter
}


\newcommand{\college}[1]{\renewcommand{\HUST@college}{#1}}
\newcommand{\HUST@college}{}
\newcommand{\department}[1]{\renewcommand{\HUST@department}{#1}}
\newcommand{\HUST@department}{}
\newcommand{\teacher}[1]{\renewcommand{\HUST@teacher}{#1}}
\newcommand{\HUST@teacher}{}
\newcommand{\stunumber}[1]{\renewcommand{\HUST@stunumber}{#1}}
\newcommand{\HUST@stunumber}{}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\newcommand{\HUST@ctitlepage}{
  \begin{center}
    % Upper part of the page
    \includegraphics[width=0.4\textwidth]{hust-flash-eps-crop.eps}\\[1cm]    

    \textsc{\zihao{-0} 毕业设计[论文]}\\[1.5cm]

    % Title
    \HRule \\[0.6cm]
    { \huge \bfseries \@title}

    \HRule \\[5.5cm]

    {\zihao{4}
    % Author and supervisor
      \begin{tabular}{r @{：} l}
        院\hspace{2em}系 & \HUST@college\\
        专\hspace{2em}业 & \HUST@department\\
        姓\hspace{2em}名 & \@author\\
        学\hspace{2em}号 & \HUST@stunumber\\
        指导教师 & \HUST@teacher\\
      \end{tabular}
    }
    \vfill

    % Bottom of the page
    {\large \today}

  \end{center}
}

\newcommand{\cabstract}[1]{\renewcommand{\HUST@cabstract}{#1}}
\newcommand{\HUST@cabstract}{}
\newcommand{\ckeywords}[1]{\renewcommand{\HUST@ckeywords}{#1}}
\newcommand{\HUST@ckeywords}{}
\newcommand{\eabstract}[1]{\renewcommand{\HUST@eabstract}{#1}}
\newcommand{\HUST@eabstract}{}
\newcommand{\ekeywords}[1]{\renewcommand{\HUST@ekeywords}{#1}}
\newcommand{\HUST@ekeywords}{}

% Abstract
\newcommand{\HUST@makeabstract}{%

  % Chinese abstract
  \clearpage
  \setcounter{page}{1}
  \phantomsection
  \addcontentsline{toc}{chapter}{摘\hspace{2em}要}
  \chapter*{摘\hspace{2em}要}
  \HUST@cabstract

  \vspace{3ex}
  \noindent\begin{tabular}{@{}p{4em}@{}p{\textwidth-4em}}
    {\bf 关键词:} & \HUST@ckeywords \\
  \end{tabular}
  
  % English abstract
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{Abstract}
  \normalsize
  \chapter*{Abstract}
  \HUST@eabstract

  \vspace{3ex}
  \noindent\begin{tabular}{@{}p{5em}@{}p{\textwidth-5em}}
    {\bf Keywords:} & \HUST@ekeywords\\
  \end{tabular}
}

\renewcommand\mainmatter{%
  \clearpage
  \@mainmattertrue
  \addtocontents{toc}{\cftpagenumbersoff{chapter}}
  \pagenumbering{arabic}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Define chapter and section's font
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% Support chapter(0), section(1), subsection(2)
\setcounter{secnumdepth}{2}

\CTEXsetup[name={,}, format={\centering}, titleformat={\zihao{-3}\bfseries}, 
numberformat={\zihao{-3}\bfseries}, aftername={\quad}]{chapter}
\CTEXsetup[name={,}, format={}, titleformat={\zihao{4}\bfseries}, 
numberformat={\zihao{4}\bfseries}, aftername={\quad}]{section}
\CTEXsetup[name={,}, format={}, titleformat={\zihao{-4}\bfseries}, 
numberformat={\zihao{-4}\bfseries}, aftername={\quad}]{subsection}

% appendix



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Customize format for entries in table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Show chapters and sections in ToC
% chapter(0), section(1), subsection(2), subsubsection(3)
\setcounter{tocdepth}{1}

% Require tocloft to customize title of ToC
\RequirePackage[subfigure]{tocloft}

% Set format of title of ToC to Xiaosan, bold font, centering
\renewcommand{\cfttoctitlefont}{\hfill\bf\zihao{-3}}
\renewcommand{\cftaftertoctitle}{\hfill}

% Reduce the after title skip
\renewcommand{\cftaftertoctitleskip}{2ex}

\cftpagenumbersoff{chapter}
\renewcommand{\cftchapdotsep}{\cftnodots}
\renewcommand{\cftchapfont}{\zihao{-4}\rm}
\renewcommand{\cftchappagefont}{\zihao{-4}\rm}

\renewcommand{\cftsecfont}{\zihao{-4}\rm}
\renewcommand{\cftsecpagefont}{\zihao{-4}\rm}
\setlength{\cftsecindent}{0em}


\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\rfoot{\thepage}
% \fancyhead{} % clear all header fields
% \fancyfoot{} % clear all footer fields
% \fancyfoot[RE,RO]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{plain}{%
  \fancyhf{} % clear all header and footer fields
  \fancyfoot[R]{\thepage} % except the center
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rename English phases to Chinese ones
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\CTEXoptions[
contentsname = {目\hspace{2em}录},
listtablename = {表格索引},
listfigurename = {插图索引},
bibname = {参考文献},
abstractname = {摘\hspace{2em}要},
indexname = {索引},
figurename = {图},
tablename = {表},
today = big]

\newcommand{\@eabstractname}{Abstract}
\newcommand{\equname}{式}

% "把所有文献的号码连方括号一并放在加注处的右上角"
\newcommand{\citeu}[1]{$^{\mbox{\protect \scriptsize \cite{#1}}}$}


% \renewcommand\contentsname{目\hspace{2em}录}
% \renewcommand\listfigurename{插图索引}

% {\renewcommand\refname{参考文献}}
% {\renewcommand\bibname{参考文献}}

% \renewcommand\indexname{索引}
% \renewcommand\figurename{图}
% \renewcommand\tablename{表}




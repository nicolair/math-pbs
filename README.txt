Présentation

Ce dépôt fait partie du projet maquisdoc dont l'objectif est de présenter
- des documents pédagogiques
- des informations sur la manière de les organiser
- des outils pour les maintenir, les relier, les diffuser
Le projet se répartit sur plusieurs hébergeurs notamment des dépôts GitHub contenant le code des outils et les sources Tex des documents pédagogiques.

Ce dépôt particulier maths-pbs https://github.com/nicolair/maths-pbs contient les sources (essentiellement Tex) d'une collection de problèmes de mathématiques destinés à la classe de mpsi.

Conventions de nommage

- Les fichiers dont le nom commence par "E" sont relatifs à des énoncés.
- Les fichiers dont le nom commence par "C" sont relatifs à des corrigés.
- Les énoncés comme les corrigés peuvent inclure des figures en pdf compilées à partir de sources le plus souvent en Asymptote (.asy) parfois en Python. Le numéro de la figure apparaît dans le nom du fichier juste avant l'extension et précédée d'un undescore "_" .
- Les fichiers dont le nom commence par "A" contiennent seulement des inclusions :
	- les fichiers nécessaires à la compilation
	- l'énoncé
	- le corrigé
	
Compilation

Les fichiers à compiler directement sont ceux dont le nom commence par "A".
Les paquetages à inclure dans l'installation LateX sont indiqués dans le fichier "pbpdf.tex".
En principe les figures en pdf sont présentes dans le dépôt Git pour ceux qui ne sont pas habitués à Asymptote

Exemple:  Avaleadetcirc.tex

\input{pbpdf.tex}
\begin{document}
\subsection*{\'Enoncé}
\input{Evaleadetcirc.tex} 
\clearpage
\subsection*{Corrigé}
\input{Cvaleadetcirc.tex} 
\end{document}

L'énoncé inclut une figure nommée Evaleadetcirc_1.pdf dont la source est Evaleadetcirc_1.asy.
Le corrigé inclut une figure nommée Cvaleadetcirc_1.pdf dont la source est Cvaleadetcirc_1.asy. 

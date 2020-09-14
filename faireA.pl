#!/usr/bin/perl -w
print "Création des A*.tex. \n";

#modele de fichier tex
$texteA = '\input{pbpdf.tex} \begin{document} \subsection*{\\\'Enoncé} \input{nomfic} TEXTECORR \end{document}';
$corr = '\newpage \subsection*{Corrigé} \input{NOMFICC}';
#print $texteA ,"\n";

#liste le répertoire courant dans une variable
@listerep = `ls`;
$nbtextes = @listerep;
print "Nombre de fichiers dans le répertoire : $nbtextes \n";

#extrait la liste des énoncés (commence par E nb quelconque de carac quelconques finit par tex)
@listeE = grep /^E(.+)tex$/,@listerep;
$nbenonces = @listeE;
print "Nombre d'énoncés : $nbenonces\n";

#boucle sur les énoncés
print "Création des fichiers A \n";
foreach $nomficE (sort @listeE){
  chop($nomficE);               #enleve le saut de ligne a la fin
  #print "$nomficE \n";
  #nomficA est obtenu en remplacant le premier E par un A
  $nomficA = $nomficE;
  $nomficA =~ s/^E/A/;
  #création du fichier A lorsqu'il n'existe pas
  if (!(grep /$nomficA/,@listerep)){
    print "\n " , $nomficA," n'existait pas, il est créé.";
      #creation du code tex
    $texte = $texteA;
    $texte =~ s/nomfic/$nomficE/;
      #écriture de input du corrigé s'il existe
    $nomficC = $nomficE;
    $nomficC =~ s/^E/C/;
    $corrl = $corr;
    if (grep /$nomficC/,@listerep){
      $corrl =~ s/NOMFICC/$nomficC/;
      $texte =~ s/TEXTECORR/$corrl/;
    }
    else{
      $corrl ='';
      $texte =~ s/TEXTECORR/$corrl/;
    }
    #print " coucou  $texte \n";
      #par sécurité en phase de test: création d'un fichier AAA au lieu de A
    #$nomficA =~ s/^A/AAA/;
      #ouverture d'un fichier
    open(FIC,">",$nomficA) or die 'impossible de créer le fichier A';
    open(LOG,">>","maniptextes.LOG") or die 'impossible d\'ouvrir le journal';
    print FIC $texte;
    print LOG "création de $nomficA \n";
    close(FIC);   
    #création du pdf
    $etat = system("pdflatex --interaction nonstopmode $nomficA >/dev/null");
    #`pdflatex $nomficA`;
    close(LOG);
    `rm *.log *.aux`;
  }
}
#liste le répertoire courant dans une variable
@listerep = `ls`;
$nbtextes = @listerep;
print "\n Nombre de fichiers dans le répertoire : $nbtextes \n";
@listeA = grep /^A(.+)tex$/,@listerep;
$nbtextesA = @listeA;
print "Nombre de textes A : $nbtextesA \n";
foreach $nomficA (sort @listeA){
  chop($nomficA);
  $nomficpdf = $nomficA;
  $nomficpdf =~ s/tex/pdf/;
  (grep /$nomficpdf/,@listerep) or (print "$nomficpdf n'existe pas ! \n"); 
}

cp $1 backup.dat
sed "s/\\\begin{equation}/\$\$/g" $1 | sed "s/\\\end{equation}/\$\$/g" |
sed "s/\\\begin{itemize}//g" | sed "s/\\\end{itemize}//g" |
sed "s/\\\begin{enumerate}//g" | sed "s/\\\end{enumerate}//g" | 
sed "s/\\\item/- /g" |  
sed "s/\\\subsection{/## /g" |  sed "s/}//g" > tt.dat

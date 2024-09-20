export PATH=.:/bin:$PATH
export LD_LIBRARY_PATH=.:/bin:$LD_LIBRARY_PATH

#
export LC_NUMERIC=pt_BR.utf8
export LC_CTYPE=pt_BR.UTF-8

vArqFinal=energia.a.csv
vTmp=/tmp/tmp.gera.csv.$$
touch $vTmp
trap "rm -f $vTmp* ; exit " 0 1 2 

vOptApaga=0
vOptTXT=0
vOptCSV=0
vOptUsina=0
vOptADDUsina=0
while getopts :rtcua vOpcao
do
  case $vOpcao in 
    r) vOptApaga=1   ;;
    t) vOptTXT=1     ;;
    c) vOptCSV=1     ;;
    u) vOptUsina=1   ;;
    a) vOptADDUsina=1;;
  esac
done

if [ $# -eq 0 ] ; then 
  vOptApaga=0
  vOptTXT=1
  vOptCSV=1
  vOptUsina=1
  vOptADDUsina=1
fi 

shift $(( OPTIND -1))
vParam="$*"

_apaga(){
  echo "# Apagando TXTs..."
  find 20* -name '*.txt' -exec rm {} \; 
  }

_txt() { 
  echo "# Gerando TXTs..."
  find 20* -name '*.pdf'  > $vTmp.pdfs
  if [ $# -gt 0 ] ; then 
    cat $vTmp.pdfs | grep -E "$*" > $vTmp.pdfs2
    mv $vTmp.pdfs2 $vTmp.pdfs
  fi 
  echo "  $(cat $vTmp.pdfs | wc -l) PDFs"
  while read vArq
  do 
    [[ $vArq =~ .*88800.*pdf ]] && continue 
    vD=$(dirname "$vArq")
    vA=$(basename "$vArq" .pdf).txt
    vB=$(basename "$vArq" .pdf).tmp
    [ -f "$vD/$vA" ] && continue
    echo "$vArq"
    pdftotext -layout -enc Latin1 "$vArq"
    iconv -f Latin1 -t ascii//translit -- "$vD/$vA" |  tr -d '['\''^~´`"]' >  "$vD/$vB"
    mv -f "$vD/$vB" "$vD/$vA"
  done  < $vTmp.pdfs
  echo
}

_csv(){
  echo 
  echo "# Extraindo dados..."
  find 20* -name '*.txt'  > $vTmp.txts
  echo "  $(cat $vTmp.txts | wc -l ) TXTs"

  echo "arquivo;endereço;PN;INSTALAÇÃO;Mes;Total a Pagar;Dt Vencimento;Data da Leitura;Descricao;Mes;kWh;Tarifa c/ trib.;Total consumo;Credito" > $vArqFinal
  while read vArquivo
  do
    [ $# -ne 0 ] && [[ ! $vArquivo =~ $1 ]] && continue
    echo "# $vArquivo"
    #iconv -f Latin1 -t ascii//translit "$vArquivo"  |\
    cat "$vArquivo" |\
    grep -Ev "^ *$" |\
    sed -e 's/^ *//g' |\
    gawk  -v IGNORECASE=1 --use-lc-numeric -v vArq="$vArquivo" '
      function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
      function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
      function trim(s) { return rtrim(ltrim(s)); }
      function trata_pct(p) {
        return gensub(/\.0+%/,"","g",p)
      }
      function trata_num(p) {
       if ( p ~ /-$/ ) { 
          gsub(/-$/,"",p) ; 
          p="-"p
        } 
       if ( p !~ /,/ ) p=""
       gsub(/0+$/,"",p)
       gsub(/,$/,",0",p)
       return trim(p)
      }
      function trata_kwh(p){
        if ( p ~ /[a-zA-Z]/) 
          return 0
        else 
          return gensub(/[,.]000$/,"","g",p)
      }
      function trata_data(p) {
        if ( p !~ /..\/[0-9]{2,4}/ ) p=vMesCab
        return vMesCab
      }
      /^ASSOCIACAO/ { 
        vC+=1 ; 
        if ( vC == 2 ) { 
          getline 
          vEnd=trim(substr($0,1,100))
        }
      }
      # ATENCAO: importante este bloco estar antes do bloco de INSTALACAO
      vPN=="" && /SEU CODIGO/ { 
        getline 
        # double check
        if ( ! /INSTALACAO/  && NF >=5 ) { 
          x=NF    ; vTotPagar=trata_num($x)
          x=NF-1  ; vVenc=$x
          x=NF-2  ; vMesCab=$x
          x=NF-3  ; vInstal=$x
          # print "# DEBUG - Inst: ",vInstal" : "$0
          x=NF-4  ; vPN=$x  ;  
        }
      }            
      function _capt(){
#        print "# DEBUG - capt"++z": vMesCab="vMesCab" : vVenc="vVenc" : vTot="vTotPagar" : vInstal="vInstal
        if ( vMesCab   !~ /^[A-Z]{3,4}\/[0-9]{4}$/ && $0 ~ /[A-Z]{3,4}\/[0-9]{4}/ ) vMesCab=gensub(/.*([A-Z]{3,4}\/[0-9]{4}).*/,"\\1","g")
        if ( vVenc     !~ /^..\/..\/....$/         && $0 ~ /..\/..\/..../         ) vVenc=gensub(/.*(..\/..\/....).*/          ,"\\1","g")
        if ( vTotPagar !~ /^[0-9,.]+$/             && $NF ~ /[0-9,.]+/            ) vTotPagar=gensub(/.*([0-9,.]\+).*/         ,"\\1","g",$NF)
        if ( vInstal   !~ /^400[0-9]{7}$/          && $0 ~ /400[0-9]{7}/          ) vInstal=gensub(/.*(400[0-9]{7}).*/         ,"\\1","g")
        vTotPagar=trata_num(vTotPagar)
#        print "# DEBUG - capt"++z": "$0
#        print "# DEBUG - capt"++z": vMesCab="vMesCab" : vVenc="vVenc" : vTot="vTotPagar" : vInstal="vInstal
      }

      /INSTALACAO/ && $NF == "INSTALACAO" { 
        x=NF-1
        vPN=$x

        getline 
          # tratamento para alguns pdfs que a instalacoa pula pra linha de baixo..
          if ( vPN !~ /[0-9]{9}/ ) {
            vPN=$1
            # print "# DEBUG - CORRECAO PN: ",$0
          }
        _capt()
        getline 
        _capt()
#          vVenc=$2
#          vTotPagar=trata_num($3)
#          $0=substr($0,match($0,/...\/[0-9]{4}/))
#          vMesCab=$1
#          vVenc=$2
#          vTotPagar=trata_num($3)
#        getline 
#          vInstal=$NF
#          # print "# DEBUG - Inst2: ",vInstal" : "vVenc" : "vMesCab" : "vTotPagar
      }

# 
# vA= Descricao
# vA= Mes
# vA= kWh
# vA= Tarifa c/ trib
# vA= Total Consumo
# vA= Credito
#

      /^060[0-9] .*Band/ { 
        i+=1
        # esquema para pegar posicao do 2o campo, que sempre é MES/YY
          vDesc=$0 ; 
          gsub(/...\/[0-9]{2} .*/,"",vDesc) ; 
          idx=length(vDesc)
          vDesc=trim(vDesc)
          $0=substr($0,idx)

        vA[i]=gensub(/  */," ","g",vDesc)
        vMesLin=trata_data($1)
        vA[i]=vA[i]";"vMesLin # mes 
        vValTot=trata_num($2) # valor total       # 591,76
        vCredito=""
        if ( vValTot < 0 ) { vCredito=vValTot ; vValTot="" }
        vA[i]=vA[i]";;;"vValTot";"vCredito
        next 
      }     

      /^060[0-9] / { 
        i+=1
        # esquema para pegar posicao do 2o campo, que sempre é MES/YY
          vDesc=$0 ; 
          gsub(/...\/[0-9]{2} .*/,"",vDesc) ; 
          idx=length(vDesc)
          vDesc=trim(vDesc)
          $0=substr($0,idx)

        vA[i]=gensub(/  */," ","g",vDesc)
        vMesLin=trata_data($1)
        # print "# DEBUG : ",VMesLin,vMesCab,"::",$0
        vA[i]=vA[i]";"vMesLin # mes 
        vA_Mes[i]=vMesLin
        vA[i]=vA[i]";"trata_kwh($2) # kWh faturada      # 1.520,000
        vA[i]=vA[i]";"$4 # tarif.com.tributos # 0,38931579
        vValTot=trata_num($5) # valor total       # 591,76
        vCredito=""
        if ( vValTot < 0 ) { vCredito=vValTot ; vValTot="" }
        vA[i]=vA[i]";"vValTot";"vCredito
#        print "# DEBUG"++z" : ",vValTot,$2
#        print "# DEBUG"++z" : ",$0
      } 

      # 
      # Estas descricoes nao tem o mes/ano de referencia para diferenciar a descricao...
      /^0899 / { 
        i+=1
          vDesc=$0 ; 
          # Pesquisa por um valor.. e considera descricao o que vier antes...
          idx=match(vDesc,/[0-9]+,[0-9]+/) ; 
          vDesc=substr(vDesc,0,idx-1)
          vDesc=trim(vDesc)
          $0=substr($0,idx)
          $0=vMesCab" "$0

        vA[i]=gensub(/  */," ","g",vDesc)
        vMesLin=trata_data($1)
        vA[i]=vA[i]";"vMesLin # mes 
        vValTot=trata_num($2) # valor total       # 591,76
        vCredito=""
        if ( vDesc ~ /Ressar/ && vValTot > 0 ) vValTot=vValTot * -1
        if ( vValTot < 0 ) { vCredito=vValTot ; vValTot="" }
        vA[i]=vA[i]";;;"vValTot";"vCredito
        next 
      }     
      # Linhas de contas de meses anteriores, 
      # itens que tem credito ou devolucao
      # tarifas , juros e multas
       /^(0699|080[1-9]|0999) / { 
        i+=1
        # esquema para pegar posicao do 2o campo, que sempre é MES/YY
          vDesc=$0 ; 
          gsub(/...\/[0-9]{2} .*/,"",vDesc) ; 
          idx=length(vDesc)
          vDesc=trim(vDesc)
          $0=substr($0,idx)

        vA[i]=gensub(/  */," ","g",vDesc)
        vMesLin=trata_data($1)
        vA[i]=vA[i]";"vMesLin # mes 
        vValTot=trata_num($2) # valor total       # 591,76
        vCredito=""
        if ( vDesc ~ /^0999|Ressar|Credito|Devol/ && vValTot > 0 ) vValTot=vValTot * -1
        if ( vValTot < 0 ) { vCredito=vValTot ; vValTot="" }
        vA[i]=vA[i]";;;"vValTot";"vCredito
        next 
      }     
      /Injetada/ && toupper($(NF-4)) == "INJETADA" { 
        idx=index($0,"Injetada") 
        $0=substr($0,idx)
        vInjetada=$NF
        i+=1
        vA[i]="9991 Energia Injetada"
        vA[i]=vA[i]";"vMesCab";"trata_kwh(vInjetada)";;;"
        next 
      } 

      /^ *Saldo em Energia/ { 
        i+=1
        vA[i]="9992 Saldo em Energia da Instalacao"
        $0=substr($0,index($0,"Convencional"))
        vkWh=trata_num($2)
        vA[i]=vA[i]";"vMesCab";"vkWh";;;"
        next 
      } 
      /^ *Saldo a expirar/ { 
        i+=1
        vA[i]="9993 Saldo a Expirar"
        $0=substr($0,index($0,"mes:"))
        vkWh=trata_num($2)
        vA[i]=vA[i]";"vMesCab";"vkWh";;;"
        next 
      } 
      /^ *Participacao.*geracao/ { 
        i+=1
        vA[i]="9994 Participacao na geracao"
        # print "# DEBUG"++z" : ",$2
        $0=substr($0,index($0,"geracao"))
        vkWh=trata_pct($2)
        # print "# DEBUG"++z" $2: ",$2 ,"vkWh:" vkWh , "gen:"gensub(/\.0+%/,"","g",$2)
        vA[i]=vA[i]";"vMesCab";"vkWh";;;"
        next 
      } 
      function _pega_data_leitura(){
        if ( $0 ~ /[0-9]{2}\/[0-9]{2}\/[0-9]{4}/  && vDataLeitura !~ /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/  )
          vDataLeitura=gensub(/.*([0-9]{2}\/[0-9]{2}\/[0-9]{4}).*([0-9]{2}\/[0-9]{2}\/[0-9]{4}).*/,"\\1","g") 
      }
      /Leitura.*Leitura/ && vDataLeitura !~ /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/ { 
        getline ; 
        _pega_data_leitura()
        getline ; 
        _pega_data_leitura()
        getline ; 
        _pega_data_leitura()
        # print "# DEBUG "++z" - Leitura:" vDataLeitura " : "$0
        next 
      }

      END { 
        if ( vPN !~ /[0-9]{9}/ ) vPN=710288694
        if ( vInstal !~ /^400[0-9]{7}$/ ) { 
          # print "# DEBUG - Inst3: ",vInstal" : "vArq
          vInstal=gensub(/.*(400[0-9]{7}).*/,"\\1","g",vArq)
        } 
        if (vDataLeitura == "") { 
          "awk -F \";\" -v vMes=\""vMesCab"\" '\''$10 == vMes { print $8}'\'' energia.csv  | sort -u  | tail -n1" | getline vDataLeitura
        }
        OFS=";"
        for (i in vA) { 
          if ( vMesCab !~ /[A-Z]{3}\/[0-9]{4}/ ) { vMesCab=vA_Mes[i] ; gsub(/\//,"/20",vMesCab) ; } 
          print vArq,vEnd,vPN,vInstal,vMesCab,vTotPagar,vVenc,vDataLeitura,vA[i]
        }

      }
    ' | sort -u >> $vArqFinal
  done < $vTmp.txts
}

_c(){ 
  # echo " 1      ; 2        ; 3  ; 4          ; 5   ; 6             ; 7             ; 8         ; 9   ; 10  ; 11              ; 12         ; 13  
  # echo "arquivo ; endereço ; PN ; INSTALAÇÃO ; Mes ; Total a Pagar ; Dt Vencimento ; Descricao ; Mes ; kWh ; Tarifa c/ trib. ; Total consumo; Credito "
  {
  echo "Mes;Total a Pagar; Total consumo;credito"
  cat energia2.csv |\
    awk --use-lc-numeric -F";"  '
   { 
     if  ( vLinha[$4,$5] != "OK" )  { 
       vLinha[$4,$5]="OK"
       gsub(/\./,"",$6 )
       if ( $6 == "") $6=0
       #print "#DEBUG: "$4,$5,$6,vLinhaTotPagar[$5]
       vLinhaTotPagar[$5]+=$6
     }
     if ( $8 ~ /Energia.*Fornecida|Adic.*Band/ ) { 
        if ( $12 == "") $12=0
        vLinhaCusto[$5]+=$12
      }
     if ( $13 == "") $13=0
     vLinhaCredito[$5]+=$13
   } 
   END { 
     for( x in vLinhaTotPagar) { 
       OFS=";"
       print x,vLinhaTotPagar[x], vLinhaCusto[x], vLinhaCredito[x]
     }
   }
   ' 
   } > energia_sumarizado2.csv
}

_usina(){
  sed -e 's///g' 103*.csv |\
  cut -f1,14 -d\;  |\
  iconv -f utf8 -t ascii//translit//ignore |\
  awk -F";" '
   vD != gensub(/^([^ ]*).*/,"\\1","g",$1) && vLast != "" {
     print vLast
     vD=gensub(/^([^ ]*).*/,"\\1","g",$1) ; 
     vPrev=gensub(/,00/,"","g",$2)+0
   } 
   /Data/ { 
     if ( NR >2 ) next 
     $0=$0";Gerado no dia;INSTALACAO"
     print
     next
    }
   { 
     vNum=gensub(/,00/,"","g",$2)+0
     vDiff=(vNum - vPrev)
     # print "#DEBUG ",$2,vNum,"prev="vPrev,vDiff
     vLast=""
     if ( vNum != "" && vNum > 0 )  vLast=$0";"vDiff";4000173061"
   } 
   END {print vLast }' > usina.csv
}

_add_usina(){
  > energia.csv
  while read vLinha
  do
    printf "."
    vDataLeitura=$(echo "$vLinha" | cut -f8 -d\;)
    #if [[ $vDataLeitura =~ [0-9]{2}\/[0-9]{2}\/[0-9]{4} ]] && \
    if [ ! -z "$vDataLeitura" -a "$vDataLeitura" != "$vDataLeituraAnt" ] ; then 
      # vE=$(awk -v D="$vDataLeitura" -F\; '
      #     $1 ~ D { vE=$2 }
      #     END { print gensub(/,0+/,"","g",vE) } 
      #   ' usina.csv
      # ) 
       vE=$( grep "^$vDataLeitura" usina.csv | cut -f2 -d\; | tail -n1 | sed -e 's/,0*$//g')
       if  [ ! -z "$vE" ] ; then 
         vEnergia=$vE
       else
         vE=$( grep -A 10 "^../${vDataLeitura#??/}" usina.csv |\
           awk -v vDL="$vDataLeitura" -F ";" '
             { split($1,vD," ")
               split(vD[1],vArr,"/");
               split(vDL,vArrL,"/"); 
               vI=int(vArr[3]vArr[2]vArr[1])
               vIL=int(vArrL[3]vArrL[2]vArrL[1])
               if ( vIL < vI ) { print $2 ; exit }
             }'| sed -e 's/,0*$//g'
             )
         if  [ ! -z "$vE" ] ; then 
           vEnergia=$vE
         fi
       fi 
    fi 
    #echo "$vDataLeitura;$vEnergia"
    {
    if [[ $vLinha =~ ^arquivo ]]; then 
      echo "$vLinha;Geracao Usina"
    else
      echo "$vLinha;$vEnergia"
    fi 
    } >> energia.csv
    vDataLeituraAnt=$vDataLeitura 
  done < $vArqFinal

  # awk -F";" '
  # {
  #   vDataLeitura=$8
  #   if (vDataLeitura ~ /[0-9]{2}\/[0-9]{2}\/[0-9]{4}/ ) { 
  #   
  #   } 
  # }
  # ' energia.cav
}

[ $vOptApaga    -eq 1 ] && _apaga
[ $vOptTXT      -eq 1 ] && _txt "$vParam"
[ $vOptCSV      -eq 1 ] && _csv "$vParam"
[ $vOptUsina    -eq 1 ] && _usina
[ $vOptADDUsina -eq 1 ] && _add_usina

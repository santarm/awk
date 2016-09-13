BEGIN { FS = "|" }
 $7 ~ /e/ {deact += 1} 
 $7 ~ /a/ {act += 1} 
 $7 ~ /a/ && /.96$/ { n96 += 1 }
 $7 ~ /a/ && /.97$/ { n97 += 1 }
 $7 ~ /a/ && /.98$/ { n98 += 1 }
 $7 ~ /a/ && /.99$/ { n99 += 1 }
 
END{print "\nPENDING Inactive:                   ",deact, 
          "\nPENDING Active:                     ", act,
          "\nPENDING Active Created in 1996:     ", n96,
          "\nPENDING Active Created in 1997:     ", n97,
          "\nPENDING Active Created in 1998:     ", n98,
          "\nPENDING Active Created in 1999:     ", n99 }


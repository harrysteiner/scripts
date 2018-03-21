alias ll='ls -lhA'
fproc(){
	ps -aux | grep -v grep | grep ".*$1.*"
}

# Diese Zeile verhindert, dass mit !, !!, !? ausgefuerhrte commandos aus der bash-Historie direkt ausgefuehrt werden
# sondern erst auf der kommandozeile landen.
shopt -s histverify 

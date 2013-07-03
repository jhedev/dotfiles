if [ $(uname -s) == "Darwin" ]; then
    SED="gsed";
else
	SED="sed";
fi

function dict() {
 w3m -dump "http://pocket.dict.cc?s=\"$*\"" | $SED -r -e '/^([ ]{5,}.*)$/d' -e '1,2d' -e '/^$/d' -e '/^\[/d'
}

function leo() {
 w3m -dump "http://pda.leo.org/?search=\"$*\"" | $SED -n -e :a -e '1,9!{P;N;D;};N;ba' | sed -e '1,14d'
}

function opdf() {
    evince $1 &>/dev/null &
}

dirsize ()
{
   du -shx * .[a-zA-Z0-9_]* 2> /dev/null | \
   egrep '^ *[0-9.]*[MG]' | sort -n > /tmp/list
   egrep '^ *[0-9.]*M' /tmp/list
   egrep '^ *[0-9.]*G' /tmp/list
   rm /tmp/list
}

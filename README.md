# Komplex_Checker
Komplex OS X Trojan checker

![](https://www.paloaltonetworks.com/etc/clientlibs/pan/img/logo-blue-medium.png)

Link to <a href="http://researchcenter.paloaltonetworks.com/2016/09/unit42-sofacys-komplex-os-x-trojan/">PaloAlto research blog</a>

### USAGE

~~~bash
$ git clone https://github.com/joanbono/Komplex_Checker.git
$ cd Komplex_Checker/src/
$ chmod +x Komplex_Checker.sh
$ ./Komplex_Checker.sh
~~~

OR

~~~bash
$ git clone https://github.com/joanbono/Komplex_Checker.git
$ cd Komplex_Checker/src/
$ bash Komplex_Checker.sh
~~~

The Komplex_Checker looks for known files created by the trojan:
~~~
/Users/Shared/.local/kextd
/Users/Shared/com.apple.updates.plist
/Users/Shared/start.sh
~~~
And asks the user for its deletion.

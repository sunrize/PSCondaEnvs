Forked from Liquidmantis (https://github.com/Liquidmantis/PSCondaEnvs)

PSCondaEnvs
===========

Drop in replacement scripts that replicate Conda's activate/deactivate functions in Powershell.


###Installation:
Simply copy activate.ps1 and deactivate.ps1 into your Anaconda\Scripts directory.  You may need to remove or rename the existing BAT files but the PS1 versions seem to get precedence.
(To circumvent the remoteSigned restriction of the Power-Shell you can simply copy the code into new files, rename them respectively and place them in the mentioned folder)

###Credit:
* Original Conda batch files.
* https://bitbucket.org/guillermooo/virtualenvwrapper-powershell

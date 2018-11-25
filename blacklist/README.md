![logo](https://raw.githubusercontent.com/anudeepND/blacklist/master/images/logo.png) 
## Host file to block trackers and advertisements
          
A list of adserving and tracking sites maintained by me. This list will be updated frequently.   
You can request additional domains or report exsisting domains via <a href="https://github.com/anudeepND/blacklist/issues">Issues</a> tab.
   
*** 

### Description
      
This repo contains two files, *`CoinMiner.txt`* (*no longer maintained*) and *`adservers.txt`*.          
To block cryptojacking sites, add *`CoinMiner.txt`* to your host file or blocklist.      
To block ads and trackers, add *`adservers.txt`* to your host file or blocklist.           
To block all domains related to facebook.com, add *`facebook.txt`* to your host file or blocklist.
***
 
### What is a host file?                 
       
 A hosts file, named hosts, is a plain-text file used by all operating systems to map hostnames to IP addresses. Host file preferred over DNS so  if a domain name is resolved by the hosts file, the request never leaves your computer.
       
***
           
### Location of your hosts file               
       
***Mac OS X, Android, Linux:*** `/etc/hosts`          
***Winodws 7, 8.0, 8.1, 10:*** `C:\WINDOWS\system32\drivers\etc\hosts`         
***Windows 2000:*** `C:\WINNT\system32\drivers\etc\hosts`
       
 ***
       
### Usage            
           
***Windows:*** Windows users can use this host file with [Hostman](http://www.abelhadigital.com/hostsman/), a software to manage host file.       
     
***Android:*** For non-rooted devices, this host can be used with [DNS66](https://f-droid.org/en/packages/org.jak_linux.dns66/), a free and open-source ad-blocker.     
     
For rooted device, this host file can be used with [AdAway](https://f-droid.org/en/packages/org.adaway/), a free and open-source ad-blocker for Android.    
     
***Linux:*** An open-source host file manager called [hBlock](https://github.com/hectorm/hBlock).   
       
***Mac OS:*** This host file can be used with [gasmask](https://github.com/2ndalpha/gasmask).    
      
*If you are using Pi-Hole, you can add this to your blocklist.*      
```
https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt
https://raw.githubusercontent.com/anudeepND/blacklist/master/CoinMiner.txt
https://raw.githubusercontent.com/anudeepND/blacklist/master/facebook.txt
```
      
***    
       
### How do I determine an ad domain?     
   
***DNSthingy Assistant***      
        
<a href="https://chrome.google.com/webstore/detail/dnsthingy-assistant/fdmpekabnlekabjlimjkfmdjajnddgpc">This browser extension</a> will list all of the domains that are queried when a web page is loaded. You can often look at the list of domains and cherry pick the ones that appear to be ad-serving domains.


<p align="center">
  <img src="https://raw.githubusercontent.com/anudeepND/blacklist/master/images/img1.jpeg">
</p>
 
***Using inbuilt Developer tool***         
         
For Chrome ctrl+shift+I will land you in Developer tools menu.

<p align="center">
  <img src="https://raw.githubusercontent.com/anudeepND/blacklist/master/images/img2.jpeg">
</p>
     
***Using an Android app*** 
     
[Net Guard](https://play.google.com/store/apps/details?id=eu.faircode.netguard) is an Android app that can be used to monitor any specific apps, works on unrooted devices too.   
     
<p align="center">
  <img width="460" height="380" src="https://raw.githubusercontent.com/anudeepND/blacklist/master/images/img3.jpeg">
</p>
     
***
     
### Licence      
```
MIT License

Copyright (c) 2018 Anudeep ND <anudeep@protonmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

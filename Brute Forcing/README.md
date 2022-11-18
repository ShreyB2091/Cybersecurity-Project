# WEEK 4 -> Tools for Web Exploitation

* We are programmers, we just get tired of doing the same things manually over and over again. 
* So whenever you visit unknown website, you do not know what all is hidden in that website. 
* To do a thorough examination, you search for all different pages in the website, any hidden directory or subdomains. 
* Instead of manually searching for these things without any knowledge, you try to automate these tasks for quick results.

Basic technique for searching a webpage is ```brute-forcing```. You just try all different possibilities and check what responses you are getting. There are different tools available on the internet, which helps you automate these tasks.

* Try this room - https://tryhackme.com/room/contentdiscovery

By completing this room you will appreciate that how much important automating the tasks is. This room first makes you explore a website by manually discovering things and at the end introduces to different tools.

We will be using ```ffuf``` for our project. 

## FFUF

* ```ffuf``` is a fest web fuzzer written in Go that allows typical directory discovery, virtual host discovery (without DNS records) and GET and POST parameter fuzzing.
* ```Fuzzing``` is the automated process of sending random data to an application to find misconfigurations, unexpected behavior, or hidden parameters.

To learn in depth about ffuf, refer this - https://codingo.io/tools/ffuf/bounty/2020/09/17/everything-you-need-to-know-about-ffuf.html

## Wordlists

* The most famous wordlist for brute-forcing is the ```SECLIST```. 

* Clone this github repo where you will be doing all you CTFS. https://github.com/danielmiessler/SecLists 

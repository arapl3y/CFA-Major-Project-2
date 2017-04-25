## Secret Source 

[![Build Status](https://travis-ci.org/arapl3y/CFA-Major-Project-2.svg?branch=master)](https://travis-ci.org/arapl3y/CFA-Major-Project-2) [![Code Climate](https://codeclimate.com/github/arapl3y/CFA-Major-Project-2/badges/gpa.svg)](https://codeclimate.com/github/arapl3y/CFA-Major-Project-2)

<b>Live</b> at: https://secretsourcecfa.herokuapp.com, please use [Tor](https://www.torproject.org) or [Brave](https://brave.com) browsers for your own security.

### Background

Coder Factory Academy Major Project 2. 
Build a complete two-way application to impress either Barack Obama (politics), <b>Rupert Murdoch (journalism)</b> or Bill & Melinda Gates (social causes and global development)

### Summary

For my application, Secret Source, I decided to try and tackle an issue in the field of journalism. My first instinct wasn't to create a project to impress Rupert Murdoch, however after remembering about the News International phone hacking scandal I decided there was an opportunity to make something a little left of centre and interesting. I thought about the pressure on journalists to always come up with scoops and ground-breaking stories and eventually settled on an idea that eased the process of linking journalists and informants. Some of the biggest news stories in recent memory have come from people on the ground in conflicted territory or on the inside of large corporaations/government organisations providing first-hand accounts and/or disclosures of confidential information. My application provides a platform through which Informants and Journalists can connect (while staying anonymous if desired) to help encourage the spread of information and transparency. This is achieved through a request/approval process, within which journalists see a piece of information on the source board they find intriguing and send a request to download it and gain exclusive rights to its publication. The informant can see a list of the journalists who have requested to use their information and can then approve one for download. Throughout this process the journalists and informants can communicate through an inbuilt messaging system if needed. The app is free for Informants and Journalists currently have two tiers of membership, basic and premium (I don't think Mr. Murdoch would be happy with a non-profit platform). To request/download documents and to message informants the premium membership is required. This application provides a two way relationship in which journalists get a centralised, easily navigable base of informants and informants get a secure, accessible pipeline to share information. For my second iteration of this project I'd like to go fully corporatised and implement an Auction system in which journalists bid on information with the money going to the informant. This raises issues of verification and motive to inform, but would still be an interesting exercise.

### Installation for local machines

```sh
$ git clone https://github.com/arapl3y/CFA-Major-Project-2.git
$ cd ../CFA-Major-Project-2/
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails server
```
Then navigate to http://localhost:3000 in the browser.


<h1 align="center">
<a href="http://imgur.com/QIUMAND"><img src="http://i.imgur.com/QIUMAND.png" width="100" height="100" /></a>
</h1>
<h1 align="center">
Secret Source 
</h1>



[![Build Status](https://travis-ci.org/arapl3y/CFA-Major-Project-2.svg?branch=master)](https://travis-ci.org/arapl3y/CFA-Major-Project-2) [![Code Climate](https://codeclimate.com/github/arapl3y/CFA-Major-Project-2/badges/gpa.svg)](https://codeclimate.com/github/arapl3y/CFA-Major-Project-2)

Powered by Heroku on: https://secretsourcecfa.herokuapp.com, please use [Tor](https://www.torproject.org) or [Brave](https://brave.com) browsers for your own security.


## Background

Coder Factory Academy Major Project 2. 
Build a complete two-way application to impress either Barack Obama (politics), <b>Rupert Murdoch (journalism)</b> or Bill & Melinda Gates (social causes and global development)

## Summary

For my application, Secret Source, I decided to try and tackle an issue in the field of journalism. My first instinct wasn't to create a project to impress Rupert Murdoch, however after remembering about the News International phone hacking scandal I decided there was an opportunity to make something a little left of centre and interesting. I thought about the pressure on journalists to always come up with scoops and ground-breaking stories and eventually settled on an idea that eased the process of linking journalists and informants. Some of the biggest news stories in recent memory have come from people on the ground in conflicted territory or on the inside of large corporaations/government organisations providing first-hand accounts and/or disclosures of confidential information. My application provides a platform through which Informants and Journalists can connect (while staying anonymous if desired) to help encourage the spread of information and transparency. This is achieved through a request/approval process, within which journalists see a piece of information on the source board they find intriguing and send a request to download it and gain exclusive rights to its publication. The informant can see a list of the journalists who have requested to use their information and can then approve one for download. Throughout this process the journalists and informants can communicate through an inbuilt messaging system if needed. The app is free for Informants and Journalists currently have two tiers of membership, basic and premium (I don't think Mr. Murdoch would be happy with a non-profit platform). To request/download documents and to message informants the premium membership is required. This application provides a two way relationship in which journalists get a centralised, easily navigable base of informants and informants get a secure, accessible pipeline to share information. For my second iteration of this project I'd like to go fully corporatised and implement an Auction system in which journalists bid on information with the money going to the informant. This raises issues of verification and motive to inform, but would still be an interesting exercise.

## Installation for local machines

```sh
$ git clone https://github.com/arapl3y/CFA-Major-Project-2.git
$ cd ../CFA-Major-Project-2/
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails server
```
Then navigate to http://localhost:3000 in the browser.

## Design process

### Initial trello planning
<a href="http://imgur.com/VPItjt5"><img src="http://i.imgur.com/VPItjt5.png" width="400px" height="300px" /></a>
<a href="http://imgur.com/LmQey8j"><img src="http://i.imgur.com/LmQey8j.png" width="400px" height="300px" /></a>

### User journeys
<a href="http://imgur.com/a9vA5Pt"><img src="http://i.imgur.com/a9vA5Pt.jpg" width="300px" height="400px" /></a>

### Wireframes
<a href="http://imgur.com/772LQLU"><img src="http://i.imgur.com/772LQLU.jpg" width="300px" height="400px" /></a>

### ERD
<a href="http://imgur.com/C9VqBpT"><img src="http://i.imgur.com/C9VqBpT.jpg" width="300px" height="400px" /></a>

### SCHEMA PLANNING
<a href="http://imgur.com/32E5jma"><img src="http://i.imgur.com/32E5jma.jpg" width="300px" height="400px" /></a>

## Tools and Methodologies

I used Trello extensively when planning the project and separated the work load into two sprints. I integrated Travis CI and Codeclimate into my project to ensure code quality. I also used various linters while writing the code for my project such as ESLint and Rubocop. I used Git and Github voraciously and at the time of this writing I have 111 commits.

## Testing

I used RSpec, FactoryGirl and Faker to run initial, basic tests. I didn't spend as much time as I would have liked on testing but will continue working on this project after the due date and will try to incorporate integration testing with Capybara.

## Personal Highlights

I really enjoyed this project and feel like MVC and Rails have really started to sink in. Some of my personal highlights were implementing XHR/AJAX into the search form, using Stripe subscriptions for users and hosting all uploaded files on s3. 

## Conclusion

If you have time to check out the app, please get in touch and let me know what you think. I had a lot of fun designing and building it so any suggestions regards improvements and features are welcome!

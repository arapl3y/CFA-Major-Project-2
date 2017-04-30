<h1 align="center">
<a href="http://imgur.com/QIUMAND"><img src="http://i.imgur.com/QIUMAND.png" width="100" height="100" /></a>

Secret Source 
</h1>



[![Build Status](https://travis-ci.org/arapl3y/CFA-Major-Project-2.svg?branch=master)](https://travis-ci.org/arapl3y/CFA-Major-Project-2) [![Code Climate](https://codeclimate.com/github/arapl3y/CFA-Major-Project-2/badges/gpa.svg)](https://codeclimate.com/github/arapl3y/CFA-Major-Project-2)

Powered by Heroku at: https://secretsourcecfa.herokuapp.com, please use [Tor](https://www.torproject.org) or [Brave](https://brave.com) browsers for your own security.


## Background

Coder Factory Academy Fast Track Major Project #2. 
Build a complete two-way application to impress either Barack Obama (politics), <b>Rupert Murdoch (journalism)</b> or Bill & Melinda Gates (social causes and global development)

## Thought process

Some of my initial ideas were based around social causes and cultural preservation, and although I still quite like the ideas I had, it didn't feel very challenging or new. With that being said I decided to tackle an issue in the field of journalism and impress Rupert Murdoch. After a lot of deliberation I settled on my idea, [Secret Source](https://secretsourcecfa.herokuapp.com). It felt exciting to ignore my initial instincts and try and create something both ethically questionable and for an industry with which I have little experience. 

My early concept was heavily inspired by the [News International Phone-hacking scandal of 2011](http://www.bbc.com/news/uk-24894403). After re-reading about the trial I decided there was a good opportunity to make something lateral, and a little audacious. 

I wanted to make a two-way platform that connected Informants and Journalists. Through this platform, Informants would be able to sell information and data to the highest bidder. This information could be literally anything from high-impact corporate and governmental leaks to photos of celebrities going about their daily lives. At a base level this project wouldn't have been too difficult to create but once I started to consider all the adjoining features that would be necessary to minimise risk for the user, it started to get a little out of my technical ability. There were also a number of philosophical dilemmas that began to prop up, most prominent of which was money as an incentive for leaking and whistleblowing.

With a Trello board filled with big ideas amassed over a week, I started to embark on building the project and almost immediately became overwhelmed with fear and anxiety. I was attempting too much, one week was not enough time to learn and implement the array of technologies I had planned, from natural language analysis with machine learning to client-side encryption and decryption. 

After meeting up with my friend [Jaime](https://github.com/jpillora) and discussing my concerns he gave me some sound advice, "Simplify it. Find the core functions of your app, build them, then worry about the extra stuff". So I did, and that is largely what Secret Source turned out to be. A less audacious, but perhaps more useful web application that deals with information transfer in a DropBox-esque manner. Informants no longer sell information, they anonymously upload a preview to a board, and Journalists request it. The Informants then decide according to their own personal preference whom they allow to download and use the information. 

I'm happy with how Secret Source turned out, although a lot simpler in scope than initially intended, I understand everything that's happening under the hood and that's equal parts reassuring and satisfying. I also believe Rupert Murdoch would be atleast a little impressed because there's a monetary subscription involved for Journalists to get access to the full service.

As a little side note, while researching for similar projects, I found the Freedom of the Press' [SecureDrop](https://freedom.press/) service and Jimmy Wales' new project [Wikitribune](https://www.wikitribune.com/). Both these projects deal with the issues I found most interesting within my own and as I continue to flesh out additional features of Secret Source I'm sure they'll provide ample inspiration.

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

### Initial Trello planning
My initial Trello board, while convuluted and a little messy, shows my initial aspirations for the project. The MVP list provides a glimpse into the simplifcation process from which the finalised Trello board elaborates. This board also shows my attempt to incorporate Agile methodologies through two sprints.

<a href="http://imgur.com/VPItjt5"><img src="http://i.imgur.com/VPItjt5.png" width="400px" height="350px" /></a>
<a href="http://imgur.com/LmQey8j"><img src="http://i.imgur.com/LmQey8j.png" width="400px" height="350px" /></a>

### Finalised Trello planning
This finalised Trello board accompanies Secret Source in its current state properly. It outlines the features and technologies and is much simpler than the initial board. It also doesn't include any sprints because as my ideas changed and time began to melt away, I'm ashamed to say that Agile principles more or less went out the window.

<a href="http://imgur.com/cU6pfsn"><img src="http://i.imgur.com/cU6pfsn.png" width="850px" height="600px" /></a>

### User journeys

<a href="http://imgur.com/JIiBozy"><img src="http://i.imgur.com/JIiBozy.png" title="source: imgur.com" /></a>

### Wireframes
<a href="http://imgur.com/772LQLU"><img src="http://i.imgur.com/772LQLU.jpg" width="300px" height="400px" /></a>

### ERD
<a href="http://imgur.com/C9VqBpT"><img src="http://i.imgur.com/C9VqBpT.jpg" width="300px" height="400px" /></a>

## Testing

I used RSpec, FactoryGirl and Faker to run initial, basic tests. I didn't spend as much time as I would have liked on testing but will continue working on this project after the due date and will try to incorporate integration testing with Capybara.

## Personal Highlights

I really enjoyed this project and feel like MVC and Rails have started to sink in. Some of my personal highlights were implementing XHR/AJAX into the search form, using Stripe subscriptions for users and hosting all uploaded files on s3. 

## Conclusion

If you have time to check out the app, please get in touch and let me know what you think. I had a lot of fun designing and building it so any suggestions regarding improvements and features are welcome!


## Credits

Home page video from http://www.wedistill.io/videos/boxplant720
Flask icon from http://icons.iconarchive.com/icons/paomedia/small-n-flat/1024/flask-icon.png
All images uploaded at https://imgur.com

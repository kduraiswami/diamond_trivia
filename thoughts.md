Next:
Create the SiteMetric model with all kinds of int fields you can think of:
would be great to measure the amount of time it takes someone to take a test


The admin panel gem is going to be helpful in creating new decks and questions
The next thing to do will be create some kind of site metric object that captures information I care about and create a admin model version of it just to view. Hopefully this is possible and works with my expectations of this gem, I believe so. This allows for more flexibility in the front end, we can use js or whatever we need for it. 

I care about:
number of sign ups
number of tests started
number of tests finished
number of facebook shares
number of return users (based on devise and cookie accessing?)

I can create an object called "SiteMetrics" 
everytime one of these routes is hit I can say 
SiteMetrics.sign_up += 1
SiteMetrics.tests_started += 1
SiteMetrics.tests_completed += 1
SiteMetrics.site_shared += 1
SiteMetrics.return_user += 1

I can track this in my admin panel and create a new instance of SiteMetric every night with the total count for each and view it in the admin panel (hopefully) [even if manually]

SiteMetric.new(
sign_up => sign_up.all, 
tests_started => tests_started.all,
tests_completed => tests_completed.all,
site_shared => site_shared.all)

Matt Lao can think about the tests formats and creating the divs and backgrounds and stuff. I think it makes sense to do harry potter and GOT book questions first and share in reddit? I like that audience and high expecations for difficulty there. 

Game Plan:
Create the complete schema and assocations for all the models from the previous flashcards thing (no prob)
Create the controllers and routes needed to take tests and serve data (and add measurements everywhere we can)
Create the front end to display the content to the user (full screen movie experience)

Lets deploy often, even with just raw json, so we can get used to any weird things in the procfile or whatever
Lets always develop from the very back to the very front
Lets create a great architecture for the site quickly so we can get to the fun part of creating content





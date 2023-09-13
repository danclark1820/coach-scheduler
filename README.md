# README

# Up and Running

- Install Rails 7, Postgres 14.7, ruby 3.1.2
- git clone repo
- bundle install
- rails db:create
- rails db:migrate
- rails s

Visit `localhost:3000` to "view open slots". If you are not logged in or signed up it will request that you do. 

From there, you can book slots that do not already have a student assigned to them or click the link to "Add Slots as Coach" to add new slots. Currently this does not check the boolean `coach` field on Users to see if you are a coach, so go ahead and add a few slots to see them on the slots page. You add slots based on there start time and the slot is saved as a 2 hour `tstzrange` in Postgres.

There is also nothing stopping a coaching from booking a slot that they are the coach of, so you can test out booking a slot. Currently there is no JS behavior to remove booked slots, so you will need to refesh the page to see the slot be removed from the Slots page.

Lastly. We did not add the Review Model with rating 1-5 and a reference to a Slot. The ability to add Reviews would have been added to the coaches page based on previous slots that were booked, and displayed below those previous slots.

# Q0: Why are these two errors being thrown?
#did not run db migrate and did not create Pokemon model
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
# I am guessing the home controller randomly samples a starter pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
#capture is the name of the nickname we set for the capture function in our routes. we pass in the pokemon id parameter.

# Question 3: What would you name your own Pokemon?
#vorpiel

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

#I redirected to a trainer path because I needed to go back to the trainer, but I had to specify which trainer I needed to go to so I went back to the current trainer using the current_trainer parameter.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
#in our validations, i put a message for when there is an empty parameter and I assume this reads that message

# Give us feedback on the project and decal below!
#gud 10/10
# Extra credit: Link your Heroku deployed app

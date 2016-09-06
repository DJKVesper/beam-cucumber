# Beam Example Tests

### About
This is an example project to show automated acceptance testing

##### Currently Tests:
  * Logging In
  * The About Us page
  * Updating and saving stream Title and Game
  * Counting of Sparks

### Pre-requisites
1. ChromeDriver - https://sites.google.com/a/chromium.org/chromedriver/
  * This shouldn't be needed as I have included the executable and linked in within the hooks.rb
2. Ruby

### Detailed Instructions
This section should take you setting the project ready to run.
#### Environment Setup
1. Open up Terminal
*  Navigate to where you would like the project document folder
   ```
   $ cd Documents
   ```
   
* Clone the project to this folder
  ```
  $ git clone https://github.com/DJKVesper/beam-cucumber.git
  ```
  
* Once Cloned, it's best to set up the Ruby environment and gems, I use RVM and Bundler to do this. Please Follow the instructions in here to see what's best for you

  https://rvm.io/rvm/install

* Check to see which version of ruby you are using, if not already installed, install ruby 2.2.2
  ```
  $ rvm list
  $ rvm install ruby-2.2.2
  $ rvm use rubies 2.2.2
  ```
  
* Create and use gemset to use for the project
  ```
  $ rvm gemset create beam
  $ rvm gemset use beam
  ```
  
* Install Bundler
  ```
  $ gem install bundler
  ```
  
* Install the required gems for the project (These are contained in the GemFile)
  ```
  $ bundle install
  ```
  
* Go into the project folder and locate the `credentials.yml` file
  * This should be located in
  ```
  beam-cucumber/features/support/data
  ```
  
* Replace `your@email_address` and `your_password` with your own (or a test account)




### Run the project
   `$ cucumber`


### Example Video
An example of it running can be found here: https://youtu.be/R6P5FaRoUmg

Installing and Running Which? tests
================================

This is a short guide to installing and running the Which? tests.  

##Clone the tests

```bash
git clone git@github.com:DFEAGILEDEVOPS/MTC.git
```

##Install RVM stable with ruby

Follow installation instructions for installing RVM here:

https://rvm.io/rvm/install
 
Once rvm is installed, we need ruby version 2.4.0, to install use the following:
 `rvm install 2.4.0`
 
Use ruby version 2.4.0 and set it as your default:
 `rvm use 2.4.0 --default`

##Installing required gems

Go to the folder /reviews and run the following commands:

`gem install bundler` and then `bundle install`

These two commands will install all the gems that the tests need.

## Running the tests

#####Basic

To run the tests with the default options give the command below:

`rake features`
Note: if no `DRIVER` is passed in, the default driver will be used which is Chrome
  

If you want to run the tests in safari

`rake features DRIVER=safari`

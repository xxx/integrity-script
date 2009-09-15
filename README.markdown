# Integrity Script Notifier

With this notifier, Integrity will call a script/program/whatever,
passing 'pass' or 'fail' as an argument, along with other optional args.

This was originally conceived so the author could have Integrity talk to a script that talks to an Arduino.


# Installation

1. (sudo) gem install xxx-integrity-script --source http://gems.github.com

2. In your config.ru add:

        require "rubygems"
        require "integrity/notifier/script"

3. Hit your project in Integrity in a browser and you should be able to
   configure the notifier from there.

# Stuff

* There are security implications here in that this is purposely opening up an arbitrary code execution, and nothing is done to prevent bad things from happening right now. Be aware of that. Do not use this code on public CI servers.


# License

(The MIT License)

Copyright (c) 2009 - M. Dungan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

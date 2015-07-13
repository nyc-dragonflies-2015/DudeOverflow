Question.create(title: "Chrome App webview and touch scroll propagation",body: "I am in the happy position of replacing a Windows 8 Metro app with a Chrome packaged app. For the time being, it needs to mimic the look and feel of the Metro app. The main page consists of multiple webviews arranged horizontally with a large amount of horizontal scrolling possible. I have run into a problem when attempting to scroll horizontally using a touch device. If the scroll gesture starts on a webview, it is capturing the scroll event and preventing the host from scrolling. Overflow is hidden on all of the webviews. As they form the bulk of the content on the page then the valid scroll targets for the host are limited.

The webview contents are interactive so I can't get away with placing a transparent overlay over the scrollable content to capture the event, at least not without some way to propagate the clicks/touches through to the webviews themselves.

Any ideas on how this could be achieved?

Thanks for your help!",user_id: 1)

Question.create(title: "Knockout JS with Alternate DOM Backend",body: "I would like to implement a different non-HTML DOM backend for Knockout JS, likely within a non-browser type of environment (likely Node.js). Specifically, there exists an old, simple, static UI framework that I'd like to wrap with a DOM and then use with Knockout. I understand that Knockout itself is at least able to operate within Node.js without a browser environment (see here for example), but I'm wondering what I need to implement to create an entirely different DOM.

Is it something where I can override a few DOM manipulation classes with my own implementations?
Is there any notion of a DOM interface?
Or will I likely need to do something from the ground up with an alternate ko.applyBindings, etc.?
I'm just trying to figure out if I'm mostly crazy or completely crazy with regards to the scope of work.",user_id: 2)

Question.create(title: "SSL_read: cert already in hash table” when sending mail asynchronously",body: "I keep getting an OpenSSL::SSL::SSLError with a message of SSL_read: cert already in hash table when sending delayed e-mails out asynchronously with ActionMailer.

We use Sidekiq to send all of our e-mails out asynchronously. When posing this question as an issue in the Sidekiq GitHub repo, I was told that Sidekiq doesn't know anything about or manage the SSL connection.

Our app is hosted on Heroku, which is running OpenSSL 0.9.8k 25 Mar 2009.

We've seen this error several times in other jobs and have found that sometimes the jobs get processed, but sometimes they don't.

Is this an OpenSSL threading problem in which multiple Sidekiq threads are attempting to use the same SSL connection? Is a there a fix to this?

Here's the stacktrace we're getting:",user_id: 1)

Question.create(title: "How do I take a beer bong while I'm programming", body: "I have been trying so hard to keep my drinking schedule in line with this heavy workload, so for that reason I have had to sacrifice one for the other.  So dudes, my question is, how can I drink a whole beer through a funnel while I continue to program this project?", user_id: 1)

Question.create(title: "How to use column range chart with range and navigator in Highcharts?", body: "I have a requirement to plot run history of a task in Highcharts which should show tasks run as a horizontal bar. Recently I found out that inverted option is not supported in StockChart and navigator & rangeSelector is only available in StockChart.

So in order to achive the requirement I created something similar to this jsfiddle example (found somewhere while browsing don't remember the source) and ended up with this plunker link with help from my previous question, thanks to Pawel Fus

Updating question to avoid confusion

Intent of chart

Show only those tasks which ran in a particular date time range. In case there are too many runs say more than 10, then there should be a way to display only 10 tasks and yaxis should be scrollable to show other tasks. plunker link to the problem

Problem explanation of above plunker.

If you check the screenshot below from above plunker, the time range is from 12/12/2014 09:32:26 to 12/12/2014 10:32:26 and there are only 2 tasks that has run m_ARRAYV_SALES_ZIG1_CALL2_VOD__C_OB & m_ZIG2_HCP_MERGE_IB_CN. However I can see another task in between LILLY_C which did not even ran in this date time range. (In actual data there are more than 10 tasks that clutters this chart which does not even fall under this date time range)

Also if you notice at the bottom most right corner time shifted from 09:38 to 19:20. 19:20 is the end time for m_ZIG2_HCP_MERGE_IB_CN task. ", user_id: 2)

User.create(username: "Mike",password: "123")
User.create(username: "john", password: "123")
######## Data for Tags

Tag.create(name: "Javascript", description: "JavaScript (not to be confused with Java) is a dynamic, weakly-typed language typically used for client-side scripting. Use this tag for questions regarding ECMAScript and its various dialects/implementations (excluding ActionScript). Unless a tag for a framework/library is also included, a pure JavaScript answer is expected.")
Tag.create(name: "php", description: "PHP is a popular general-purpose weakly-typed scripting language that is especially suited for web development.")
Tag.create(name: "jQuery", description: "jQuery is a popular cross-browser JavaScript library that facilitates DOM (Document Object Model - HTML Structure) traversal, event handling, animations, and AJAX interactions by minimizing the discrepancies across browsers and providing an easy-to-use API.")
Tag.create(name: "Python", description: "Python is a dynamic and strongly typed programming language that is designed to emphasize usability. Two similar but incompatible versions of Python are in widespread use (2 and 3). Please consider mentioning the version and implementation that you are using when asking a question about Python.")
Tag.create(name: "html", description: "HTML (HyperText Markup Language) is the standard markup language used for structuring web pages and formatting content. The most recent revision to the HTML specification is HTML5.")
Tag.create(name: "ios", description: "iOS is a mobile operating system developed by Apple. It was originally named the iPhone OS, but was renamed to the iOS in June, 2009. The iOS currently runs on the iPhone, iPod touch, and iPad.")
Tag.create(name: "mysql", description: "MySQL is a freely available open source Relational Database Management System (RDBMS) that uses Structured Query Language (SQL). If your issue relates to MySQLi, use the MySQLi tag instead.")
Tag.create(name: "CSS", description: "CSS (Cascading Style Sheets) is a style sheet language used for describing the look and formatting of HTML (Hyper Text Markup Language) and XML (Extensible Markup Language) documents including (but not limited to) colors, layout, and fonts")
Tag.create(name: "Ruby on Rails", description: "Ruby on Rails is an open source full-stack web application framework written in Ruby. It follows the popular MVC framework model and is known for its \"convention over configuration\" approach to application development.")
Tag.create(name: "ruby", description: "Ruby is a multi-platform open-source dynamic object-oriented interpreted language created by Yukihiro Matsumoto (Matz) in 1993.")
Tag.create(name: "ajax", description: "AJAX (Asynchronous JavaScript and XML) is a technique for creating seamless interactive websites via asynchronous data exchange between client and server. AJAX facilitates communication with the server or partial page updates without a traditional page refresh.")
Tag.create(name: "json", description: "JSON (JavaScript Object Notation) is a 100% textual data interchange format originally inspired by JavaScript objects. It is widely used in RESTful web services. Parsers for JSON exist in nearly all languages, and libraries also exist which can deserialize JSON to native objects or serialize native objects to JSON.")
Tag.create(name: "angularjs", description: "AngularJS is an open-source JavaScript framework. Its goal is to augment browser-based applications with Model–View–Whatever(MV*) capability and reduce the amount of JavaScript needed to make web applications functional. These types of apps are also frequently known as Single-Page Applications.")
Tag.create(name: "database", description: "A database is an organized collection of data typically used to model certain situations. Use this tag if you have questions about designing a database. If it is about a particular database management system, (e.g., MySQL), please use that tag instead.")
Tag.create(name: "xcode", description: "Xcode is Apple's integrated development environment (IDE). USAGE NOTE: Use this tag only for questions about the Xcode IDE itself, and not for general Mac or iOS programming topics. Use [cocoa] for Mac programming questions, and [cocoa-touch] or [ios] for iOS programming questions.")
Tag.create(name: "xml", description: "Extensible Markup Language (XML) is a flexible, structured document format that defines human- and machine-readable encoding rules.")
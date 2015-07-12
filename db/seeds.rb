# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




Question.create(title: "hey does anyone know how to use a computer",body: "this is the greatest question in the world how do I do this I realy don't know how to do this it seems very impossible",user_id: 1)
Question.create(title: "Mike is the biggest crybaby in the world",body: "I mean common how do you write a question in ruby I don't know how",user_id: 1)
Question.create(title: "Dude this is Bro overflow not Stackoverflow",body: "only dudes work at dude overflow MICROAGRESSION!",user_id: 1)

User.create(username: "Mike",password: "123")

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
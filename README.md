# Rails Legacy App

> This Rails application has been intentionally broken!

In this lab you will dive into a mature rails application and attempt to fix some reported bugs. This lab will stretch your debugging skills and your ability to navigate a large rails project. It will also simulate a real-world scenario: contributing to an open source project.

We encourage you work together and tackle it in pairs.


### What's Publify?
You will be forking & cloning an open source (MIT LICENSE) blogging platform called [Publify](github.com/publify/publify).

Publify is a simple but full featured web publishing software. It's built
around a blogging engine and a small message system connected to Twitter.

Publify follows the principles of the IndieWeb, which are self hosting your Web
site, and Publish On your Own Site, Syndicate Everywhere.

Publify has been around since 2004 and is the oldest Ruby on Rails open source
project alive.

#### Features

- A classic multi user blogging engine
- Short messages with a Twitter connection
- Text filters (Markdown, Textile, SmartyPants, @mention to link, #hashtag to link)
- A widgets system and a plugin API
- Custom themes
- Advanced SEO capabilities
- Multilingual : Publify is (more or less) translated in English, French,
  German, Danish, Norwegian, Japanese, Hebrew, Simplified Chinese, Mexican
  Spanish, Italian, Lithuanian, Dutch, Polish, Romanian…

## Getting Started: Installing Publify Locally

To install Publify you need the following:

- [ ] Ruby >= 2.2.5
- [ ] Ruby On Rails ~> 4.2.5
- [ ] Postgresql
- [ ] ImageMagick

#### Setup Dependencies
First things first, **Fork** & Clone the Publify repo.

If necessary, update `rake` to `~> 11.1`.

``` bash
$ rake --version
# if rake version >= 11.1 then STOP, otherwise...
$ bundle update rake
```

If necessary, switch to ruby 2.2.5.

``` bash
$ ruby -v
# if ruby version >= 2.2.5 then STOP, otherwise...
$ rvm get 2.2.5
$ rvm use 2.2.5 --default # sets ruby-2.2.5 as global default
```

If necessary, install `imagemagick` (used by `mini_magick` gem).

```bash
$ which convert
# if you see path/to/bin/convert then STOP, otherwise...
$ brew update
$ brew link
$ brew install imagemagick # this can take a while!
```

Finally, you should be ready to `bundle`:

``` bash
$ bundle install
```

> Stop and check for **errors** in your bundle output. (A "warning" is not an error! Warnings are okay for now, but errors are bad!)

#### Setup Rails Application
Now we'll set up and seed our database:

```bash
$ rake db:setup
$ rake db:migrate
```

Launch you browser and access 127.0.0.1:3000.

```bash
$ rails server
```

Supply a blog `title` and `email`:

<img width="382" alt="setup blog screenshot" src="https://cloud.githubusercontent.com/assets/1489337/12763124/9cbd3a5e-c9a7-11e5-97e3-e39e6098adf3.png">

Write down your *admin* `username` and `password`:

<img width="380" alt="setup example login info screenshot" src="https://cloud.githubusercontent.com/assets/1489337/12763208/0440d834-c9a8-11e5-9c81-05a4b60e9722.png">

Choose a theme:

* in the `/admin` section, click `Design > Choose theme`
* select the "bootstrap-2" theme option.

Finally, **seed your blog with `articles`**:
```bash
$ rake db:seed:articles
# => Seeded 24 articles...
```

## Now Look Around!
* Poke around in the `/admin` section (it's similar to wordpress).
* Visit your blog homepage at `localhost:3000/`
* Publish your first blog post!

##The Bugs

A number of issues have been added to the main github repo. Please fix each bug on its own branch (e.g. `fix_sidebar_styles`). We suggest you do them in order:

1. Inconsistent Sidebar Styles
2. Post tags are shown as "object"
3. Load spinner does not go away
4. Top Month Always Empty (Archive Sidebar)
5. Months sorted incorrectly (Archive Sidebar)

> To view more details, go to the "issues" section of this repo!

### Resolving the Issue
Please fix each bug on its own branch (e.g. `fix_sidebar_styles`).

When you're finished with a bug, create a pull request from your fork back to the main repo.

Make sure to [explicitily reference](https://help.github.com/articles/autolinked-references-and-urls/#issues-and-pull-requests) the issue you are resolving in the _body_ of your pull request!

You can even [close an issue from inside your commit message](https://help.github.com/articles/closing-issues-via-commit-messages/))!

<img width="1239" alt="example pull request" src="https://cloud.githubusercontent.com/assets/1489337/12763002/f2f3a6b6-c9a6-11e5-9e62-cff790c1a89a.png">

**We will hold you to the highest professional standards of software development**.

We will not accept pull requests that:
* fail to reference the issue number in the _body_ of the pull request
* have poor code style -- e.g. incorrect indentation / whitespace
* modify files that are not immediately relevant to the bug at hand
* have poor commit messages or too many commits
* fail to explain, in plain english, what the problem was and how and why the pull request fixes it

> Before you push, make sure to run `rubocop` to lint your ruby code and ensure it meets the standards established by this project.

## Helpful Hints
* Use **Rubber Duck Debugging** -- Make sure you understand the issue!
* Use frequent **Sanity Checks**
    - What are you testing / what are you expecting?
* **Follow the trail**
    - How do you work backwards from the view to the server?
    - How do you find specific files in your rails application?
    - How do you find specific keywords or method calls?
* Sometimes you need to **resart the server** if the views you are working with are being cached.

# Kodethon Blog

This is the official blog of the [Kodethon](https://kodethon.com) technical assessment service.  It is a jekyll blog and it follows the conventional
structure.

## Main Dependencies

* ruby 2.3.0
* jekyll 3.2
* bundler 1.14.6

We specify additional dependencies in the Gemfile.  To install those
dependencies, you need to run `bundle install` in the repo folder.

## Development

When want to make changes to this blog, this is how we do it.

1. Clone the repo  

```bash
git clone https://github.com/kodethon/kodethon.github.io
```

2. Install gems  
```bash
bundle install
```

3. Run jekyll server in development mode
```bash
jekyll server --config _config.yml,_config_dev.yml --drafts --watch
```
4. Make changes: new posts, edit post, new page, change CSS, etc.


### Disqus Comments

We added Disqus comments to each post.  To add Disqus comments, I followed the
instructions given in the Disqus site after clicking **Settings > "Add Disqus to
Site"**.

Roughly: 
1. I logged into my Disqus account
2. I followed the disqus official documentation for integrating into Jekyll

Our shortname is <b>kodethon</b>.  If you are using this blog as the start of
your own blog, make sure that you get your own shortname and edit the **disqus**
value in **_config.yml**. 

In adding comments to each posts, I also found additional resources helpful.

1. [http://sgeos.github.io/jekyll/disqus/2016/02/14/adding-disqus-to-a-jekyll-blog.html](http://sgeos.github.io/jekyll/disqus/2016/02/14/adding-disqus-to-a-jekyll-blog.html)

### Bitly

To track clicks, we use Bitly links.

1. Log into Bitly account.
2. Create Bitly link for URL. 
3. Add "-kodethon" to custom bitly url.
4. In the front matter of the post, I add a **bitly** property.  

Our Bitly username is **kodethon**.  Get your own. 

## Production

Previously, we used to deploy this site as a Docker container in our server
behind a nginx-proxy.  Now, we simply deploy via Github pages. 

To deploy:

1. git commit changes
2. git push changes 

This works for us because this repo is currently the special USERNAME.github.io
repo.  In other words, it is a user/organization Github pages site.  If it were
a project site, we would hve to push to the gh-pages.


## Email

Through our blog, we can also generate newsletters.  We created a TinyLetter
account.  Our username is **kodethon**.  Again, if you are using this blog as
the start of your own blog.  Get your own username.

To Email Newsletter:
1. In TinyLetter, click Compose.
2. Click on Source View.
3. Copy page source from newsletter.
4. Paste into: https://templates.mailchimp.com/resources/inline-css/
5. Pase output source into TinyLetter.

## Source Code Organization

### Post Categories/Tags

These are the categories/tags we are currently using.  If you write a post and
it needs a new category, add it here to document it.

* Announcements
  * General
  * Bug fix
* New Feature
  * Embed
* New Environment
  * Prolog
* Tutorials
  * C
  * C++
  * Java
  * Prolog 

### Media Assets

Our media assets can be put in their respective folders.

* videos: Put video files in the `videos/` folder.  
* images: Put image files in the `images/` folder.

### _includes

head.html: You may want to modify this file to include external CSS or JS files.

Note: The order of include matters to Bootstrap.

## Acknowledgements

* [Social Media Share Bar for Jekyll blog/website](http://mycyberuniverse.com/web/social-media-share-bar-jekyll-blog-website.html)

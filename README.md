# Kodethon Blog

This repository contains the source code for the Kodethon Blog.  
The blog is a jekyll blog.

### Development

1. Clone the repo.  
2. Install gems.  
3. Run jekyll server.

```bash
git clone https://github.com/kodethon/kodethon.github.io
bundle install
jekyll server --config _config.yml,_config_dev.yml --drafts --watch
```

#### Disqus Comments

To add Disqus comments to posts, I followed the instructions given in Disqus
after clicking **Settings > "Add Disqus to Site"**.

1. Login into Disqus using my personal account
2. Followed the disqus official documentation for integrating into jekyll

You will get a shortname.  Make sure that you use the correct shortname.  Our
shortname is <b>kodethon</b>.

I also found additional resources helpful.

1. [http://sgeos.github.io/jekyll/disqus/2016/02/14/adding-disqus-to-a-jekyll-blog.html](http://sgeos.github.io/jekyll/disqus/2016/02/14/adding-disqus-to-a-jekyll-blog.html)

#### Bitly

To track clicks, I use Bitly links.

1. Log into Bitly account.
2. Create Bitly link for URL. 
3. Add "-kodethon" to custom bitly url.

username: kodethon

### Production

Previously, we used to deploy this site as a Docker container in our server
behind a nginx-proxy.  Now, we simply deploy via Github pages. 

To deploy:

1. git commit changes
2. git push changes 

This works for us because this repo is currently the special USERNAME.github.io
repo.  In other words, it is a user/organization Github pages site.  If it were
a project site, we would hve to push to the gh-pages.


### Email

Through our blog, we can also generate newsletters.  We created a TinyLetter
account.

username: kodethon

To Email Newsletter:
1. In TinyLetter, click Compose.
2. Click on Source View.
3. Copy page source from newsletter.
4. Paste into: https://templates.mailchimp.com/resources/inline-css/
5. Pase output source into TinyLetter.

### Source Code Organization

#### Post Categories/Tags

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


#### Assets

videos: Put video files in the `videos/` folder.  

images: Put image files in the `images/` folder.

#### _includes

head.html: You may want to modify this file to include external CSS or JS files.

Order of include matters to Bootstrap.


### Acknowledgements

* [Social Media Share Bar for Jekyll blog/website](http://mycyberuniverse.com/web/social-media-share-bar-jekyll-blog-website.html)

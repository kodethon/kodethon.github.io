# Kodethon Blog

This repository contains the source code for the Kodethon Blog.  
The blog is a jekyll blog.

## How to serve blog

### Development

```bash
jekyll server --config _config.yml,_config_dev.yml --drafts --watch
```

#### Disqus Comments

<b>shortname:</b> kodethon

To add Disqus comments, I followed the instructions given in Disqus after
clicking Settings > "Add Disqus to Site".

1. Login into Disqus using my personal account
2. Followed the disqus official documentation for integrating into jekyll

I also found additional resources helpful.

1. [http://sgeos.github.io/jekyll/disqus/2016/02/14/adding-disqus-to-a-jekyll-blog.html](http://sgeos.github.io/jekyll/disqus/2016/02/14/adding-disqus-to-a-jekyll-blog.html)

#### Bitly

username: kodethon

I am using Bitly links to track clicks from emails.

### Production

We deploy this blog in a Docker container.

#### Building the Docker image

docker build -t kodejoy/kodethon-blog .

#### Run docker container

In your production server, run the command below.  The VIRTUAL_HOST and VIRTUAL_PORT are specific to nginx-proxy which is specific to Kodethon's infrastructure.  So you would not need them in another environment, for example, if you are not using nginx-proxy.

```bash
docker run -d -P -e "JEKYLL_ENV=production" -e "VIRTUAL_HOST=blog.kodethon.com" -e "VIRTUAL_PORT=4000" kodejoy/kodethon-blog jekyll s
```

### Email

Using TinyLetter.

username: kodethon

To Email Newsletter:
1. In TinyLetter, click Compose.
2. Click on Source View.
3. Copy page source from newsletter.
4. Paste into: https://templates.mailchimp.com/resources/inline-css/
5. Pase output source into TinyLetter..

### Organization

#### Categories

* Announcements
  * General
  * New Feature
  * Bug fix
	* New Environment
* Tutorials
  * C
  * C++
  * Java
  * Prolog 


#### videos
Put video files in the `videos/` folder.

#### images 
Put video files in the `images/` folder.

#### _includes

head.html: You may want to modify this file to include external CSS or JS files.


### Acknowledgements

* [Social Media Share Bar for Jekyll blog/website](http://mycyberuniverse.com/web/social-media-share-bar-jekyll-blog-website.html)

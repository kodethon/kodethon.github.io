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

We deploy this blog in a Docker nginx-alpine container.  Docker images can be
tagged; TAG identifies the specific Docker image we want to use.

First, build the docker image. On the development machine:

1. JEKYLL_ENV=production jekyll build --verbose
2. docker build -t kodejoy/kodethon-blog .
3. docker tag TAG kodejoy/kodethon-blog:TAG
4. docker push kodejoy/kodethon-blog

#### Run docker container

Second, pull and run the docker image.  On the production machine:

```bash
docker stop kodethon-blog
docker rm kodethon-blog
docker pull kodejoy/kodethon-blog:TAG
docker run -d -P -e "JEKYLL_ENV=production" -e "VIRTUAL_HOST=blog.kodethon.com" -e "VIRTUAL_PORT=80" kodejoy/kodethon-blog
```

The above commands can be put in a Bash script and executed.

*Note:* The VIRTUAL_HOST and VIRTUAL_PORT are specific to nginx-proxy which is
specific to Kodethon's infrastructure.  So you would not need them in another
environment, for example, if you are not using nginx-proxy.


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

#### Post Categories

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


#### videos
Put video files in the `videos/` folder.  
#### images 
Put video files in the `images/` folder.

#### _includes

head.html: You may want to modify this file to include external CSS or JS files.

Order of include matters to Bootstrap.


### Acknowledgements

* [Social Media Share Bar for Jekyll blog/website](http://mycyberuniverse.com/web/social-media-share-bar-jekyll-blog-website.html)

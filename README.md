# Protractor Docker

Protractor image for `docker`.

## Usage

Start `selenium-hub` first:

    docker run -d --name hub selenium/hub

Then attach your browsers nodes:

		docker run -d --name firefox --link hub:hub --link webserver:web node-firefox
		docker run -d --name chrome --link hub:hub --link webserver:web node-chrome

where `webserver` is the container for your webserver

Then you need to set the right urls in `conf.js` and `spec.js`, using `hub` as shostname for the selenium server and `proxy` for the webserver.

Then you can start the protactor container:

		docker run --rm -v /abs/path/to/your/test/:/test/:ro --link hub:hub michelesr/protractor

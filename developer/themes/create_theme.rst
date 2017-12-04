.. _create-theme:

================
Creating a theme
================

Roadiz themes are one of the main parts of the CMS. They allow you to create your really personal website.
You can duplicate an existing theme to customize stylesheets and images. Or you can start from ground and build
your very own theme using our API. Every visible part of Roadiz is a theme. Even backoffice interface is a theme, and it’s called *Rozier* according to the street name where REZO ZERO created it.

Each theme is a folder which must be placed in ``themes/`` folder. Roadiz comes with 3 default themes :

- *Install* : It’s the first page theme you see when you launch Roadiz in your browser for the first time.
- *Rozier* : Here is the REZO ZERO designed backoffice for Roadiz, it’s available from ``rz-admin/`` url and protected by firewall.
- *DefaultTheme* : It’s a demo theme which is mainly used to demonstrate basic Roadiz features and to try the back-office editing capabilities.

As these 3 themes come bundled with Roadiz, you can’t edit or update their files. Your changes would be overrode
the next time you update Roadiz via Git or direct download. If you want to create your own Backoffice, you can. Just name it differently and hook it in backoffice or using CLI commands.

.. topic:: Source Edition

    If you are using Roadiz *Source edition*, we configured *Git* versioning tool to ignore every additional theme you create in ``/themes`` folder.
    So you can **initialize your a new git repository per custom theme you create.** That way you can use code versioning independently from Roadiz updates.

Preparing your own frontend theme
---------------------------------

To start from a fresh and clean foundation, we built a `BaseTheme <https://github.com/roadiz/BaseTheme>`_ to
fit our needs with many starter node-types and a front-end framework using *ES6* and *Webpack*.

.. code-block:: bash

    # Use Roadiz command to pull and rename BaseTheme after your own project
    bin/roadiz themes:generate MyAwesome

Your theme will be generated as ``/themes/MyAwesomeTheme`` with ``/themes/MyAwesomeTheme/MyAwesomeThemeApp.php``
class.

.. topic:: Standard Edition

    Roadiz *Standard edition* will create a symbolic link into ``web/`` folder to publish your new theme
    public assets as ``/web/themes/MyAwesomeTheme/static``. Make sure that your system supports *symbolic links*.

Edit your main class informations (``MyAwesomeThemeApp.php``)

.. code-block:: php

    /*
     * Copyright REZO ZERO 2016
     *
     * Description
     *
     * @file MyAwesomeThemeApp.php
     * @copyright REZO ZERO 2014
     * @author Ambroise Maupate
     */
    namespace Themes\MyAwesomeTheme;

    use RZ\Roadiz\CMS\Controllers\FrontendController;
    use RZ\Roadiz\Core\Entities\Node;
    use RZ\Roadiz\Core\Entities\Translation;
    use Symfony\Component\HttpFoundation\Request;
    use Symfony\Component\HttpFoundation\Response;

    /**
     * MyAwesomeThemeApp class
     */
    class MyAwesomeThemeApp extends FrontendController
    {

        protected static $themeName =      'My awesome theme';
        protected static $themeAuthor =    'Ambroise Maupate';
        protected static $themeCopyright = 'REZO ZERO';
        protected static $themeDir =       'MyAwesomeTheme';
        protected static $backendTheme =    false;

        //…
    }

Then you will be able to add your fresh new theme into Roadiz backoffice or through Roadiz install.

.. _theme_composer:

Theme specific dependencies
---------------------------

Imagine that you need some extra *Composer* requirements for your theme. Basically, you
need to display a social network feed with *Twitter* and some *Instagram* duck-face photos.
You will need the `rezozero/mixedfeed <https://github.com/rezozero/mixedfeed>`_ library to be loaded with Composer but you can’t touch the
main *Roadiz* ``composer.json``… How do we do?
Roadiz uses the `wikimedia/composer-merge-plugin <https://github.com/wikimedia/composer-merge-plugin>`_ which do some magic stuff with multiple
*composer.json* files. So you just have to create a new *composer.json* file inside your theme
directory and call ``composer update`` **from the Roadiz root folder**.

.. warning::
    Do not use the ``composer`` command **inside** your Theme folders but **only at the Roadiz
    root folder level.** If not, *Composer* will download and install specific dependencies
    inside your theme and the main *autoloader* won’t find your new PHP classes.


Static routing
--------------

Before searching for a node’s Url (Dynamic routing), Roadiz will parse your theme ``route.yml``
to find static controllers and actions to execute.
Static actions just have to comply with the ``Request`` / ``Response`` scheme.
It is adviced to add ``$_locale`` and ``$_route`` optional arguments to better handle
multilingual pages.

.. code-block:: yaml

    foo:
        path:     /foo
        defaults:
            _controller: Themes\MyAwesomeTheme\Controllers\FooBarController::fooAction
    bar:
        path:     /{_locale}/bar
        defaults:
            _controller: Themes\MyAwesomeTheme\Controllers\FooBarController::barAction
        requirements:
            # Use every 2 letter codes
            _locale: "[a-z]{2}"


.. code-block:: php

    public function fooAction(Request $request)
    {
        $translation = $this->bindLocaleFromRoute($request, 'en');
        $this->prepareThemeAssignation(null, $translation);

        return $this->render('foo.html.twig', $this->assignation);
    }

    public function barAction(
        Request $request,
        $_locale = null,
        $_route = null
    ) {
        $translation = $this->bindLocaleFromRoute($request, $_locale);
        $this->prepareThemeAssignation(null, $translation);

        return $this->render('bar.html.twig', $this->assignation);
    }

.. _dynamic-routing:

Dynamic routing
---------------

.. Note::

    Every node-types will be handled by a specific ``Controller``.
    If your created a “Page” type, Roadiz will search for a ``…\Controllers\PageController`` class and
    it will try to execute the ``indexAction`` method.

An indexAction method must comply with the following signature.
It will take the HttpFoundation’s Request as first then a ``Node`` and a ``Translation`` instances.
These two last arguments will be useful to generate your page information and to
render your current node.

.. code-block:: php

    /**
     * Default action for any Page node.
     *
     * @param Symfony\Component\HttpFoundation\Request $request
     * @param RZ\Roadiz\Core\Entities\Node              $node
     * @param RZ\Roadiz\Core\Entities\Translation       $translation
     *
     * @return Symfony\Component\HttpFoundation\Response
     */
    public function indexAction(
        Request $request,
        Node $node = null,
        Translation $translation = null
    ) {
        $this->prepareThemeAssignation($node, $translation);

        return $this->render(
            'types/page.html.twig',  // Twig template path
            $this->assignation      // Assignation array to fill template placeholders
        );
    }

As *Symfony* controllers do, every Roadiz controllers actions have to return a valid ``Response`` object.
This is the `render method <http://api.roadiz.io/RZ/Roadiz/CMS/Controllers/AppController.html#method_render>`_
purpose which will generate a standard *html* response using a *Twig* template and an assignation array.

.. note::

    It’s very easy to create *JSON* responses for your API with Roadiz. You just have to
    replace ``$this->render($template, $assignation);`` method with ``$this->renderJson($data);``. This method is
    a shortcut for ``new JsonResponse($data);``.

Home page case
--------------

Homepage is always a special page to handle. With Roadiz you have the choice to handle it as
a static page or as a dynamic page. In both case you’ll need to setup a static route
in your theme ``Resources/routes.yml`` file.

.. code-block:: yaml

    homePage:
        path:     /
        defaults:
            _controller: Themes\MyAwesomeTheme\MyAwesomeThemeApp::homeAction
    homePageLocale:
        path:     /{_locale}
        defaults:
            _controller: Themes\MyAwesomeTheme\MyAwesomeThemeApp::homeAction
        requirements:
            # Use every 2 letter codes
            _locale: "[a-z]{2}"

Now you can code your ``homeAction`` method in ``MyAwesomeThemeApp`` class. It will need 2 arguments:

- A ``Request`` object: ``$request``
- An optional locale string variable ``$_locale = null``

Dynamic home
^^^^^^^^^^^^

If your home page is built with a node. You can tell Roadiz to handle home request as
a *Page* request (if your home is a *page* type node) using ``$this->handle($request);`` method.
This method will use the ``PageController`` class and ``page.html.twig`` template to render your home.
This can be useful when you need to switch your home page to an other page, there is no need to make
special ajustments.

.. code-block:: php

    /**
     * {@inheritdoc}
     */
    public function homeAction(
        Request $request,
        $_locale = null
    ) {
        /*
         * Get language from static route
         */
        $translation = $this->bindLocaleFromRoute($request, $_locale);
        $home = $this->getHome($translation);

        /*
         * Render Homepage according to its node-type controller
         */
        return $this->handle($request, $home, $translation);
    }

Static home
^^^^^^^^^^^

Imagine now that your home page has a totally different look than other pages. Instead of letting
``handle()`` method returning your Response object, you can create it directly and use a dedicated
``home.html.twig`` template. The fourth argument `static::getThemeDir()` is optional, it explicits
the namespace to look into. It becames useful when you mix several themes with the same templates names.

.. code-block:: php

    /**
     * {@inheritdoc}
     */
    public function homeAction(
        Request $request,
        $_locale = null
    ) {
        /*
         * Get language from static route
         */
        $translation = $this->bindLocaleFromRoute($request, $_locale);
        $home = $this->getHome($translation);

        /*
         * Render Homepage manually
         */
        $this->prepareThemeAssignation($home, $translation);

        return $this->render('home.html.twig', $this->assignation, null, static::getThemeDir());
    }

Keep in ming that ``prepareThemeAssignation`` method will assign for you some useful variables no matter you choice
a dynamic or a static home handling:

- ``node``
- ``nodeSource``
- ``translation``



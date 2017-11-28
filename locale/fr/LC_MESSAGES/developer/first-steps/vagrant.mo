��          �               �      �   �     �   �  8   �  �  �  *  ~     �  ;   �  >     :   B  >   }  �  �  �  G     �	  �   �	  �   �
  8   �  �  �  *  d     �  ;   �  >   �  :   (  >   c  �  �   Access entry-points Be careful, **Windows users**, this ``Vagrantfile`` is configured to use a *NFS* fileshare. Disable it if you did not setup a *NFS* emulator. For *OS X* and *Linux* user this is built-in your system, so have fun! Do not hesitate to add an entry in your ``/etc/hosts`` file to use a local *domain name* instead of using the private IP address (eg. http://site1.dev). And for each Vagrant website, **do not forget to increment your private IP**. Once vagrant VM has provisioned you will be able to use: Once you’ve created your Roadiz project, *Composer* should has copied ``samples/Vagrantfile.sample`` file as ``Vagrantfile`` at your project root. Then do a ``vagrant up`` in Roadiz’ folder. Then `Vagrant <https://www.vagrantup.com/>`_ will run your code in ``/var/www`` and you will be able to completely use ``bin/roadiz`` commands without bloating your computer with lots of binaries. Roadiz comes with a dedicated ``Vagrantfile`` which is configured to run the official ``roadiz/standard-edition`` box with a *LEMP* stack (Nginx + PHP7.0-FPM + MariaDB), a *phpMyAdmin*, a *Mailcatcher* and an *Apache Solr server*. This will be useful to develop your website on your local computer. Using Vagrant for development ``http://192.168.33.10/install.php`` to proceed to install. ``http://192.168.33.10/phpmyadmin`` for your *MySQL* db admin. ``http://192.168.33.10:1080`` for your *Mailcatcher* tool. ``http://192.168.33.10:8983/solr`` to use *Apache Solr* admin. ``web/install.php``, ``web/clear_cache.php`` and ``web/dev.php`` entry points are IP restricted to *localhost*. To be able to use them with a *Vagrant* setup, you’ll need to add your host machine IP to the ``$allowedIp`` array. We already set two IP for you that should work for *forwarded* and *private* requests. Just uncomment the following lines in these files and edit them if necessary. Project-Id-Version: Roadiz documentation 0.14.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-28 13:17+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: fr
Language-Team: fr <LL@li.org>
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Access entry-points Be careful, **Windows users**, this ``Vagrantfile`` is configured to use a *NFS* fileshare. Disable it if you did not setup a *NFS* emulator. For *OS X* and *Linux* user this is built-in your system, so have fun! Do not hesitate to add an entry in your ``/etc/hosts`` file to use a local *domain name* instead of using the private IP address (eg. http://site1.dev). And for each Vagrant website, **do not forget to increment your private IP**. Once vagrant VM has provisioned you will be able to use: Once you’ve created your Roadiz project, *Composer* should has copied ``samples/Vagrantfile.sample`` file as ``Vagrantfile`` at your project root. Then do a ``vagrant up`` in Roadiz’ folder. Then `Vagrant <https://www.vagrantup.com/>`_ will run your code in ``/var/www`` and you will be able to completely use ``bin/roadiz`` commands without bloating your computer with lots of binaries. Roadiz comes with a dedicated ``Vagrantfile`` which is configured to run the official ``roadiz/standard-edition`` box with a *LEMP* stack (Nginx + PHP7.0-FPM + MariaDB), a *phpMyAdmin*, a *Mailcatcher* and an *Apache Solr server*. This will be useful to develop your website on your local computer. Using Vagrant for development ``http://192.168.33.10/install.php`` to proceed to install. ``http://192.168.33.10/phpmyadmin`` for your *MySQL* db admin. ``http://192.168.33.10:1080`` for your *Mailcatcher* tool. ``http://192.168.33.10:8983/solr`` to use *Apache Solr* admin. ``web/install.php``, ``web/clear_cache.php`` and ``web/dev.php`` entry points are IP restricted to *localhost*. To be able to use them with a *Vagrant* setup, you’ll need to add your host machine IP to the ``$allowedIp`` array. We already set two IP for you that should work for *forwarded* and *private* requests. Just uncomment the following lines in these files and edit them if necessary. 
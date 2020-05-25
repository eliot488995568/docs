.. _managing_users:

Managing users
==============

This is a simple guide on how to create and manage users using Roadiz CLI.

There are two ways of adding users, via the back-office and in command-line, both will be displayed in each section.

When working with Roadiz in the back-office, you can easily manage users via the *User system* icon in the toolbar.

.. image:: ./img/add_user_toolbar.png
    :align: center

Add user
--------

You can add users simply by clicking *Add an user* button.

.. image:: ./img/add_user_button.png
    :align: center

If you create an user without specifying its *password*, an email with a password reset link will sent to your new user.
Make sure that you entered the right email and that your Roadiz website has a *mailer* configured. New user will be locked
unless he or she reset its password first.

The command-line ``bin/roadiz users:create loginname`` starts a new interactive user creation session.
You will create a new user with login and email, you can also choose if it's a backend user and if it's a superadmin.

Delete user
-----------

You can remove users by clicking the trashcan icon.

.. image:: ./img/remove_user.png
    :align: center

The command ``bin/roadiz users:delete loginname`` delete the user "loginname".

Adding role
-----------

You can edit a users profile the same way you edit a node-type. You can add roles in the *Roles* tab.

.. image:: ./img/add_role_user.png
    :align: center

If you want to add ``ROLE_SUPERADMIN`` role to "test" user, it would look like this in command-line:

.. code-block:: console

    bin/roadiz users:roles --add loginname
    # You will be prompted to choose the ROLE with auto-complete feature.


Other action
------------

It is possible to enable or disable users with ``users:enable`` or ``users:disable`` command.
If a user doesn't remember his password, you can regenerate it with the ``users:password`` command.
For more informations and more actions, we invite you to check available commands with:

.. code-block:: console

    bin/roadiz list users

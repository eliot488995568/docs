��          �               \     ]     j    w  <   �  �  �  �   b  s   (  �   �  �   ?  ?   �  �   :            :  $  �   _	  $  
  h   6  �   �  .  �  �  �     T     a    n  <   �  �  �  �   Y  s     �   �  �   6  ?   �  �   1     �       :    �   V  $    h   -  �   �  .  �   Coding style Contributing DefaultTheme dependent tests which must extend ``RZ\Roadiz\Tests\DefaultThemeDependentCase``. These tests rely on a complete Roadiz installation with existing node-types and translation. They are longer to prepare as PHPUnit must install a fresh Roadiz with DefaultTheme at each case. Do not forget to join a screenshot or a trace of your error. Each ``SchemaDependentCase`` and ``DefaultThemeDependentCase`` will provision a fresh Roadiz database then drop it. Make sure to use a dedicated database. If you execute unit-tests from an existing Roadiz website, you’ll have to run ``bin/roadiz generate:nsentities`` at the end of your testing session to build your NodesSources classes again (every environment share the same ``gen-src`` folder). If you developed a new feature or simply want to try out an installation of Roadiz you can run unit-tests. For this you will need to install the testing dependencies, this can easily be done using: If you want to contribute to Roadiz project by reporting issues or hacking code, let us thank you! You are awesome! If your are writing a feature, don't forget to write a unit test for it. You can find some example in the folder ``tests``. In Roadiz, there are 4 types of tests: Kernel dependent tests which must extend `RZ\Roadiz\Tests\KernelDependentCase``. These tests should only test logic classes and methods inside Roadiz kernel without any database concern. Or you can use *phpcbf* to automatically fix code style issues. Please take those rules into account, we aim to have a clean codebase. A coherent codestyle will contribute to Roadiz stability. Your code will be checked when we will be considering your pull requests. Reporting issues Running tests Schema dependent tests which must extend ``RZ\Roadiz\Tests\SchemaDependentCase``. These tests should only test low level database methods and classes without relying on node-types or translations. Use this type of testing if you want to test Roadiz entities and repositories methods except for Nodes and NodeTypes. Standard tests which must extend ``\PHPUnit_Framework_TestCase``. These tests should only test simple logic methods and classes as they won’t require Roadiz kernel to boot up. The code you contributed to the project should respect the guidelines defined in PHP *PSR2* standard. If you install the requirements for devs by the command ``composer update --dev``, you can use *phpcs* to check your code. You can copy and paste the following command-lines to check easily: Try to simplify the things you are doing until getting a minimal set of actions reproducing the problem. When you encounter an issue with Roadiz we would love to hear about it. Because thanks to you, we can make the most awesome and stable CMS! If you submit a bug report please include all informations available to you, here are some things you can do: You have to run unit-tests on a dedicated database not to lose any existing Roadiz website. You can create a ``conf/config_test.yml`` YAML configuration which will be read only for this environment. Then, wire this configuration to a blank database. Unit-tests can be launched by the following command: Project-Id-Version: Roadiz documentation 0.14.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-13 14:49+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: fr
Language-Team: fr <LL@li.org>
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Coding style Contributing DefaultTheme dependent tests which must extend ``RZ\Roadiz\Tests\DefaultThemeDependentCase``. These tests rely on a complete Roadiz installation with existing node-types and translation. They are longer to prepare as PHPUnit must install a fresh Roadiz with DefaultTheme at each case. Do not forget to join a screenshot or a trace of your error. Each ``SchemaDependentCase`` and ``DefaultThemeDependentCase`` will provision a fresh Roadiz database then drop it. Make sure to use a dedicated database. If you execute unit-tests from an existing Roadiz website, you’ll have to run ``bin/roadiz generate:nsentities`` at the end of your testing session to build your NodesSources classes again (every environment share the same ``gen-src`` folder). If you developed a new feature or simply want to try out an installation of Roadiz you can run unit-tests. For this you will need to install the testing dependencies, this can easily be done using: If you want to contribute to Roadiz project by reporting issues or hacking code, let us thank you! You are awesome! If your are writing a feature, don't forget to write a unit test for it. You can find some example in the folder ``tests``. In Roadiz, there are 4 types of tests: Kernel dependent tests which must extend `RZ\Roadiz\Tests\KernelDependentCase``. These tests should only test logic classes and methods inside Roadiz kernel without any database concern. Or you can use *phpcbf* to automatically fix code style issues. Please take those rules into account, we aim to have a clean codebase. A coherent codestyle will contribute to Roadiz stability. Your code will be checked when we will be considering your pull requests. Reporting issues Running tests Schema dependent tests which must extend ``RZ\Roadiz\Tests\SchemaDependentCase``. These tests should only test low level database methods and classes without relying on node-types or translations. Use this type of testing if you want to test Roadiz entities and repositories methods except for Nodes and NodeTypes. Standard tests which must extend ``\PHPUnit_Framework_TestCase``. These tests should only test simple logic methods and classes as they won’t require Roadiz kernel to boot up. The code you contributed to the project should respect the guidelines defined in PHP *PSR2* standard. If you install the requirements for devs by the command ``composer update --dev``, you can use *phpcs* to check your code. You can copy and paste the following command-lines to check easily: Try to simplify the things you are doing until getting a minimal set of actions reproducing the problem. When you encounter an issue with Roadiz we would love to hear about it. Because thanks to you, we can make the most awesome and stable CMS! If you submit a bug report please include all informations available to you, here are some things you can do: You have to run unit-tests on a dedicated database not to lose any existing Roadiz website. You can create a ``conf/config_test.yml`` YAML configuration which will be read only for this environment. Then, wire this configuration to a blank database. Unit-tests can be launched by the following command: 
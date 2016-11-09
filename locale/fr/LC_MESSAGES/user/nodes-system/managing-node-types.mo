��            )   �      �  �   �  j   p  (   �        �   %     �     �  a   �  �   L     �  (     X   5  E   �  r   �  �   G       F   "  �   i      	  �   	  -   �	  �   �	  X   Z
  �   �
  y   f  �   �  h   �    �  �   �  U  �    �     �  =   q  &   �  �   �     }  &   �  �   �  �   B       8     M   X  S   �  |   �    w     �  T   �  �        �  �   �  -   Z  �   �  b   1  �   �  �   k  �     �   �  e  �  �   �                                                                      	                                                               
    *Default values* is an interesting field as you can specify what kind of node-types that can be linked to this node-type. You can also use it as a filter in the explorer, and only show those default values. *Description*, *Group name*, *Visible*, *Indexed*, *Default values*, *Min length*, *Max length* (optional) *Label*: what back-office users will see *Name*: what developers will use *Type*: single choice option that will define the content (basic text, markdown text, documents, email, number, single or multiple choice, children nodes etc.) Add node-type Adding node-type field An .rzt file should look like this when you open it in any editor (it is basically a .json file): Be careful when you name your node-type though, *Name* field can't be changed once the node-type is created. See *Delete node-type* section to know how to delete a node-type. Delete node-type Fill in the form to create a new field : First and foremost, you need to create a new node-type before creating any kind of node. From one website to another, you can export node-types as .rzt files. If you want to know more about what a node-type is, please visit the other section of the developer documentation. Made a typo when creating a node-type? No longer in need of a node-type ? You can delete it by simply clicking the trashcan icon on the Node Types page (*https://mywebsite.com/rz-admin/node-types*). Managing node-types Notice the three fields that have been added to this *Page* node-type. Once you have landed on the Node-Types page (*https://mywebsite.com/rz-admin/node-types*), you can create node-types by clicking on *Add a node-type*. Other actions Other options (*Visible*, *Newsletter node-type*, *Node-type hides its nodes* and customizable color) aren't required and can always be altered later on. Then click on 'Add a node-type field' button. This is a simple guide on how to create and manage nodes using Roadiz CLI, add and remove node fields, or even how to import nodes. To add fields to your newly-created node-type, click the *Manage node-type fields* icon. Upon filling the two mandatory settings *Name* (that developpers will use) and *Display Name* (that back-office users will see), you are now ready to create your first node type. When working with Roadiz in the back-office, you can easily manage node-types via the *Construction* icon in the toolbar. You are close to fully master Roadiz' back-office powers ! Keep refering to this documention if you have any problem, and let us know if any information goes missing. You can export and import a node-type if you have a .json file. See *Other action* for more information. You can write an .rzt file yourself if you feel like it, but it is probably easier to simply export node-types from existing website, then import it on your new website. It can be easily done by clicking on *Import node-type* button, then selecting it via your explorer. You have now created your first node-type! It now appears on the node-type page along other node-types and you can now manage its fields. Project-Id-Version: Roadiz documentation 0.14.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-13 14:49+0200
PO-Revision-Date: 2016-08-11 17:14+0200
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
Last-Translator: 
Language-Team: 
Language: fr
X-Generator: Poedit 1.8.8
 Le champ *Valeurs par défaut" est important puisque vous pouvez y spécifier quel type de nœud vous souhaitez lui lier. Vous pouvez également l'utiliser comme un filtre dans la barre de recherche afin de ne voir que les les éléments contenant ces valeurs par défaut.  *Description*, *Nom de groupe*, *Visible*, *Indexé*, *Valeur par défaut*, *Longueur minimum*, *Longueur maximum* (optionnel)  *Étiquette* : ce que les utilisateurs du back-office verront *Nom* : utilisé par les développeurs *Type* : option de choix unique qui va définir le contenu (texte de base, texte markdown, documents, e-mail, numéro, choix simple ou multiple, nœuds enfants, etc.) Ajouter un type de nœud Ajouter un champ dans un type de nœud Un fichier .rtz devrait ressembler à ceci quand vous l'ouvrez avec n'importe quel éditeur (c'est plus ou moins un fichier .json) : Attention : une fois le nom de votre type de nœud défini et celui-ci créé, ce *Nom* ne pourra plus être modifié. En cas d'erreur, rendez-vous dans la section *Supprimer le type de nœud*. Supprimer un type de nœud Remplissez le formulaire pour créer un nouveau champ :  Avant toute création de nœud, vous devez créer un nouveau "type" de nœud. D'un site à un autre, vous pouvez exporter les types de nœuds comme fichiers .rtz Si vous souhaitez en savoir plus sur les types de nœuds, merci de vous rendre à la section afférente de la documentation. Vous avez fait une coquille en créant un type de nœud ? Ou vous n'avez tout simplement plus besoin de cette catégorie de nœuds ? Vous pouvez le supprimer en cliquant simplement sur l'icône corbeille de la page des Types de Nœuds (*https://mywebsite.com/rz-admin/node-types*).  Gérer les types de nœuds Vous remarquerez que les trois champs ont été ajoutés à ce type de nœud *Page*. Une fois sur la page Types de nœuds (*https: //mywebsite.com/rz-admin/node-types*), cliquez sur * Ajouter un type de nœud* pour créer un nœud. Autres actions Les autres options (*Visible*, * Newsletter*, *Type de nœud caché* et les couleurs personnalisables) ne sont pas obligatoires et peuvent toujours être modifiées ultérieurement. Puis cliquez sur le bouton 'Ajouter un champ' Ce guide vous permettra de comprendre comment créer et gérer des de nœuds en utilisant Roadiz, ajouter et supprimer des champs ou encore comment importer des nœuds. Pour ajouter des champs à votre nouveau type de nœud, cliquez sur l'icône "Gestion des champs". Une fois les deux paramètres obligatoires remplis - *Nom* (que les développeurs utiliseront) et *Nom d'affichage* (que les utilisateurs de back-office verront) - , vous pourrez créer votre premier type de nœud. Lorsque vous travaillez dans le back-office de Roadiz, vous pouvez facilement gérer les types de nœuds via l'icône *Construction* de la barre d'outils. Vous êtes proche de la maîtrise complète des pouvoirs du back-office de Roadiz ! Continuez à vous référer à cette documentation si vous rencontrez des difficultés et faites-nous signe pour toute question ou complément d'information. À savoir, vous pouvez exporter et importer un type de nœud avec un fichier .json. Rendez-vous sur *Autre action* pour plus d'informations. Vous pouvez rédiger un fichier .rzt vous-même si vous le souhaitez, mais il sera probablement plus simple d'exporter des types de nœuds de sites internet existants plutôt que d'en importer un sur votre nouveau site. Cela peut être facilement réalisé en cliquant sur *Importer un type de nœud* puis en le sélectionnant dans votre liste de recherche. Vous avez à présent créé votre premier type de nœud! Il apparaîtra dans la liste de vos types de nœuds disponibles et vous pouvez à présent gérer ses champs. 
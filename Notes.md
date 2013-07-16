# Notes about the partials served with this Gem

## Site Header

This partial needs some data supplied via the `:object` key while rendering.
See the following expample of the render call:

    <!-- ... content above the render call -->
    
    <%= render partial: 'cherokey_assets/site_header', object: header_data %>
    
    <!-- ... content below the call -->

The referenced `header_data` object is kind of a Hash. The data can contain the
following key-value pairs:

| key                  | value example                | description                                                                            |
| ---                  | ---                          | ---                                                                                    |
| `display_name`       | Müller, Bruno                | the name displayed as logged in user                                                   |
| `logo_link`          | http://example.com/          | the link url for the logo. Typically the root url of the corresponding cherokey module |
| `eject_link`         | http://example.com/foo       | the link for the eject button.                                                         |
| `variant`            | see below                    | variant information                                                                    |
| `user_menu`          | see below                    | link data for the user menu                                                            |
| `instance_expration` | This instance expires at ... | a text that informs the the user about the expiration of an instance                   |

The `variant` information is a simple key-value object that contains the
following keys:

| key     | value example                                        | description                                 |
| ---     | ---                                                  | ---                                         |
| `id`    | tomahawk                                             | the variant ID                              |
| `title` | This instance is onfigured with the Tomahawk variant | a text explaining the variant configuration |

The `user_menu` data structure is a list of key-value objects, each
representing a menu item shown in the header. Example:

    [ { menu item }, { menu item } ]

Each menu item has the following key-value pairs:

| key       | value example            | description                                            |
| ---       | ---                      | ---                                                    |
| `text`    | Hilfe                    | the link text                                          |
| `url`     | http://hilfe.cherokey.de | the link url                                           |
| `options` | `{ target: '_blank' }`   | options for the link, passed to rails `link_to` method |

The `display_name` value is used to distinguish if the full menu should be
rendered. If it's value is falsy just the logo and instance expiration
information is shown.

### Site Header Data Full Example:

    { 
        "logo_link" => "http://localhost:3000/",
          "variant" => { "id" => "tomahawk", "title" => "Sie nutzen die Tomahawk-Variante." },
     "display_name" => "Huber, Michelle",
        "user_menu" =>
          [ {    "text" => "Hilfe",
                  "url" => "http://hilfe.cherokey.de",
              "options" => { :target => "_blank" } },
            {    "text" => "Passwort ändern", 
                  "url" => "/change_password/manager2" },
            {    "text" => "Abmelden", 
                  "url" => "/sessions/2", 
              "options" => { :method => "delete" } } ],
       "eject_link" => nil }


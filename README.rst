===================================
VOINET OTRS SKIN
===================================

Installation
============
In order to install the VOINET OTRS Skin, go to the Custom directory in your OTRS
deployment directory (e.g.: /opt/otrs/Custom)::

$ cd /opt/otrs/Custom
$ git clone https://gitlab.henchman21.net/voinet/voinet-otrs-theme.git

Edit install.sh and make sure OTRS_USER, OTRS_GROUP and OTRS_ROOT variables are set correctly for your environment, then::

$ sudo ./install.sh

Log into OTRS system with the admin user, go to SysConfig **Core::Web** and set: 
    **Loader::Agent::DefaultSelectedSkin** to voinet
then go to **Frontend::Customer** and set:
    **Loader::Customer::SelectedSkin** to voinet

In order to be able to use our own favicon.ico, we need to change **Frontend::ImagePath** to <OTRS_CONFIG_Frontend::WebPath>skins/Agent/voinet/img/

OTRS Theme:

To activate the theme in otrs, we need to go to SysConfig Core::Web and add our VOINET theme to Frontend::Themes and make it active.
To make our theme the default theme, we need to go to SysConfig Core and change the *DefaultTheme* setting to **VOINET** . This will apply our theme to all users that have not previously set the Theme preference in their user preferences.

If we want the theme default theme setting to override user's preferences, then we need to set our default theme on a host level *DefaultTheme::HostBased*.

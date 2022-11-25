<?php
define( 'WP_CACHE', true ); // Added by WP Rocket

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'twblog' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '2P C`S#6+]c9K_NIj8[b9~$1?qODG2FD(]>zDIge7zIWJm%_66X7f~>OKaSHWJws' );
define( 'SECURE_AUTH_KEY',  'hqt[}G1,kH8qZz}ZB^$%r40Jqz!2`Vj3W&c3PlU<~En}4o@=J)pT^<<8ub`K]pp*' );
define( 'LOGGED_IN_KEY',    '8#|Kmef6T{R@yQ2g3zzlVYF6!xM?zO}N(v?BbUa=iRdlg4/[~/_Q_l4~)r{gqhLC' );
define( 'NONCE_KEY',        '3vit(UV4Bam{+j2vFo3hGC.1rfx(qa{/0iYmcEU:8cPG74k)5K;Z6 FR;b[`BVXE' );
define( 'AUTH_SALT',        '@ 1?.S3i!S(_pJ}NY6>3C-f*:m{oQ>!+nbejG9H~e[[UU%[eJr;WTje)!_#x=^n$' );
define( 'SECURE_AUTH_SALT', 'oHMW&&dwSad_n^ua&s[8lVe-UYPdUm?pbO#EK`D1I91T6$?9zYV~8{1%,9-b>yDP' );
define( 'LOGGED_IN_SALT',   '/3n|4OVN?{cN#h<7~g(VJK/UQ<n<$Ld1QIU}F*w&WdEBT|csD}[4a~o._jn(P+z~' );
define( 'NONCE_SALT',       'fqTT-(ntRdk XTTcMrJH~q-0TFy;r8nWe>fjhd>KQrdVR<R}Y ]N*J3NYb4HF&W;' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

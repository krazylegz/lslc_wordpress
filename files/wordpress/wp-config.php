<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'lslc_wordpress');

/** MySQL database username */
define('DB_USER', 'lslc');

/** MySQL database password */
define('DB_PASSWORD', 'hf2cud725Hfp');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'N|1:^/B@vqyOQ#uAC6F5pk|j9|bC0C$q(Oz6Mv[uO,-6BqW30A;vi_~7G37nsh,9');
define('SECURE_AUTH_KEY',  'k%O9o& wl)}hhgRPN-R/+q#}6rPB:N2rk?|Iq(n>hvYgRY2QJR:?2o`r>r*$$iWP');
define('LOGGED_IN_KEY',    '0V+&&rT*u=^6RY22c~^xh|tN,LB?}#nVeb+-C6|?+M,)N8LY(&[v3p,D+O`JC_g/');
define('NONCE_KEY',        '+ws^rcH%`G9vQKzd+O#DMb306F~/aV}IK4/1-G=EQ9[)e~7(LUUc3W:cq_-6Y  }');
define('AUTH_SALT',        'l#&{1)L;JLn9o.YBJC3[cDl)bm< 5NDbYHH~YeU wP_| onRUvM!J*-|R |MT#1M');
define('SECURE_AUTH_SALT', '5OcpSJaJbScGV[u?>Adk?673G][`Q/nOl+?[re$+b:I)>=4lAeCTNw)$v$8f_kXF');
define('LOGGED_IN_SALT',   'lA0!gXmu-~<o-3nv3J:WoCLjT b8JuyPw?B8^Ph>b0 Fk~b6Ma^7O-)iWXg?@uY=');
define('NONCE_SALT',       'N(,P;D/*LbAV28F~sBo{+)FL25PC/QrB)w^nwlx*-k#4$QD%*_`83jrV514hnk22');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
  define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');


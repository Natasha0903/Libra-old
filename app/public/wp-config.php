<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'dMwrKvPGCJMjJc1eye6woYTKJvz4J1xtljn+OUmDHcegZG8hXVRl10IKJFYTqMtgNpugwnzD1PPHHZMrAvp4eA==');
define('SECURE_AUTH_KEY',  'S9DQ4efQRVV5v1SXvthcgPTJVlod8AiDGdbq4N/ukZALtcXTPBthqECvrAkH99a8ib+tNqLQLMUhnVlTaPD3JQ==');
define('LOGGED_IN_KEY',    'kpoLBv84qKGq5HAHUJGxxuqskooe8dNcmeVlOuQc6Czwf0/11Uip7Mvqmti5a7WEy5Vw1lhLiqVi7C4lQK4Nhg==');
define('NONCE_KEY',        'ukZzi1wdEA7o4qPIVlxyhxKg56cdatZdfOqWCnB4Or5VRed9/XTceKbhSL1iNAP//4+1RgRKwBPk+FcwfR+k+w==');
define('AUTH_SALT',        'ECrr35UuO/rv+OX+g+ZCEDmiyHX92QHvDA+bJ/MEvLCrgJrxqxU6lW3ErXhfYEZbW8kpiiweH1aWOdsfDGF08g==');
define('SECURE_AUTH_SALT', 'vCITqidd0KvzxcYMIYrkpGnJzsgCpkWIjAfLW5vxF9YMlXhZqVgKcZVNuBoyABNMhP/v9eFXmE70eaoNAF5IBg==');
define('LOGGED_IN_SALT',   'b3GHzkXYVPQZiG/iGsiN5ySAyQRNCJtB3UuhP0V7lMtFsb3sNha8WGO8Yb/Sj3G75AQDIQKHsInQUnT1JBBYMg==');
define('NONCE_SALT',       '1/FH5UsveVe/jehcgsHBxvc4Wr0RNX8aR51leavQlsaaMg1qM1CqF3ecIMnx287a+NRM/xOO+2vItKBlQbNtXQ==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

<?php
if (defined('WP_CLI') && WP_CLI && ! isset($_SERVER['HTTP_HOST'])) {
    $_SERVER['HTTP_HOST'] = 'localhost';
}
require_once ABSPATH . 'wp-settings.php';

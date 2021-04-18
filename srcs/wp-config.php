/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   wp-config.php                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngamora <ngamora@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/18 13:16:45 by ngamora           #+#    #+#             */
/*   Updated: 2021/04/18 13:16:49 by ngamora          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'wordpress' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'wp_admin' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'admin' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '`Y]S$C-e>[:$pHE*q|w-TDtT$Plz4+A>A:N7EwK.(VJ<nl/J{g%MsL&OoXkTy`q6');
define('SECURE_AUTH_KEY',  '!E5Fgu~EGTC?1;l6M>~t=5*8Z5^RW:hme*VwC^[}p2oX6adqhDg(d]ZSRH11cZPP');
define('LOGGED_IN_KEY',    'bS]uJI7#+<u83U%Hn? 1Ai$+,f)ipN$b`C~cq_6/_?|kP[Lu1qN_?oa#zd?sBysU');
define('NONCE_KEY',        ':2BgWpzlZh!>*+4(jR+m .3{>8Hzajn=5iSn}EI?-HEzzris^dG%U+(Pd&qNOW2w');
define('AUTH_SALT',        '|g)[ M4<U7-N@+L|#~NJ`.)Hx8^&}Y`J:+Q;LL./P@N3br?BUCx3#JXttt#c/x]Z');
define('SECURE_AUTH_SALT', 'N-(*tNr%D4y$Lc5>>[j{? ?xvKS[*<!5XnY).O)qWA_M>)_U_dapBO/b*V24ab7{');
define('LOGGED_IN_SALT',   'vk@oD u|mN.~lv~?BM~%03pAG&ow7(?/ZVlR1/kW^|SN7aVw*)g< 58/HBP,z6=z');
define('NONCE_SALT',       'D|zxN5lX62#,ZvXbNpn$&B@ aL@Dg_yvm1dP}pFErFLDE5)7tl->sQG05+S>!JI9');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
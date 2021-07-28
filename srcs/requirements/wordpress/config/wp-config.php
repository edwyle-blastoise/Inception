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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', '${DB_NAME}');

/** Имя пользователя MySQL */
define('DB_USER', '${DB_USER}');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '${DB_PASSWORD}');

/** Имя сервера MySQL */
define('DB_HOST', '${DB_HOST}');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'GN<$x5]ftV,#H)ZUkw#^`=uq4v oYw}uX$l81Y6S6d-FKpGRwtxcf.-GQu?d|^SH');
define('SECURE_AUTH_KEY',  '-.zo0~ q9L&-Q^qp!?Af)M--2i+aj,{a^:8j.z+!9d|^Gm~NM7|</>%i-]:;+U;r');
define('LOGGED_IN_KEY',    '[+^7|gaq^L-ns<nMkKfqBplC& vG.uo3$K0Z@D5oY7N-0HFNmFnZ#q`QW40sh5@D');
define('NONCE_KEY',        '[^Nf-Am)J1A^+xzk+>pW|(9I6=CoJ4y>dyE?&=ef?#&Aq=`B,H5$_s,j6q6GWu4q');
define('AUTH_SALT',        'HGn9]G i_5%U5)]4QIfg*T;C)79= Nc|e`8x$UDAm6zOb-ssSMq<Wfoa&ydZBhHE');
define('SECURE_AUTH_SALT', 'b{-;Kw!]|Rj8[$ZHTzg{;qxfQ2(vgs+wB|<H|Bsqags*}+N_XVp~&$>kb--C+Np1');
define('LOGGED_IN_SALT',   '_++Sh.;-7vO j+Yq<>e^nKE|iKw+eg`_P&~p&B1s~z-BxSL_/VE|64U>qK)3AcY4');
define('NONCE_SALT',       '>l:eoMh=A+$t4I[C=HqhQ o`/U(/,O`aM>:-^-~NX@EB^V+<-Gybc-+Aj1#KIyx|');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
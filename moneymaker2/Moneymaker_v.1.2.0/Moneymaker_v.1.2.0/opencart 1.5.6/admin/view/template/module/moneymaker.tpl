<?php echo $header; ?>
<?php // init default values and settings
$mmr_product_galleries  = array('colorbox', 'photobox', 'fancybox');
$mmr_fa_icons  = array(
1=>'adjust', 'anchor', 'archive', 'arrows', 'arrows-h', 'arrows-v', 'asterisk', 'ban', 'bar-chart-o', 'barcode', 'bars', 'beer', 'bell', 'bell-o', 'bolt', 'book', 'bookmark', 'bookmark-o', 'briefcase', 'bug', 'building-o', 'bullhorn', 'bullseye', 'calendar', 'calendar-o', 'camera', 'camera-retro', 'caret-square-o-down', 'caret-square-o-left', 'caret-square-o-right', 'caret-square-o-up', 'certificate', 'check', 'check-circle', 'check-circle-o', 'check-square', 'check-square-o', 'circle', 'circle-o', 'clock-o', 'cloud', 'cloud-download', 'cloud-upload', 'code', 'code-fork', 'coffee', 'cog', 'cogs', 'comment', 'comment-o', 'comments', 'comments-o', 'compass', 'credit-card', 'crop', 'crosshairs', 'cutlery', 'desktop', 'dot-circle-o', 'download', 'ellipsis-h', 'ellipsis-v', 'envelope', 'envelope-o', 'eraser', 'exchange', 'exclamation', 'exclamation-circle', 'exclamation-triangle', 'external-link', 'external-link-square', 'eye', 'eye-slash', 'female', 'fighter-jet', 'film', 'filter', 'fire', 'fire-extinguisher', 'flag', 'flag-checkered', 'flag-o', 'flask', 'folder', 'folder-o', 'folder-open', 'folder-open-o', 'frown-o', 'gamepad', 'gavel', 'gift', 'glass', 'globe', 'hdd-o', 'headphones', 'heart', 'heart-o', 'home', 'inbox', 'info', 'info-circle', 'key', 'keyboard-o', 'laptop', 'leaf', 'lemon-o', 'level-down', 'level-up', 'lightbulb-o', 'location-arrow', 'lock', 'magic', 'magnet', 'mail-reply-all', 'male', 'map-marker', 'meh-o', 'microphone', 'microphone-slash', 'minus', 'minus-circle', 'minus-square', 'minus-square-o', 'mobile', 'money', 'moon-o', 'music', 'pencil', 'pencil-square', 'pencil-square-o', 'phone', 'phone-square', 'picture-o', 'plane', 'plus', 'plus-circle', 'plus-square', 'plus-square-o', 'power-off', 'print', 'puzzle-piece', 'qrcode', 'question', 'question-circle', 'quote-left', 'quote-right', 'random', 'refresh', 'reply', 'reply-all', 'retweet', 'road', 'rocket', 'rss', 'rss-square', 'search', 'search-minus', 'search-plus', 'share', 'share-square', 'share-square-o', 'shield', 'shopping-cart', 'sign-in', 'sign-out', 'signal', 'sitemap', 'smile-o', 'sort', 'sort-alpha-asc', 'sort-alpha-desc', 'sort-amount-asc', 'sort-amount-desc', 'sort-asc', 'sort-desc', 'sort-numeric-asc', 'sort-numeric-desc', 'spinner', 'square', 'square-o', 'star', 'star-half', 'star-half-o', 'star-o', 'subscript', 'suitcase', 'sun-o', 'superscript', 'tablet', 'tachometer', 'tag', 'tags', 'tasks', 'terminal', 'thumb-tack', 'thumbs-down', 'thumbs-o-down', 'thumbs-o-up', 'thumbs-up', 'ticket', 'times', 'times-circle', 'times-circle-o', 'tint', 'trash-o', 'trophy', 'truck', 'umbrella', 'unlock', 'unlock-alt', 'upload', 'user', 'users', 'video-camera', 'volume-down', 'volume-off', 'volume-up', 'wheelchair', 'wrench', 'check-square', 'check-square-o', 'circle', 'circle-o', 'dot-circle-o', 'minus-square', 'minus-square-o', 'plus-square', 'plus-square-o', 'square', 'square-o', 'btc', 'eur', 'gbp', 'inr', 'jpy', 'krw', 'money', 'rub', 'try', 'usd', 'align-center', 'align-justify', 'align-left', 'align-right', 'bold', 'chain-broken', 'clipboard', 'columns', 'eraser', 'file', 'file-o', 'file-text', 'file-text-o', 'files-o', 'floppy-o', 'font', 'indent', 'italic', 'link', 'list', 'list-alt', 'list-ol', 'list-ul', 'outdent', 'paperclip', 'repeat', 'scissors', 'strikethrough', 'table', 'text-height', 'text-width', 'th', 'th-large', 'th-list', 'underline', 'undo', 'angle-double-down', 'angle-double-left', 'angle-double-right', 'angle-double-up', 'angle-down', 'angle-left', 'angle-right', 'angle-up', 'arrow-circle-down', 'arrow-circle-left', 'arrow-circle-o-down', 'arrow-circle-o-left', 'arrow-circle-o-right', 'arrow-circle-o-up', 'arrow-circle-right', 'arrow-circle-up', 'arrow-down', 'arrow-left', 'arrow-right', 'arrow-up', 'arrows', 'arrows-alt', 'arrows-h', 'arrows-v', 'caret-down', 'caret-left', 'caret-right', 'caret-square-o-down', 'caret-square-o-left', 'caret-square-o-right', 'caret-square-o-up', 'caret-up', 'chevron-circle-down', 'chevron-circle-left', 'chevron-circle-right', 'chevron-circle-up', 'chevron-down', 'chevron-left', 'chevron-right', 'chevron-up', 'hand-o-down', 'hand-o-left', 'hand-o-right', 'hand-o-up', 'long-arrow-down', 'long-arrow-left', 'long-arrow-right', 'long-arrow-up', 'arrows-alt', 'backward', 'compress', 'eject', 'expand', 'fast-backward', 'fast-forward', 'forward', 'pause', 'play', 'play-circle', 'play-circle-o', 'step-backward', 'step-forward', 'stop', 'youtube-play', 'adn', 'android', 'apple', 'bitbucket', 'bitbucket-square', 'btc', 'css3', 'dribbble', 'dropbox', 'facebook', 'facebook-square', 'flickr', 'foursquare', 'github', 'github-alt', 'github-square', 'gittip', 'google-plus', 'google-plus-square', 'html5', 'instagram', 'linkedin', 'linkedin-square', 'linux', 'maxcdn', 'pagelines', 'pinterest', 'pinterest-square', 'renren', 'skype', 'stack-exchange', 'stack-overflow', 'trello', 'tumblr', 'tumblr-square', 'twitter', 'twitter-square', 'vimeo-square', 'vk', 'weibo', 'windows', 'xing', 'xing-square', 'youtube', 'youtube-play', 'youtube-square', 'ambulance', 'h-square', 'hospital-o', 'medkit', 'plus-square', 'stethoscope', 'user-md', 'wheelchair', 'behance', 'behance-square', 'bomb', 'building', 'car', 'child', 'circle-o-notch', 'digg', 'file-excel-o', 'graduation-cap', 'openid', 'rebel', 'soundcloud', 'taxi', 'circle-thin', 'drupal', 'file-pdf-o', 'hacker-news', 'paper-plane', 'recycle', 'space-shuttle', 'tencent-weibo', 'codepen', 'empire', 'file-powerpoint-o', 'header', 'paper-plane-o', 'reddit', 'spoon', 'tree', 'cube', 'envelope-square', 'file-video-o', 'history', 'paragraph', 'reddit-square', 'spotify', 'university', 'cubes', 'fax', 'file-word-o', 'joomla', 'paw', 'share-alt', 'steam', 'vine', 'database', 'file-archive-o', 'git', 'jsfiddle', 'pied-piper', 'share-alt-square', 'steam-square', 'weixin', 'delicious', 'file-audio-o', 'git-square', 'language', 'pied-piper-alt', 'slack', 'stumbleupon', 'wordpress', 'deviantart', 'file-code-o', 'google', 'life-ring', 'qq', 'sliders', 'stumbleupon-circle', 'yahoo', 'angellist', 'google-wallet', 'area-chart', 'line-chart', 'at', 'ioxhost', 'bell-slash', 'lastfm', 'bell-slash-o', 'lastfm-square', 'bicycle', 'paypal', 'binoculars', 'meanpath', 'birthday-cake', 'newspaper-o', 'bus', 'paint-brush', 'calculator', 'toggle-on', 'cc', 'pie-chart', 'cc-amex', 'plug', 'cc-discover', 'ils', 'cc-mastercard', 'twitch', 'cc-paypal', 'slideshare', 'cc-stripe', 'tty', 'cc-visa', 'toggle-off', 'copyright', 'wifi', 'eyedropper', 'trash', 'futbol-o', 'yelp', 'bed', 'buysellads', 'cart-arrow-down', 'cart-plus', 'connectdevelop', 'dashcube', 'diamond', 'facebook-official', 'forumbee', 'heartbeat', 'hotel', 'leanpub', 'mars', 'mars-double', 'mars-stroke', 'mars-stroke-h', 'mars-stroke-v', 'medium', 'mercury', 'motorcycle', 'neuter', 'pinterest-p', 'sellsy', 'server', 'ship', 'shirtsinbulk', 'simplybuilt', 'skyatlas', 'street-view', 'subway', 'train', 'transgender', 'transgender-alt', 'user-plus', 'user-secret', 'user-times', 'venus', 'venus-double', 'venus-mars', 'viacoin', 'whatsapp', 'y-combinator', '500px','amazon', 'balance-scale', 'battery-empty', 'battery-full', 'battery-half', 'battery-quarter', 'battery-three-quarters', 'black-tie', 'calendar-check-o', 'calendar-minus-o', 'calendar-plus-o', 'calendar-times-o', 'cc-diners-club', 'cc-jcb', 'chrome', 'clone', 'commenting', 'commenting-o', 'contao', 'creative-commons', 'expeditedssl', 'firefox', 'fonticons', 'genderless', 'get-pocket', 'gg', 'gg-circle', 'hand-lizard-o', 'hand-paper-o', 'hand-peace-o', 'hand-pointer-o', 'hand-rock-o', 'hand-scissors-o', 'hand-spock-o', 'hourglass', 'hourglass-end', 'hourglass-half', 'hourglass-o', 'hourglass-start', 'houzz', 'i-cursor', 'industry', 'internet-explorer', 'map', 'map-o', 'map-pin', 'map-signs', 'mouse-pointer', 'object-group', 'object-ungroup', 'odnoklassniki', 'odnoklassniki-square', 'opencart', 'opera', 'optin-monster', 'registered', 'safari', 'sticky-note', 'sticky-note-o', 'television', 'trademark', 'tripadvisor', 'vimeo', 'wikipedia-w'
);

$mmr_sticker_custom_fields  = array(
'model', 'sku', 'upc', 'jan', 'ean', 'isbn', 'mpn'
);
$mmr_bg_attachments = array(
'scroll', 'fixed'
);
$mmr_bg_positions = array(
'top left', 'top center', 'top right', 'center left', 'center center', 'center right', 'bottom left', 'bottom center', 'bottom right'
);
$mmr_bg_repeats = array(
'repeat', 'no-repeat', 'repeat-x', 'repeat-y'
);
$mmr_contact_modes = array(
1=>$entry_header_contacts_mobiles, $entry_icon, $entry_header_contacts_header, $entry_header_contacts_divider
);
$mmr_contact_mobile_icons = array(
'mob-mts', 'mob-megafon', 'mob-beeline', 'mob-tele2', 'mob-rostelecom', 'mob-motiv', 'mob-smarts', 'mob-kyivstar', 'mob-life', 'mob-djuice', 'mob-utel', 'mob-3mob', 'mob-ecotel', 'mob-golden-telecom', 'mob-intertelecom', 'mob-jeans', 'mob-peoplenet', 'mob-velcom', 'mob-belsel', 'mob-kcell', 'mob-activ', 'mob-altel', 'mob-lte', 'mob-orange-moldova', 'mob-moldcell', 'mob-unite',
);
$mmr_socials = array(
'behance', 'behance-square', 'delicious', 'deviantart', 'digg', 'dribbble', 'facebook', 'facebook-square', 'flickr', 'foursquare', 'google-plus', 'google-plus-square', 'instagram', 'linkedin', 'linkedin-square', 'pinterest', 'pinterest-square', 'reddit', 'reddit-square', 'soundcloud', 'spotify', 'stack-exchange', 'steam', 'steam-square', 'stumbleupon', 'stumbleupon-circle', 'tumblr', 'tumblr-square', 'twitter', 'twitter-square', 'vimeo-square', 'vine', 'vk', 'weibo', 'weixin', 'xing', 'xing-square', 'yahoo', 'youtube', 'youtube-square', 'y-combinator', '500px', 'odnoklassniki', 'odnoklassniki-square', 'tripadvisor', 'vimeo', 'wikipedia-w'
);
$mmr_payments = array(
'cc', 'cc-amex', 'cc-discover', 'cc-mastercard', 'cc-paypal', 'cc-stripe', 'cc-visa', 'credit-card'
);

$mmr_catalog_grid_details_options = array(
'Always', 'Only on mouse over'
);
$mmr_effects_js_options = array(
'slideRight', 'slideLeft', 'slideDown', 'slideUp', 'fade'
);
$mmr_effects_css_options = array(
'slideRightSimple', 'slideLeftSimple', 'slideDownSimple', 'slideUpSimple', 'fadeSimple',
'slideDown', 'slideUp', 'slideLeft', 'slideRight', 'slideExpandUp', 'expandUp', 'fadeIn', 'expandOpen',
'bigEntrance', 'hatch', 'bounce', 'pulse', 'floating', 'tossing', 'pullUp', 'pullDown', 'stretchLeft', 'stretchRight'
);

if(empty($mmr_themes_builtin_theme)) $mmr_themes_builtin_theme                                        = "2";
if(empty($mmr_themes_custom_color)) $mmr_themes_custom_color                                          = "1";
if(empty($mmr_themes_custom_bg_color)) $mmr_themes_custom_bg_color                                    = "999";

if(empty($mmr_common_stock_available_color)) $mmr_common_stock_available_color                        = "5a5a5a";
if(empty($mmr_common_stock_unavailable_color)) $mmr_common_stock_unavailable_color                    = "bbb";

if(empty($mmr_product_gallery_type)) $mmr_product_gallery_type                                        = "colorbox";
if(empty($mmr_product_images_hide_limit)) $mmr_product_images_hide_limit                              = "4";
if(empty($mmr_product_options_hide_limit)) $mmr_product_options_hide_limit                            = "2";

if(empty($mmr_catalog_grid_details)) $mmr_catalog_grid_details                                        = "Only on mouse over";
if(empty($mmr_catalog_category_description_spoiler_limit)) $mmr_catalog_category_description_spoiler_limit = "300";

if(empty($mmr_product_description_font_color)) $mmr_product_description_font_color                    ="333";
if(empty($mmr_product_description_font_size)) $mmr_product_description_font_size                      ="14";
if(empty($mmr_product_specification_font_color)) $mmr_product_specification_font_color                ="333";
if(empty($mmr_product_specification_font_size)) $mmr_product_specification_font_size                  ="14";
if(empty($mmr_product_review_font_color)) $mmr_product_review_font_color                ="333";
if(empty($mmr_product_review_font_size)) $mmr_product_review_font_size                  ="14";

if(empty($mmr_header_categories_description_limit)) $mmr_header_categories_description_limit          = "300";
if(empty($mmr_header_categories_hide_limit)) $mmr_header_categories_hide_limit                        = "10";
if(empty($mmr_common_descriptions_limit)) $mmr_common_descriptions_limit                              = "300";
if(empty($mmr_common_attributes_limit)) $mmr_common_attributes_limit                                  = "300";
if(empty($mmr_common_attributes_delimiter)) $mmr_common_attributes_delimiter                          = "::";

if(empty($mmr_advantages_number)) $mmr_advantages_number                                              = "1";
if(empty($mmr_advantages_icons_size)) $mmr_advantages_icons_size                                      = "2.0";
if(empty($mmr_advantages_icons_color)) $mmr_advantages_icons_color                                    = "999";
if(empty($mmr_advantages_font_size)) $mmr_advantages_font_size                                        = "10";
if(empty($mmr_advantages_font_color)) $mmr_advantages_font_color                                      = "666";
for ($i = 1; $i <= 7; $i++) {
  if(empty($mmr_advantages_icon[$i])) $mmr_advantages_icon[$i]                                        = "circle";
}

if(empty($mmr_savings_text_color)) $mmr_savings_text_color                                            = "b88282";

if(empty($mmr_stickers_size_small)) $mmr_stickers_size_small                                          = "2.0";
if(empty($mmr_stickers_size_large)) $mmr_stickers_size_large                                          = "2.5";
for ($i = 1; $i <= 9; $i++) {
  if(empty($mmr_stickers[$i]['enabled'])) $mmr_stickers[$i]['enabled']                                = "0";
  if(empty($mmr_stickers[$i]['title_color'])) $mmr_stickers[$i]['title_color']                        = "fff";
  if(empty($mmr_stickers[$i]['caption_size_small'])) $mmr_stickers[$i]['caption_size_small']          = "11";
  if(empty($mmr_stickers[$i]['caption_size_large'])) $mmr_stickers[$i]['caption_size_large']          = "13";
}
for ($i = 2; $i <= 9; $i++) {
if(empty($mmr_stickers[$i]['icon'])) $mmr_stickers[$i]['icon']                                        = "circle";
if(empty($mmr_stickers[$i]['title_size_small'])) $mmr_stickers[$i]['title_size_small']                = "16";
if(empty($mmr_stickers[$i]['title_size_large'])) $mmr_stickers[$i]['title_size_large']                = "20";
}
foreach ($languages as $language) {
if(!isset($mmr_stickers[1]['caption'][$language['language_id']])) $mmr_stickers[1]['caption'][$language['language_id']]  = $column_rating;
if(!isset($mmr_stickers[2]['title'][$language['language_id']])) $mmr_stickers[2]['title'][$language['language_id']]      = "Custom";
if(!isset($mmr_stickers[2]['caption'][$language['language_id']])) $mmr_stickers[2]['caption'][$language['language_id']]  = "Text";
if(!isset($mmr_stickers[3]['title'][$language['language_id']])) $mmr_stickers[3]['title'][$language['language_id']]      = "HOT";
if(!isset($mmr_stickers[3]['caption'][$language['language_id']])) $mmr_stickers[3]['caption'][$language['language_id']]  = "Deal";
if(!isset($mmr_stickers[4]['title'][$language['language_id']])) $mmr_stickers[4]['title'][$language['language_id']]      = "TOP";
if(!isset($mmr_stickers[4]['caption'][$language['language_id']])) $mmr_stickers[4]['caption'][$language['language_id']]  = "Views";
if(!isset($mmr_stickers[5]['title'][$language['language_id']])) $mmr_stickers[5]['title'][$language['language_id']]      = "NEW";
if(!isset($mmr_stickers[5]['caption'][$language['language_id']])) $mmr_stickers[5]['caption'][$language['language_id']]  = "Product";
if(!isset($mmr_stickers[6]['title'][$language['language_id']])) $mmr_stickers[6]['title'][$language['language_id']]      = "TOP";
if(!isset($mmr_stickers[6]['caption'][$language['language_id']])) $mmr_stickers[6]['caption'][$language['language_id']]  = "Votes";
if(!isset($mmr_stickers[7]['title'][$language['language_id']])) $mmr_stickers[7]['title'][$language['language_id']]      = "Custom";
if(!isset($mmr_stickers[7]['caption'][$language['language_id']])) $mmr_stickers[7]['caption'][$language['language_id']]  = "Text 2";
if(!isset($mmr_stickers[8]['title'][$language['language_id']])) $mmr_stickers[8]['title'][$language['language_id']]      = "Custom";
if(!isset($mmr_stickers[8]['caption'][$language['language_id']])) $mmr_stickers[8]['caption'][$language['language_id']]  = "Text 3";
if(!isset($mmr_stickers[9]['title'][$language['language_id']])) $mmr_stickers[9]['title'][$language['language_id']]      = "Custom";
if(!isset($mmr_stickers[9]['caption'][$language['language_id']])) $mmr_stickers[9]['caption'][$language['language_id']]  = "Text 4";
if(empty($mmr_common_product_code_caption[$language['language_id']])) $mmr_common_product_code_caption[$language['language_id']] = "№";
}
if(empty($mmr_stickers[1]['icon'])) $mmr_stickers[1]['icon']                                          = "star";
if(empty($mmr_stickers[1]['icon_color'])) $mmr_stickers[1]['icon_color']                              = "dac9a5";
if(empty($mmr_stickers[1]['title_size_small'])) $mmr_stickers[1]['title_size_small']                  = "25";
if(empty($mmr_stickers[1]['title_size_large'])) $mmr_stickers[1]['title_size_large']                  = "32";
if(empty($mmr_stickers[1]['caption_color'])) $mmr_stickers[1]['caption_color']                        = "baa882";
if(empty($mmr_stickers[2]['icon_color'])) $mmr_stickers[2]['icon_color']                              = "bbb";
if(empty($mmr_stickers[2]['caption_color'])) $mmr_stickers[2]['caption_color']                        = "aaa";
if(empty($mmr_stickers[2]['limit'])) $mmr_stickers[2]['limit']                                        = "ean";
if(empty($mmr_stickers[3]['icon_color'])) $mmr_stickers[3]['icon_color']                              = "d9a5a5";
if(empty($mmr_stickers[3]['caption_color'])) $mmr_stickers[3]['caption_color']                        = "b88282";
if(empty($mmr_stickers[4]['icon_color'])) $mmr_stickers[4]['icon_color']                              = "a5cbd9";
if(empty($mmr_stickers[4]['caption_color'])) $mmr_stickers[4]['caption_color']                        = "82aaba";
if(empty($mmr_stickers[4]['limit'])) $mmr_stickers[4]['limit']                                        = "1000";
if(empty($mmr_stickers[5]['icon_color'])) $mmr_stickers[5]['icon_color']                              = "b4d9a5";
if(empty($mmr_stickers[5]['caption_color'])) $mmr_stickers[5]['caption_color']                        = "92b882";
if(empty($mmr_stickers[5]['limit'])) $mmr_stickers[5]['limit']                                        = "30";
if(empty($mmr_stickers[6]['icon_color'])) $mmr_stickers[6]['icon_color']                              = "dac9a5";
if(empty($mmr_stickers[6]['caption_color'])) $mmr_stickers[6]['caption_color']                        = "baa882";
if(empty($mmr_stickers[6]['limit'])) $mmr_stickers[6]['limit']                                        = "5";
if(empty($mmr_stickers[7]['icon_color'])) $mmr_stickers[7]['icon_color']                              = "bbb";
if(empty($mmr_stickers[7]['caption_color'])) $mmr_stickers[7]['caption_color']                        = "aaa";
if(empty($mmr_stickers[7]['limit'])) $mmr_stickers[7]['limit']                                        = "jan";
if(empty($mmr_stickers[8]['icon_color'])) $mmr_stickers[8]['icon_color']                              = "bbb";
if(empty($mmr_stickers[8]['caption_color'])) $mmr_stickers[8]['caption_color']                        = "aaa";
if(empty($mmr_stickers[8]['limit'])) $mmr_stickers[8]['limit']                                        = "isbn";
if(empty($mmr_stickers[9]['icon_color'])) $mmr_stickers[9]['icon_color']                              = "bbb";
if(empty($mmr_stickers[9]['caption_color'])) $mmr_stickers[9]['caption_color']                        = "aaa";
if(empty($mmr_stickers[9]['limit'])) $mmr_stickers[9]['limit']                                        = "mpn";
?>

<!-- setting up styles -->
<style type="text/css">
  h2 {
    border-width: 0px !important;
  }
  h3 {
    font-size: 15px;
  }
  h4 {
    font-size: 13px;
    margin-bottom: 0px;
   }
  .themes {
    line-height: 18px;
  }
  .themes > div {
    display: inline-block;
    width: 24%;
  }
  .themes img {
    border-radius: 4px;
    margin-bottom: -1px;
    margin-right: 3px;
    margin-left: 5px;
  }
  .custom_theme_color > div {
    display: inline-block;
    width: 24%;
  }
  .custom_theme_color .color_box {
    display: inline-block;
    height: 18px;
    width: 18px;
    border-radius: 4px;
    margin-bottom: -1px;
    margin-right: 3px;
    margin-left: 5px;
  }
  .modal_link {
    text-decoration: none;
    border-bottom: 1px dashed;
  }
  .long_text {width: 336px;}
  .nowrap {white-space: nowrap;}
  .important {color: #f00;}
  .vtop {vertical-align: top;}
  .inline {display: inline;}
  .bottom-no-border {border-bottom: 0px !important;}
  .or {margin: 5px 0 5px 55px;}
  .hidden {display: none !important;}
</style>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="apply()" class="button hidden"><span><?php echo $button_apply; ?></span></a><script language="javascript">function apply(){$('#form').append('<input type="hidden" id="apply" name="apply" value="1"  />'); $('#form').submit();}</script><a onclick="$('#form').submit();" class="button hidden"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div id="tabs" class="htabs">
          <a href="#tab-themes"><?php echo $entry_tab_themes; ?></a>
          <a href="#tab-common"><?php echo $entry_tab_common; ?></a>
          <a href="#tab-header"><?php echo $entry_tab_header; ?></a>
          <a href="#tab-product"><?php echo $entry_tab_product; ?></a>
          <a href="#tab-catalog"><?php echo $entry_tab_catalog; ?></a>
          <a href="#tab-footer"><?php echo $entry_tab_footer; ?></a>
          <a href="#tab-builtin_modules"><?php echo $entry_tab_builtin_modules; ?></a>
          <a href="#tab-help"><?php echo $entry_tab_help; ?></a>
        </div>

        <div id="tab-themes">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_themes; ?></h2>
                <span class="help"><?php echo $entry_themes_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_mode; ?>
              </td>
              <td>
                <?php if (isset($mmr_themes_mode)&&$mmr_themes_mode==1) { ?>
                <input type="radio" name="mmr_themes_mode" value="1" checked="checked" />
                <?php echo $entry_themes_custom; ?>
                <input type="radio" name="mmr_themes_mode" value="2" />
                <?php echo $entry_themes_builtin; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_themes_mode" value="1" />
                <?php echo $entry_themes_custom; ?>
                <input type="radio" name="mmr_themes_mode" value="2" checked="checked" />
                <?php echo $entry_themes_builtin; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_responsive_disabled; ?>
              </td>
              <td>
                <?php if ($mmr_themes_responsive_disabled) { ?>
                <input type="radio" name="mmr_themes_responsive_disabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_themes_responsive_disabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_themes_responsive_disabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_themes_responsive_disabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_rounded_disabled; ?>
              </td>
              <td>
                <?php if ($mmr_themes_rounded_disabled) { ?>
                <input type="radio" name="mmr_themes_rounded_disabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_themes_rounded_disabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_themes_rounded_disabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_themes_rounded_disabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_transparent_disabled; ?>
              </td>
              <td>
                <?php if ($mmr_themes_transparent_disabled) { ?>
                <input type="radio" name="mmr_themes_transparent_disabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_themes_transparent_disabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_themes_transparent_disabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_themes_transparent_disabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_themes_builtin; ?></h2>
              </td>
            </tr>
            <tr>
              <td class="vtop">
                <?php echo $entry_themes_builtin; ?>
                <span class="help"><?php echo $entry_icon_help; ?></span>
              </td>
              <td class="themes">
                <select name="mmr_themes_builtin_theme">
                  <?php for ($i = 1; $i <= 16; $i++) {
                          ($mmr_themes_builtin_theme == $i) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                  <?php } ?>
                </select>
                <br /><br />
                <div>
                <span class="help inline">1.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-1.jpg" /> <span class="help inline">Clear white</span><br />
                <span class="help inline">2.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-2.jpg" /> <span class="help inline">Kaleidoscope</span><br />
                <span class="help inline">3.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-3.jpg" /> <span class="help inline">Damask</span><br />
                <span class="help inline">4.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-4.jpg" /> <span class="help inline">Wood</span>
                </div>
                <div>
                <span class="help inline">5.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-5.jpg" /> <span class="help inline">Yummy</span><br />
                <span class="help inline">6.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-6.jpg" /> <span class="help inline">Joyous</span><br />
                <span class="help inline">7.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-7.jpg" /> <span class="help inline">Mixed</span><br />
                <span class="help inline">8.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-8.jpg" /> <span class="help inline">Sakura Bark</span>
                </div>
                <div>
                <span class="help inline">&nbsp;&nbsp;9.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-9.jpg" /> <span class="help inline">Supernova</span><br />
                <span class="help inline">10.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-10.jpg" /> <span class="help inline">Solar Flare</span><br />
                <span class="help inline">11.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-11.jpg" /> <span class="help inline">Neptune</span><br />
                <span class="help inline">12.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-12.jpg" /> <span class="help inline">Black Wood</span>
                </div>
                <div>
                <span class="help inline">13.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-13.jpg" /> <span class="help inline">Moonlight</span><br />
                <span class="help inline">14.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-14.jpg" /> <span class="help inline">Red Dwarf</span><br />
                <span class="help inline">15.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-15.jpg" /> <span class="help inline">Woven</span><br />
                <span class="help inline">16.</span><img src="../catalog/view/theme/moneymaker/image/moneymaker-themes-16.jpg" /> <span class="help inline">Deep Space</span>
                </div>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_themes_custom; ?></h2>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_custom_brightness; ?>
              </td>
              <td>
                <?php if ($mmr_themes_custom_brightness) { ?>
                <input type="radio" name="mmr_themes_custom_brightness" value="1" checked="checked" />
                <?php echo $entry_light; ?>
                <input type="radio" name="mmr_themes_custom_brightness" value="0" />
                <?php echo $entry_dark; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_themes_custom_brightness" value="1" />
                <?php echo $entry_light; ?>
                <input type="radio" name="mmr_themes_custom_brightness" value="0" checked="checked" />
                <?php echo $entry_dark; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td class="vtop">
                <?php echo $entry_themes_custom_color; ?>
                <span class="help"><?php echo $entry_icon_help; ?></span>
              </td>
              <td class="custom_theme_color">
                <select name="mmr_themes_custom_color">
                  <?php for ($i = 1; $i <= 16; $i++) {
                          ($mmr_themes_custom_color == $i) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                  <?php } ?>
                </select>
                <br /><br />
                <div>
                  <span class="help inline">1.</span><div class="color_box" style="background-color: #428bca;"></div> <span class="help inline">Blue Ivy</span><br />
                  <span class="help inline">2.</span><div class="color_box" style="background-color: #6088ab;"></div> <span class="help inline">Slate Gray</span><br />
                  <span class="help inline">3.</span><div class="color_box" style="background-color: #5cb85c;"></div> <span class="help inline">Kelly Green</span><br />
                  <span class="help inline">4.</span><div class="color_box" style="background-color: #5d875d;"></div> <span class="help inline">Sea Green</span><br />
                </div>
                <div>
                  <span class="help inline">5.</span><div class="color_box" style="background-color: #f0ad4e;"></div> <span class="help inline">Sandy Brown</span><br />
                  <span class="help inline">6.</span><div class="color_box" style="background-color: #b39655;"></div> <span class="help inline">Fall Leaf</span><br />
                  <span class="help inline">7.</span><div class="color_box" style="background-color: #5bc0de;"></div> <span class="help inline">Cyan</span><br />
                  <span class="help inline">8.</span><div class="color_box" style="background-color: #c45bde;"></div> <span class="help inline">Magenta</span><br />
                </div>
                <div>
                  <span class="help inline">&nbsp;&nbsp;9.</span><div class="color_box" style="background-color: #a068ad;"></div> <span class="help inline">Violet</span><br />
                  <span class="help inline">10.</span><div class="color_box" style="background-color: #d9534f;"></div> <span class="help inline">Red</span><br />
                  <span class="help inline">11.</span><div class="color_box" style="background-color: #a65f5d;"></div> <span class="help inline">Pale Cherry</span><br />
                  <span class="help inline">12.</span><div class="color_box" style="background-color: #deb887;"></div> <span class="help inline">Burly Wood</span><br />
                </div>
                <div>
                  <span class="help inline">13.</span><div class="color_box" style="background-color: #008080;"></div> <span class="help inline">Teal</span><br />
                  <span class="help inline">14.</span><div class="color_box" style="background-color: #fbb917;"></div> <span class="help inline">Saffron</span><br />
                  <span class="help inline">15.</span><div class="color_box" style="background-color: #837e7c;"></div> <span class="help inline">Granite</span><br />
                  <span class="help inline">16.</span><div class="color_box" style="background-color: #504a4b;"></div> <span class="help inline">Gray Wolf</span><br />
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_custom_bg_mode; ?>
              </td>
              <td>
                <?php if ($mmr_themes_custom_bg_mode) { ?>
                <input type="radio" name="mmr_themes_custom_bg_mode" value="1" checked="checked" />
                <?php echo $entry_image; ?>
                <input type="radio" name="mmr_themes_custom_bg_mode" value="0" />
                <?php echo $entry_solid_color; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_themes_custom_bg_mode" value="1" />
                <?php echo $entry_image; ?>
                <input type="radio" name="mmr_themes_custom_bg_mode" value="0" checked="checked" />
                <?php echo $entry_solid_color; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_solid_color; ?>
              </td>
              <td>
                <input type="text" name="mmr_themes_custom_bg_color" value="<?php echo $mmr_themes_custom_bg_color; ?>" size="6" class="color"  />
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_custom_bg_img; ?>
              </td>
              <td>
                <input type="hidden" name="mmr_themes_custom_bg_img" value="<?php echo $mmr_themes_custom_bg_img; ?>" id="mmr_themes_custom_bg_img" />
                <img src="<?php echo $mmr_themes_custom_bg_img_preview; ?>" alt="" id="mmr_themes_custom_bg_img_preview" />
                <br /><a onclick="image_upload('mmr_themes_custom_bg_img', 'mmr_themes_custom_bg_img_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#mmr_themes_custom_bg_img_preview').attr('src', '<?php echo $no_image; ?>'); $('#mmr_themes_custom_bg_img').attr('value', '');"><?php echo $text_clear; ?></a>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_custom_bg_attachment; ?>
              </td>
              <td>
                <select name="mmr_themes_custom_bg_attachment">
                  <?php foreach ($mmr_bg_attachments as $mmr_bg_attachment) { ?>
                  <?php ($mmr_bg_attachment == $mmr_themes_custom_bg_attachment) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $mmr_bg_attachment; ?>" <?php echo $active; ?>><?php echo $mmr_bg_attachment; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_custom_bg_position; ?>
              </td>
              <td>
                <select name="mmr_themes_custom_bg_position">
                  <?php foreach ($mmr_bg_positions as $mmr_bg_position) { ?>
                  <?php ($mmr_bg_position == $mmr_themes_custom_bg_position) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $mmr_bg_position; ?>" <?php echo $active; ?>><?php echo $mmr_bg_position; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_themes_custom_bg_repeat; ?>
              </td>
              <td>
                <select name="mmr_themes_custom_bg_repeat">
                  <?php foreach ($mmr_bg_repeats as $mmr_bg_repeat) { ?>
                  <?php ($mmr_bg_repeat == $mmr_themes_custom_bg_repeat) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $mmr_bg_repeat; ?>" <?php echo $active; ?>><?php echo $mmr_bg_repeat; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
          </table>
        </div>

        <div id="tab-common">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_common; ?></h2>
                <span class="help"><?php echo $entry_common_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_btn_wishlist_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_common_btn_wishlist_hidden) { ?>
                <input type="radio" name="mmr_common_btn_wishlist_hidden" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_btn_wishlist_hidden" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_btn_wishlist_hidden" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_btn_wishlist_hidden" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_btn_compare_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_common_btn_compare_hidden) { ?>
                <input type="radio" name="mmr_common_btn_compare_hidden" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_btn_compare_hidden" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_btn_compare_hidden" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_btn_compare_hidden" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_scrolltotop; ?>
              </td>
              <td>
                <?php if ($mmr_common_scrolltotop_enabled) { ?>
                <input type="radio" name="mmr_common_scrolltotop_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_scrolltotop_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_scrolltotop_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_scrolltotop_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>

          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_common_product_details; ?></h2>
                <span class="help"><?php echo $entry_common_product_details_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_stock_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_common_catalog_stock_enabled) { ?>
                <input type="radio" name="mmr_common_catalog_stock_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_stock_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_catalog_stock_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_stock_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_catalog; ?>)</span>
                <br />
                <?php if ($mmr_common_bestsellers_stock_enabled) { ?>
                <input type="radio" name="mmr_common_bestsellers_stock_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_stock_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_bestsellers_stock_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_stock_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_bestsellers; ?>)</span>
                <br />
                <?php if ($mmr_common_featured_stock_enabled) { ?>
                <input type="radio" name="mmr_common_featured_stock_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_stock_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_featured_stock_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_stock_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_featured; ?>)</span>
                <br />
                <?php if ($mmr_common_latest_stock_enabled) { ?>
                <input type="radio" name="mmr_common_latest_stock_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_stock_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_latest_stock_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_stock_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_latest; ?>)</span>
                <br />
                <?php if ($mmr_common_specials_stock_enabled) { ?>
                <input type="radio" name="mmr_common_specials_stock_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_stock_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_specials_stock_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_stock_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_specials; ?>)</span>
                <br />
                <?php if ($mmr_common_related_stock_enabled) { ?>
                <input type="radio" name="mmr_common_related_stock_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_stock_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_related_stock_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_stock_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_product; ?> > <?php echo $entry_modules_related; ?>)</span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_h1_code_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_common_catalog_product_code_enabled) { ?>
                <input type="radio" name="mmr_common_catalog_product_code_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_product_code_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_catalog_product_code_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_product_code_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_catalog; ?>)</span>
                <br />
                <?php if ($mmr_common_bestsellers_product_code_enabled) { ?>
                <input type="radio" name="mmr_common_bestsellers_product_code_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_product_code_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_bestsellers_product_code_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_product_code_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_bestsellers; ?>)</span>
                <br />
                <?php if ($mmr_common_featured_product_code_enabled) { ?>
                <input type="radio" name="mmr_common_featured_product_code_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_product_code_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_featured_product_code_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_product_code_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_featured; ?>)</span>
                <br />
                <?php if ($mmr_common_latest_product_code_enabled) { ?>
                <input type="radio" name="mmr_common_latest_product_code_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_product_code_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_latest_product_code_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_product_code_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_latest; ?>)</span>
                <br />
                <?php if ($mmr_common_specials_product_code_enabled) { ?>
                <input type="radio" name="mmr_common_specials_product_code_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_product_code_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_specials_product_code_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_product_code_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_specials; ?>)</span>
                <br />
                <?php if ($mmr_common_related_product_code_enabled) { ?>
                <input type="radio" name="mmr_common_related_product_code_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_product_code_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_related_product_code_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_product_code_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_product; ?> > <?php echo $entry_modules_related; ?>)</span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_code_field; ?>
              </td>
              <td>
                <select name="mmr_common_product_code_field">
                  <?php foreach ($mmr_sticker_custom_fields as $field) { ?>
                  <?php ($field ==  $mmr_common_product_code_field) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $field; ?>" <?php echo $active; ?>><?php echo $field; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_code_caption; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="mmr_common_product_code_caption[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_common_product_code_caption[$language['language_id']]) ? $mmr_common_product_code_caption[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_descriptions_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_common_catalog_descriptions_enabled) { ?>
                <input type="radio" name="mmr_common_catalog_descriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_descriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_catalog_descriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_descriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_catalog; ?>)</span>
                <br />
                <?php if ($mmr_common_bestsellers_descriptions_enabled) { ?>
                <input type="radio" name="mmr_common_bestsellers_descriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_descriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_bestsellers_descriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_descriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_bestsellers; ?>)</span>
                <br />
                <?php if ($mmr_common_featured_descriptions_enabled) { ?>
                <input type="radio" name="mmr_common_featured_descriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_descriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_featured_descriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_descriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_featured; ?>)</span>
                <br />
                <?php if ($mmr_common_latest_descriptions_enabled) { ?>
                <input type="radio" name="mmr_common_latest_descriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_descriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_latest_descriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_descriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_latest; ?>)</span>
                <br />
                <?php if ($mmr_common_specials_descriptions_enabled) { ?>
                <input type="radio" name="mmr_common_specials_descriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_descriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_specials_descriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_descriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_specials; ?>)</span>
                <br />
                <?php if ($mmr_common_related_descriptions_enabled) { ?>
                <input type="radio" name="mmr_common_related_descriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_descriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_related_descriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_descriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_product; ?> > <?php echo $entry_modules_related; ?>)</span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_descriptions_limit; ?>
              </td>
              <td>
                <input type="text" size="2" name="mmr_common_descriptions_limit" value="<?php echo $mmr_common_descriptions_limit; ?>" /> <span class="help inline"><?php echo $entry_characters; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_attributes_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_common_catalog_attributes_enabled) { ?>
                <input type="radio" name="mmr_common_catalog_attributes_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_attributes_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_catalog_attributes_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_attributes_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_catalog; ?>)</span>
                <br />
                <?php if ($mmr_common_bestsellers_attributes_enabled) { ?>
                <input type="radio" name="mmr_common_bestsellers_attributes_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_attributes_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_bestsellers_attributes_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_attributes_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_bestsellers; ?>)</span>
                <br />
                <?php if ($mmr_common_featured_attributes_enabled) { ?>
                <input type="radio" name="mmr_common_featured_attributes_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_attributes_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_featured_attributes_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_attributes_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_featured; ?>)</span>
                <br />
                <?php if ($mmr_common_latest_attributes_enabled) { ?>
                <input type="radio" name="mmr_common_latest_attributes_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_attributes_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_latest_attributes_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_attributes_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_latest; ?>)</span>
                <br />
                <?php if ($mmr_common_specials_attributes_enabled) { ?>
                <input type="radio" name="mmr_common_specials_attributes_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_attributes_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_specials_attributes_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_attributes_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_specials; ?>)</span>
                <br />
                <?php if ($mmr_common_related_attributes_enabled) { ?>
                <input type="radio" name="mmr_common_related_attributes_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_attributes_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_related_attributes_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_attributes_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_product; ?> > <?php echo $entry_modules_related; ?>)</span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_attributes_delimiter; ?>
              </td>
              <td>
                <input type="text" size="2" name="mmr_common_attributes_delimiter" value="<?php echo $mmr_common_attributes_delimiter; ?>" />
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_attributes_limit; ?>
              </td>
              <td>
                <input type="text" size="2" name="mmr_common_attributes_limit" value="<?php echo $mmr_common_attributes_limit; ?>" /> <span class="help inline"><?php echo $entry_characters; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_metadescriptions_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_common_catalog_metadescriptions_enabled) { ?>
                <input type="radio" name="mmr_common_catalog_metadescriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_metadescriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_catalog_metadescriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_catalog_metadescriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_catalog; ?>)</span>
                <br />
                <?php if ($mmr_common_bestsellers_metadescriptions_enabled) { ?>
                <input type="radio" name="mmr_common_bestsellers_metadescriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_metadescriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_bestsellers_metadescriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_bestsellers_metadescriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_bestsellers; ?>)</span>
                <br />
                <?php if ($mmr_common_featured_metadescriptions_enabled) { ?>
                <input type="radio" name="mmr_common_featured_metadescriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_metadescriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_featured_metadescriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_featured_metadescriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_featured; ?>)</span>
                <br />
                <?php if ($mmr_common_latest_metadescriptions_enabled) { ?>
                <input type="radio" name="mmr_common_latest_metadescriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_metadescriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_latest_metadescriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_latest_metadescriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_latest; ?>)</span>
                <br />
                <?php if ($mmr_common_specials_metadescriptions_enabled) { ?>
                <input type="radio" name="mmr_common_specials_metadescriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_metadescriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_specials_metadescriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_specials_metadescriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_modules; ?> > <?php echo $entry_modules_specials; ?>)</span>
                <br />
                <?php if ($mmr_common_related_metadescriptions_enabled) { ?>
                <input type="radio" name="mmr_common_related_metadescriptions_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_metadescriptions_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_related_metadescriptions_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_related_metadescriptions_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                &nbsp;<span class="help inline">(<?php echo $entry_tab_product; ?> > <?php echo $entry_modules_related; ?>)</span>
              </td>
            </tr>
          </table>

          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_availability; ?></h2>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_addtocart_hide_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_common_addtocart_hide_enabled) { ?>
                <input type="radio" name="mmr_common_addtocart_hide_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_addtocart_hide_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_addtocart_hide_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_addtocart_hide_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_stock_availability_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_common_stock_availability_hidden) { ?>
                <input type="radio" name="mmr_common_stock_availability_hidden" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_stock_availability_hidden" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_stock_availability_hidden" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_stock_availability_hidden" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td class="bottom-no-border">
                <?php echo $entry_common_stock_visualization_enabled; ?>
              </td>
              <td class="bottom-no-border">
                <?php if ($mmr_common_stock_visualization_enabled) { ?>
                <input type="radio" name="mmr_common_stock_visualization_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_stock_visualization_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_stock_visualization_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_stock_visualization_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_color; ?> (<?php echo $entry_text; ?>)
              </td>
              <td>
                <input type="text" name="mmr_common_stock_available_color" value="<?php echo $mmr_common_stock_available_color; ?>" size="6" class="color"  /> <span class="help inline"><?php echo $entry_common_stock_available_color; ?></span>
                <br />
                <input type="text" name="mmr_common_stock_unavailable_color" value="<?php echo $mmr_common_stock_unavailable_color; ?>" size="6" class="color"  /> <span class="help inline"><?php echo $entry_common_stock_unavailable_color; ?></span>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_catalog_recaptcha; ?></h2>
                <span class="help"><?php echo $entry_catalog_recaptcha_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $text_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_recaptcha_enabled) { ?>
                <input type="radio" name="mmr_catalog_recaptcha_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_recaptcha_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_recaptcha_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_recaptcha_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_recaptcha_public_key; ?>
              </td>
              <td>
                <input type="text" size="61" name="mmr_catalog_recaptcha_public_key" value="<?php echo isset($mmr_catalog_recaptcha_public_key) ? $mmr_catalog_recaptcha_public_key : ''; ?>" />
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_recaptcha_private_key; ?>
              </td>
              <td>
                <input type="text" size="61" name="mmr_catalog_recaptcha_private_key" value="<?php echo isset($mmr_catalog_recaptcha_private_key) ? $mmr_catalog_recaptcha_private_key : ''; ?>" />
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_header_custom_css; ?></h2>
              </td>
            </tr>
            <!--tr>
              <td>
                <?php echo $text_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_header_custom_css_enabled) { ?>
                <input type="radio" name="mmr_header_custom_css_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_custom_css_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_custom_css_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_custom_css_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr-->
            <tr>
              <td>
                <?php echo $text_enabled; ?>
              </td>
              <td>
                <input type="radio" name="mmr_header_custom_css_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <!--input type="radio" name="mmr_header_custom_css_enabled" value="0" /-->
                <?php //echo $text_no; ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_custom_css; ?>
                <span class="help">
                <?php $filename = '../catalog/view/theme/moneymaker/stylesheet/moneymaker-custom.css';
                $styles_init = require_once('../catalog/view/theme/moneymaker/template/module/init.tpl');
                $styles = $styles_init.html_entity_decode($mmr_header_custom_css, ENT_QUOTES, 'UTF-8');

                if (is_writable($filename)) {
                  if ($styles) {
                    if (!$handle = fopen($filename, 'w')) { echo '<span style="color: #f00">open error</span>'; exit; }
                if (fwrite($handle, $styles) === FALSE) { echo '<span style="color: #f00">write error</span>'; exit; }
                echo '<span style="color: #090">stylesheet-custom.css updated</span>'; fclose($handle);
                } else {
                echo '<span style="color: #090">nothing to save</span>';
                }
                } else {
                echo '<span style="color: #f00">write error or file stylesheet-custom.css not found</span>';
                }

                ?>
                </span>
              </td>
              <td>
                <textarea rows="3" cols="64" name="mmr_header_custom_css"><?php echo isset($mmr_header_custom_css) ? $mmr_header_custom_css : ''; ?></textarea>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_header_custom_js; ?></h2>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $text_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_header_custom_js_enabled) { ?>
                <input type="radio" name="mmr_header_custom_js_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_custom_js_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_custom_js_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_custom_js_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_custom_js; ?>
              </td>
              <td>
                <textarea rows="3" cols="64" name="mmr_header_custom_js"><?php echo isset($mmr_header_custom_js) ? $mmr_header_custom_js : ''; ?></textarea>
              </td>
            </tr>
          </table>
        </div>
        
        <div id="tab-header">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_header; ?></h2>
                <span class="help"><?php echo $entry_header_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_common_header_fixed; ?>
              </td>
              <td>
                <?php if ($mmr_common_header_fixed) { ?>
                <input type="radio" name="mmr_common_header_fixed" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_header_fixed" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_common_header_fixed" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_common_header_fixed" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_dropdown_hover_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_header_dropdown_hover_enabled) { ?>
                <input type="radio" name="mmr_header_dropdown_hover_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_dropdown_hover_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_dropdown_hover_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_dropdown_hover_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_dropdown_hover_delay_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_header_dropdown_hover_delay_enabled) { ?>
                <input type="radio" name="mmr_header_dropdown_hover_delay_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_dropdown_hover_delay_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_dropdown_hover_delay_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_dropdown_hover_delay_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_small_cart_btn_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_header_small_cart_btn_enabled) { ?>
                <input type="radio" name="mmr_header_small_cart_btn_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_small_cart_btn_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_small_cart_btn_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_small_cart_btn_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_brand_caption; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="mmr_header_brand_caption[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_header_brand_caption[$language['language_id']]) ? $mmr_header_brand_caption[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_header_livesearch; ?></h2>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $text_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_header_livesearch_enabled) { ?>
                <input type="radio" name="mmr_header_livesearch_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_livesearch_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_livesearch_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_livesearch_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_header_categories; ?></h2>
                <span class="help"><?php echo $entry_header_categories_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_categories_description_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_header_categories_description_hidden) { ?>
                <input type="radio" name="mmr_header_categories_description_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_categories_description_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_categories_description_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_categories_description_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_categories_child_image_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_header_categories_child_image_hidden) { ?>
                <input type="radio" name="mmr_header_categories_child_image_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_categories_child_image_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_categories_child_image_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_categories_child_image_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_columns; ?>
              </td>
              <td>
                <span class="help"><?php echo $entry_header_categories_columns_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_categories_description_limit; ?>
              </td>
              <td>
                <input type="text" size="2" name="mmr_header_categories_description_limit" value="<?php echo $mmr_header_categories_description_limit; ?>" /> <span class="help inline"><?php echo $entry_characters; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_categories_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_header_categories_hidden) { ?>
                <input type="radio" name="mmr_header_categories_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_categories_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_categories_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_categories_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_categories_hide_limit; ?>
              </td>
              <td>
                <select name="mmr_header_categories_hide_limit">
                  <?php for ($i = 1; $i <= 15; $i++) {
                        ($mmr_header_categories_hide_limit == $i) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>

            <tr>
              <td>
                <?php echo $entry_header_categories_mobile_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_header_categories_mobile_enabled) { ?>
                <input type="radio" name="mmr_header_categories_mobile_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_categories_mobile_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_categories_mobile_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_categories_mobile_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>

          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_header_links; ?></h2>
                <span class="help"><?php echo $entry_header_links_help; ?></span>
              </td>
            </tr>
          </table>
          <div class="vtabs vtabs1">
            <?php $header_link_row = 1; ?>
            <?php foreach ($header_links as $header_link) { ?>
            <a href="#header_link-<?php echo $header_link_row; ?>" id="header_link_vtab-<?php echo $header_link_row; ?>"><?php echo $entry_header_link . ' ' . $header_link_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#header_link_vtab-<?php echo $header_link_row; ?>').remove(); $('#header_link-<?php echo $header_link_row; ?>').remove(); return false;" /></a>
            <?php $header_link_row++; ?>
            <?php } ?>
            <span id="header_link_vtab_add"><?php echo $entry_add_link; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addHeaderLink();" /></span>
          </div>
          <div class="vtabs-content" id="header_link-vtabs">
            <?php $header_link_row = 1; ?>
            <?php foreach ($header_links as $header_link) { ?>
            <div id="header_link-<?php echo $header_link_row; ?>">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_header_link; ?> <?php echo $header_link_row; ?></h3>
                  </td>
                </tr>
                <tr>
                  <td><?php echo $entry_title; ?></td>
                  <td>
                    <?php foreach ($languages as $language) { ?>
                    <input type="text" name="mmr_header_links[<?php echo $header_link_row; ?>][text][<?php echo $language['language_id']; ?>]" value="<?php echo isset($header_link['text'][$language['language_id']]) ? $header_link['text'][$language['language_id']] : ''; ?>" />
                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_header_link_mode; ?>
                  </td>
                  <td>
                    <?php if ($header_link['link_mode']) { ?>
                    <input type="radio" name="mmr_header_links[<?php echo $header_link_row; ?>][link_mode]" value="0" />
                    <?php echo $entry_information; ?>
                    <input type="radio" name="mmr_header_links[<?php echo $header_link_row; ?>][link_mode]" value="1" checked="checked" />
                    <?php echo $entry_url; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_header_links[<?php echo $header_link_row; ?>][link_mode]" value="0" checked="checked" />
                    <?php echo $entry_information; ?>
                    <input type="radio" name="mmr_header_links[<?php echo $header_link_row; ?>][link_mode]" value="1" />
                    <?php echo $entry_url; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_link; ?>
                  </td>
                  <td>
                    <select name="mmr_header_links[<?php echo $header_link_row; ?>][link_id]">
                      <option value="0"><?php echo $text_select ?></option>
                      <?php foreach ($informations as $information) { ?>
                      <option value="<?php echo $information['information_id'] ?>" <?php if ($information['information_id'] == $header_link['link_id']) { ?>selected="selected"<?php } ?>><?php echo $information['title'] ?></option>
                      <?php } ?>
                    </select> <span class="help inline"><?php echo $entry_information; ?></span><div class="help or"><?php echo $text_or; ?></div>
                    <input type="text" size="21" name="mmr_header_links[<?php echo $header_link_row; ?>][link_url]" value="<?php echo isset($header_link['link_url']) ? $header_link['link_url'] : ''; ?>" /> <span class="help inline"><?php echo $entry_url; ?> (<?php echo $entry_header_link_mode_url_help; ?>)</span>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_icon; ?>
                  </td>
                  <td>
                    <?php if (isset($header_link['icon_mode'])&&$header_link['icon_mode']) { ?>
                    <input type="radio" name="mmr_header_links[<?php echo $header_link_row; ?>][icon_mode]" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_header_links[<?php echo $header_link_row; ?>][icon_mode]" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_header_links[<?php echo $header_link_row; ?>][icon_mode]" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_header_links[<?php echo $header_link_row; ?>][icon_mode]" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td class="vtop">
                    <?php echo $entry_icon; ?>
                    <span class="help"><?php echo $entry_icon_help; ?></span>
                  </td>
                  <td>
                    <select name="mmr_header_links[<?php echo $header_link_row; ?>][icon]" >
                      <?php if (isset($header_link['icon'])) { ?>
                      <?php for ($j = 1; $j <= count($mmr_fa_icons); $j++) {
                          ($header_link['icon'] == $mmr_fa_icons[$j]) ? $active = 'selected' : $active = ''; ?>
                      <option value="<?php echo $mmr_fa_icons[$j]; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                      <?php } ?>
                      <?php } else { ?>
                      <?php for ($j = 1; $j <= count($mmr_fa_icons); $j++) {
                          ($mmr_fa_icons[$j] == 1) ? $active = 'selected' : $active = ''; ?>
                      <option value="<?php echo $mmr_fa_icons[$j]; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select> <span class="inline"><a class="modal_link" target="_blank" href="../catalog/view/theme/moneymaker/image/fa-icons.png" ><?php echo $text_view;?></a></span>
                  </td>
                </tr>

              </table>
            </div>
            <?php $header_link_row++; ?>
            <?php } ?>
          </div>

          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_header_contacts; ?></h2>
                <span class="help"><?php echo $entry_header_contacts_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_contacts_address; ?>
              </td>
              <td>
                <?php if ($mmr_header_contacts_address_hidden) { ?>
                <input type="radio" name="mmr_header_contacts_address_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_contacts_address_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_contacts_address_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_contacts_address_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>

            <tr>
              <td>
                <?php echo $entry_header_contacts_address_text; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <input type="text" class="long_text" name="mmr_header_contacts_address[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_header_contacts_address[$language['language_id']]) ? $mmr_header_contacts_address[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>

            <tr>
              <td>
                <?php echo $entry_header_contacts_caption; ?>
              </td>
              <td>
                <?php if ($mmr_header_contacts_caption_enabled) { ?>
                <input type="radio" name="mmr_header_contacts_caption_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_contacts_caption_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_contacts_caption_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_contacts_caption_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_contacts_telephone_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_header_contacts_telephone_hidden) { ?>
                <input type="radio" name="mmr_header_contacts_telephone_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_contacts_telephone_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_header_contacts_telephone_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_header_contacts_telephone_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_caption; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <input type="text" class="long_text" name="mmr_header_contacts_caption[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_header_contacts_caption[$language['language_id']]) ? $mmr_header_contacts_caption[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>
          </table>
          <div class="vtabs vtabs2">
            <?php $header_contact_row = 1; ?>
            <?php foreach ($header_contacts as $header_contact) { ?>
            <a href="#header_contact-<?php echo $header_contact_row; ?>" id="header_contact_vtab-<?php echo $header_contact_row; ?>"><?php echo $entry_element . ' ' . $header_contact_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#header_contact_vtab-<?php echo $header_contact_row; ?>').remove(); $('#header_contact-<?php echo $header_contact_row; ?>').remove(); return false;" /></a>
            <?php $header_contact_row++; ?>
            <?php } ?>
            <span id="header_contact_vtab_add"><?php echo $entry_add_element; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addHeaderContact();" /></span>
          </div>
          <div class="vtabs-content" id="header_contact-vtabs">
            <?php $header_contact_row = 1; ?>
            <?php foreach ($header_contacts as $header_contact) { ?>
            <div id="header_contact-<?php echo $header_contact_row; ?>">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_element; ?> <?php echo $header_contact_row; ?></h3>
                    <span class="help"><?php echo $entry_header_contact_help; ?></span>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_header_contacts_mode; ?>
                  </td>
                  <td>
                    <select name="mmr_header_contacts[<?php echo $header_contact_row; ?>][mode]">
                      <option value="0"><?php echo $text_select ?></option>
                      <?php foreach ($mmr_contact_modes as $key => $mmr_contact_mode) { ?>
                      <option value="<?php echo $key; ?>" <?php if ($header_contact['mode'] == $key) { ?>selected="selected"<?php } ?>><?php echo $mmr_contact_mode; ?></option>
                      <?php } ?>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_header_contacts_mobiles; ?>
                  </td>
                  <td>
                    <select name="mmr_header_contacts[<?php echo $header_contact_row; ?>][mobile_icon]">
                      <option value="0"><?php echo $text_select ?></option>
                      <?php foreach ($mmr_contact_mobile_icons as $mmr_contact_mobile_icon) { ?>
                      <option value="<?php echo $mmr_contact_mobile_icon; ?>" <?php if ($mmr_contact_mobile_icon == $header_contact['mobile_icon']) { ?>selected="selected"<?php } ?>><?php echo $mmr_contact_mobile_icon; ?></option>
                      <?php } ?>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td class="vtop">
                    <?php echo $entry_icon; ?>
                    <span class="help"><?php echo $entry_icon_help; ?></span>
                  </td>
                  <td>
                    <select name="mmr_header_contacts[<?php echo $header_contact_row; ?>][icon]" >
                      <?php for ($j = 1; $j <= count($mmr_fa_icons); $j++) {
                        ($header_contact['icon'] == $mmr_fa_icons[$j]) ? $active = 'selected' : $active = ''; ?>
                      <option value="<?php echo $mmr_fa_icons[$j]; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                      <?php } ?>
                    </select> <span class="inline"><a class="modal_link" target="_blank" href="../catalog/view/theme/moneymaker/image/fa-icons.png" ><?php echo $text_view;?></a></span>
                  </td>
                </tr>
                <tr>
                  <td><?php echo $entry_text; ?> (<?php echo $entry_title; ?>)</td>
                  <td>
                    <?php foreach ($languages as $language) { ?>
                    <input type="text" name="mmr_header_contacts[<?php echo $header_contact_row; ?>][text][<?php echo $language['language_id']; ?>]" value="<?php echo isset($header_contact['text'][$language['language_id']]) ? $header_contact['text'][$language['language_id']] : ''; ?>" />
                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_link; ?>
                  </td>
                  <td>
                    <input type="text" name="mmr_header_contacts[<?php echo $header_contact_row; ?>][link]" value="<?php echo isset($header_contact['link']) ? $header_contact['link'] : ''; ?>" /> <span class="help inline"><?php echo $entry_optional; ?></span>
                  </td>
                </tr>
              </table>
            </div>
            <?php $header_contact_row++; ?>
            <?php } ?>
          </div>
        </div>

        <div id="tab-product">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_product; ?></h2>
                <span class="help"><?php echo $entry_product_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_gallery_type; ?>
              </td>
              <td>
                <select name="mmr_product_gallery_type">
                  <?php foreach ($mmr_product_galleries as $option) { ?>
                  <?php ($option ==  $mmr_product_gallery_type) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $option; ?>" <?php echo $active; ?>><?php echo $option; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_h1_meta_enabled; ?>
                <span class="help"><?php echo $entry_product_h1_meta_enabled_help; ?></span>
              </td>
              <td>
                <?php if ($mmr_product_h1_meta_enabled) { ?>
                <input type="radio" name="mmr_product_h1_meta_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_h1_meta_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_h1_meta_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_h1_meta_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_h1_code_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_product_h1_code_enabled) { ?>
                <input type="radio" name="mmr_product_h1_code_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_h1_code_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_h1_code_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_h1_code_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_code_field; ?>
              </td>
              <td>
                <select name="mmr_product_h1_code_field">
                  <?php foreach ($mmr_sticker_custom_fields as $field) { ?>
                  <?php ($field ==  $mmr_product_h1_code_field) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $field; ?>" <?php echo $active; ?>><?php echo $field; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                  <?php echo $entry_product_buy_caption_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_product_buy_caption_hidden) { ?>
                <input type="radio" name="mmr_product_buy_caption_hidden" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_buy_caption_hidden" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_buy_caption_hidden" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_buy_caption_hidden" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_product_sharing; ?></h2>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_sharing_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_product_sharing_enabled) { ?>
                <input type="radio" name="mmr_product_sharing_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_sharing_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_sharing_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_sharing_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_sharing_loading_delay; ?>
                <span class="help"><?php echo $entry_product_sharing_loading_delay_help; ?></span>
              </td>
              <td>
                <select name="mmr_product_sharing_loading_delay">
                  <?php for ($j = 100; $j <= 5000; $j=$j+100) {
                    ($mmr_product_sharing_loading_delay == $j) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $j; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                  <?php } ?>
                </select> <span class="help inline"><?php echo $entry_ms; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_sharing_yandex_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_product_sharing_yandex_enabled) { ?>
                <input type="radio" name="mmr_product_sharing_yandex_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_sharing_yandex_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_sharing_yandex_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_sharing_yandex_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_sharing_pluso_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_product_sharing_pluso_enabled) { ?>
                <input type="radio" name="mmr_product_sharing_pluso_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_sharing_pluso_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_sharing_pluso_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_sharing_pluso_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_sharing_custom_enabled; ?>
              </td>
              <td>
                <?php if ($mmr_product_sharing_custom_enabled) { ?>
                <input type="radio" name="mmr_product_sharing_custom_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_sharing_custom_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_sharing_custom_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_sharing_custom_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_custom_js; ?>
              </td>
              <td>
                <textarea rows="3" cols="64" name="mmr_product_sharing_custom"><?php echo isset($mmr_product_sharing_custom) ? $mmr_product_sharing_custom : ''; ?></textarea>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_images; ?></h2>
                <span class="help"><?php echo $entry_product_images_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_images_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_product_images_hidden) { ?>
                <input type="radio" name="mmr_product_images_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_images_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_images_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_images_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_images_hide_limit; ?>
              </td>
              <td>
                <select name="mmr_product_images_hide_limit">
                  <?php for ($i = 1; $i <= 15; $i++) {
                        ($mmr_product_images_hide_limit == $i) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_options; ?></h2>
                <span class="help"><?php echo $entry_product_options_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_options_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_product_options_hidden) { ?>
                <input type="radio" name="mmr_product_options_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_options_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_options_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_options_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_options_hide_limit; ?>
              </td>
              <td>
                <select name="mmr_product_options_hide_limit">
                  <?php for ($i = 1; $i <= 15; $i++) {
                        ($mmr_product_options_hide_limit == $i) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tabs; ?></h2>
                <span class="help"><?php echo $entry_product_tabs_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_tabs_disabled; ?>
                <span class="help"><?php echo $entry_product_tabs_disabled_help; ?></span>
              </td>
              <td>
                <?php if ($mmr_product_tabs_disabled) { ?>
                <input type="radio" name="mmr_product_tabs_disabled" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_tabs_disabled" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_tabs_disabled" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_product_tabs_disabled" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_tabs_mode; ?>
                <span class="help"><?php echo $entry_product_tabs_mode_help; ?></span>
              </td>
              <td>
                <?php if ($mmr_product_tabs_mode) { ?>
                <input type="radio" name="mmr_product_tabs_mode" value="1" checked="checked" />
                <?php echo $entry_tabs; ?>
                <input type="radio" name="mmr_product_tabs_mode" value="0" />
                <?php echo $entry_pills; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_product_tabs_mode" value="1" />
                <?php echo $entry_tabs; ?>
                <input type="radio" name="mmr_product_tabs_mode" value="0" checked="checked" />
                <?php echo $entry_pills; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <div class="vtabs">
            <a href="#product-description"><?php echo $entry_product_description; ?></a>
            <a href="#product-specification" class="selected"><?php echo $entry_product_specification; ?></a>
            <a href="#product-review"><?php echo $entry_product_review; ?></a>
            <?php $product_tab_row = 1; ?>
            <?php foreach ($product_tabs as $product_tab) { ?>
            <a href="#product_tab-<?php echo $product_tab_row; ?>" id="product_tab_vtab-<?php echo $product_tab_row; ?>"><?php echo $entry_tab . ' ' . $product_tab_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#product_tab_vtab-<?php echo $product_tab_row; ?>').remove(); $('#product_tab-<?php echo $product_tab_row; ?>').remove(); return false;" /></a>
            <?php $product_tab_row++; ?>
            <?php } ?>
            <span id="product_tab_vtab_add"><?php echo $entry_add_tab; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addProductTab();" /></span>
          </div>
          <div class="vtabs-content" id="product_tab-vtabs">
            <div id="product-description">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_product_description; ?></h3>
                    <span class="help"><?php echo $entry_font_customization_help; ?></span>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_description_disabled; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_description_disabled) { ?>
                    <input type="radio" name="mmr_product_description_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_description_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_description_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_description_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_tabs_cart_button_disabled; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_description_cart_button_disabled) { ?>
                    <input type="radio" name="mmr_product_description_cart_button_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_description_cart_button_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_description_cart_button_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_description_cart_button_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <h4><?php echo $entry_font; ?></h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_font_customization; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_description_font_customized) { ?>
                    <input type="radio" name="mmr_product_description_font_customized" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_description_font_customized" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_description_font_customized" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_description_font_customized" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_size; ?>
                  </td>
                  <td>
                    <select name="mmr_product_description_font_size">
                      <?php for ($i = 7; $i <= 32; $i++) {
                        ($mmr_product_description_font_size == $i) ? $active = 'selected' : $active = ''; ?>
                      <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                      <?php } ?>
                    </select> <span class="help inline"><?php echo $entry_px; ?></span>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_color; ?>
                  </td>
                  <td>
                    <input type="text" name="mmr_product_description_font_color" value="<?php echo $mmr_product_description_font_color; ?>" size="6" class="color"  />
                  </td>
                </tr>
              </table>
            </div>
            <div id="product-specification">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_product_specification; ?></h3>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_disabled; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_disabled) { ?>
                    <input type="radio" name="mmr_product_specification_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_model; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_model_disabled) { ?>
                    <input type="radio" name="mmr_product_specification_model_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_model_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_model_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_model_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_brand; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_brand_disabled) { ?>
                    <input type="radio" name="mmr_product_specification_brand_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_brand_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_brand_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_brand_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_weight; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_weight_disabled) { ?>
                    <input type="radio" name="mmr_product_specification_weight_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_weight_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_weight_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_weight_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_dimensions; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_dimensions_disabled) { ?>
                    <input type="radio" name="mmr_product_specification_dimensions_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_dimensions_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_dimensions_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_dimensions_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_headers; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_headers_disabled) { ?>
                    <input type="radio" name="mmr_product_specification_headers_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_headers_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_headers_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_headers_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_tabs_cart_button_disabled; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_cart_button_disabled) { ?>
                    <input type="radio" name="mmr_product_specification_cart_button_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_cart_button_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_cart_button_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_cart_button_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <h4><?php echo $entry_table; ?></h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_table_hover; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_table_hover) { ?>
                    <input type="radio" name="mmr_product_specification_table_hover" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_table_hover" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_table_hover" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_table_hover" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_table_striped; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_table_striped) { ?>
                    <input type="radio" name="mmr_product_specification_table_striped" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_table_striped" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_table_striped" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_table_striped" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_row_bordered; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_row_bordered) { ?>
                    <input type="radio" name="mmr_product_specification_row_bordered" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_row_bordered" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_row_bordered" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_row_bordered" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_table_bordered; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_table_bordered) { ?>
                    <input type="radio" name="mmr_product_specification_table_bordered" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_table_bordered" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_table_bordered" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_table_bordered" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_specification_table_condensed; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_table_condensed) { ?>
                    <input type="radio" name="mmr_product_specification_table_condensed" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_table_condensed" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_table_condensed" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_table_condensed" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <h4><?php echo $entry_font; ?></h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_font_customization; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_specification_font_customized) { ?>
                    <input type="radio" name="mmr_product_specification_font_customized" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_font_customized" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_specification_font_customized" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_specification_font_customized" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_size; ?>
                  </td>
                  <td>
                    <select name="mmr_product_specification_font_size">
                      <?php for ($i = 7; $i <= 32; $i++) {
                        ($mmr_product_specification_font_size == $i) ? $active = 'selected' : $active = ''; ?>
                      <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                      <?php } ?>
                    </select> <span class="help inline"><?php echo $entry_px; ?></span>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_color; ?>
                  </td>
                  <td>
                    <input type="text" name="mmr_product_specification_font_color" value="<?php echo $mmr_product_specification_font_color; ?>" size="6" class="color"  />
                  </td>
                </tr>
              </table>
            </div>
            <div id="product-review">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_product_review; ?></h3>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_review_visualization; ?>
                    <span class="help"><?php echo $entry_product_review_visualization_help; ?></span>
                  </td>
                  <td>
                    <?php if ($mmr_product_review_visualization) { ?>
                    <input type="radio" name="mmr_product_review_visualization" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_review_visualization" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_review_visualization" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_review_visualization" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_review_write; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_review_write) { ?>
                    <input type="radio" name="mmr_product_review_write" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_review_write" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_review_write" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_review_write" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_product_tabs_cart_button_disabled; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_review_cart_button_disabled) { ?>
                    <input type="radio" name="mmr_product_review_cart_button_disabled" value="0" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_review_cart_button_disabled" value="1" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_review_cart_button_disabled" value="0" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_review_cart_button_disabled" value="1" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <h4><?php echo $entry_font; ?></h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_font_customization; ?>
                  </td>
                  <td>
                    <?php if ($mmr_product_review_font_customized) { ?>
                    <input type="radio" name="mmr_product_review_font_customized" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_review_font_customized" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_review_font_customized" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_review_font_customized" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_size; ?>
                  </td>
                  <td>
                    <select name="mmr_product_review_font_size">
                      <?php for ($i = 7; $i <= 32; $i++) {
                        ($mmr_product_review_font_size == $i) ? $active = 'selected' : $active = ''; ?>
                      <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                      <?php } ?>
                    </select> <span class="help inline"><?php echo $entry_px; ?></span>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_color; ?>
                  </td>
                  <td>
                    <input type="text" name="mmr_product_review_font_color" value="<?php echo $mmr_product_review_font_color; ?>" size="6" class="color"  />
                  </td>
                </tr>
              </table>
            </div>
            <?php $product_tab_row = 1; ?>
            <?php foreach ($product_tabs as $product_tab) { ?>
            <div id="product_tab-<?php echo $product_tab_row; ?>">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_tab; ?> <?php echo $product_tab_row; ?></h3>
                    <span class="help"><?php echo $entry_font_customization_help; ?></span>
                  </td>
                </tr>
                <tr>
                  <td><?php echo $entry_title; ?></td>
                  <td>
                    <?php foreach ($languages as $language) { ?>
                    <input type="text" name="mmr_product_tabs_additional[<?php echo $product_tab_row; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo isset($product_tab['title'][$language['language_id']]) ? $product_tab['title'][$language['language_id']] : ''; ?>" />
                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_content; ?>
                  </td>
                  <td>
                    <select name="mmr_product_tabs_additional[<?php echo $product_tab_row; ?>][link_id]">
                      <option value="0"><?php echo $text_select ?></option>
                      <?php foreach ($informations as $information) { ?>
                      <option value="<?php echo $information['information_id'] ?>" <?php if ($information['information_id'] == $product_tab['link_id']) { ?>selected="selected"<?php } ?>><?php echo $information['title'] ?></option>
                      <?php } ?>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td><?php echo $entry_status; ?></td>
                  <td><select name="mmr_product_tabs_additional[<?php echo $product_tab_row; ?>][status]">
                      <?php if ($product_tab['status']) { ?>
                      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                      <option value="0"><?php echo $text_disabled; ?></option>
                      <?php } else { ?>
                      <option value="1"><?php echo $text_enabled; ?></option>
                      <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                      <?php } ?>
                    </select></td>
                </tr>
                <tr>
                  <td colspan="2">
                    <h4><?php echo $entry_font; ?></h4>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_font_customization; ?>
                  </td>
                  <td>
                    <?php if ($product_tab['font_customized']) { ?>
                    <input type="radio" name="mmr_product_tabs_additional[<?php echo $product_tab_row; ?>][font_customized]" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_tabs_additional[<?php echo $product_tab_row; ?>][font_customized]" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_product_tabs_additional[<?php echo $product_tab_row; ?>][font_customized]" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_product_tabs_additional[<?php echo $product_tab_row; ?>][font_customized]" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_size; ?>
                  </td>
                  <td>
                    <select name="mmr_product_tabs_additional[<?php echo $product_tab_row; ?>][font_size]">
                      <?php for ($i = 7; $i <= 32; $i++) {
                        ($product_tab['font_size'] == $i) ? $active = 'selected' : $active = ''; ?>
                      <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                      <?php } ?>
                    </select> <span class="help inline"><?php echo $entry_px; ?></span>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_color; ?>
                  </td>
                  <td>
                    <input type="text" name="mmr_product_tabs_additional[<?php echo $product_tab_row; ?>][font_color]" value="<?php echo $product_tab['font_color']; ?>" size="6" class="color"  />
                  </td>
                </tr>
              </table>
            </div>
            <?php $product_tab_row++; ?>
            <?php } ?>
          </div>
        </div>

        <div id="tab-catalog">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_catalog; ?></h2>
                <span class="help"><?php echo $entry_catalog_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_layout; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_layout) { ?>
                <input type="radio" name="mmr_catalog_layout" value="1" checked="checked" />
                <?php echo $entry_catalog_list; ?>
                <input type="radio" name="mmr_catalog_layout" value="0" />
                <?php echo $entry_catalog_grid; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_layout" value="1" />
                <?php echo $entry_catalog_list; ?>
                <input type="radio" name="mmr_catalog_layout" value="0" checked="checked" />
                <?php echo $entry_catalog_grid; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_limits_classic; ?>
                <span class="help"><?php echo $entry_catalog_limits_classic_help; ?></span>
              </td>
              <td>
                <?php if ($mmr_catalog_limits_classic) { ?>
                <input type="radio" name="mmr_catalog_limits_classic" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_limits_classic" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_limits_classic" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_limits_classic" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_layout_switcher_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_layout_switcher_hidden) { ?>
                <input type="radio" name="mmr_catalog_layout_switcher_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_layout_switcher_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_layout_switcher_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_layout_switcher_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_grid_details; ?>
                <span class="help"><?php echo $entry_catalog_grid_details_help; ?></span>
              </td>
              <td>
                <select name="mmr_catalog_grid_details">
                  <?php foreach ($mmr_catalog_grid_details_options as $option) { ?>
                  <?php ($option ==  $mmr_catalog_grid_details) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $option; ?>" <?php echo $active; ?>><?php echo $option; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_catalog_categories; ?> / <?php echo $entry_manufacturer; ?></h2>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_category_description_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_category_description_hidden) { ?>
                <input type="radio" name="mmr_catalog_category_description_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_category_description_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_category_description_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_category_description_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_category_description_dropped; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_category_description_dropped) { ?>
                <input type="radio" name="mmr_catalog_category_description_dropped" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_category_description_dropped" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_category_description_dropped" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_category_description_dropped" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_category_refine_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_category_refine_hidden) { ?>
                <input type="radio" name="mmr_catalog_category_refine_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_category_refine_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_category_refine_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_category_refine_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_categories_images_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_categories_images_hidden) { ?>
                <input type="radio" name="mmr_catalog_categories_images_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_categories_images_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_categories_images_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_categories_images_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td class="bottom-no-border">
                <?php echo $entry_catalog_category_description_spoiled; ?>
              </td>
              <td class="bottom-no-border">
                <?php if ($mmr_catalog_category_description_spoiled) { ?>
                <input type="radio" name="mmr_catalog_category_description_spoiled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_category_description_spoiled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_category_description_spoiled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_category_description_spoiled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_header_categories_description_limit; ?>
              </td>
              <td>
                <input type="text" size="2" name="mmr_catalog_category_description_spoiler_limit" value="<?php echo $mmr_catalog_category_description_spoiler_limit; ?>" /> <span class="help inline"><?php echo $entry_characters; ?></span>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_catalog_cart; ?></h2>
                <span class="help"><?php echo $entry_catalog_cart_additional_hidden; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_cart_additional_coupon_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_cart_additional_coupon_hidden) { ?>
                <input type="radio" name="mmr_catalog_cart_additional_coupon_hidden" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_cart_additional_coupon_hidden" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_cart_additional_coupon_hidden" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_cart_additional_coupon_hidden" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_cart_additional_voucher_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_cart_additional_voucher_hidden) { ?>
                <input type="radio" name="mmr_catalog_cart_additional_voucher_hidden" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_cart_additional_voucher_hidden" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_cart_additional_voucher_hidden" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_cart_additional_voucher_hidden" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_cart_additional_reward_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_cart_additional_reward_hidden) { ?>
                <input type="radio" name="mmr_catalog_cart_additional_reward_hidden" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_cart_additional_reward_hidden" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_cart_additional_reward_hidden" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_cart_additional_reward_hidden" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_cart_additional_shippingtaxes_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_cart_additional_shippingtaxes_hidden) { ?>
                <input type="radio" name="mmr_catalog_cart_additional_shippingtaxes_hidden" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_cart_additional_shippingtaxes_hidden" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_cart_additional_shippingtaxes_hidden" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_cart_additional_shippingtaxes_hidden" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_catalog_compare; ?></h2>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_compare_model_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_compare_model_hidden) { ?>
                <input type="radio" name="mmr_catalog_compare_model_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_model_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_compare_model_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_model_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_compare_manufacturer_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_compare_manufacturer_hidden) { ?>
                <input type="radio" name="mmr_catalog_compare_manufacturer_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_manufacturer_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_compare_manufacturer_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_manufacturer_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_compare_description_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_compare_description_hidden) { ?>
                <input type="radio" name="mmr_catalog_compare_description_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_description_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_compare_description_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_description_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_compare_weight_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_compare_weight_hidden) { ?>
                <input type="radio" name="mmr_catalog_compare_weight_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_weight_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_compare_weight_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_weight_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_compare_dimension_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_catalog_compare_dimension_hidden) { ?>
                <input type="radio" name="mmr_catalog_compare_dimension_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_dimension_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_compare_dimension_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_compare_dimension_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_catalog_contacts; ?></h2>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_catalog_contacts_additional_enabled; ?></td>
              <td>
                <?php if ($mmr_catalog_contacts_additional_enabled) { ?>
                <input type="radio" name="mmr_catalog_contacts_additional_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_contacts_additional_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_contacts_additional_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_contacts_additional_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_catalog_contacts_map_enabled; ?></td>
              <td>
                <?php if ($mmr_catalog_contacts_map_enabled) { ?>
                <input type="radio" name="mmr_catalog_contacts_map_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_contacts_map_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_catalog_contacts_map_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_catalog_contacts_map_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_catalog_contacts_map_code; ?>
              </td>
              <td>
                <textarea rows="3" cols="64" name="mmr_catalog_contacts_map_code"><?php echo isset($mmr_catalog_contacts_map_code) ? $mmr_catalog_contacts_map_code : ''; ?></textarea>
                <span class="help"><?php echo $entry_catalog_contacts_map_code_help; ?></span>
              </td>
            </tr>
          </table>
        </div>

        <div id="tab-footer">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_footer; ?></h2>
                <span class="help"><?php echo $entry_footer_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_footer_information_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_footer_information_hidden) { ?>
                <input type="radio" name="mmr_footer_information_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_information_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_information_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_information_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_footer_extras_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_footer_extras_hidden) { ?>
                <input type="radio" name="mmr_footer_extras_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_extras_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_extras_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_extras_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_footer_service_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_footer_service_hidden) { ?>
                <input type="radio" name="mmr_footer_service_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_service_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_service_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_service_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_footer_account_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_footer_account_hidden) { ?>
                <input type="radio" name="mmr_footer_account_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_account_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_account_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_account_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_footer_socials; ?></h2>
                <span class="help"><?php echo $entry_footer_socials_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $text_enabled; ?></td>
              <td>
                <?php if ($mmr_footer_socials_enabled) { ?>
                <input type="radio" name="mmr_footer_socials_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_socials_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_socials_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_socials_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_footer_socials_icons_large; ?></td>
              <td>
                <?php if ($mmr_footer_socials_icons_large) { ?>
                <input type="radio" name="mmr_footer_socials_icons_large" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_socials_icons_large" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_socials_icons_large" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_socials_icons_large" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_title; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="mmr_footer_socials_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_footer_socials_title[$language['language_id']]) ? $mmr_footer_socials_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_icon; ?> & <?php echo $entry_url; ?></td>
              <td>
                <?php for ($i = 1; $i <= 6; $i++) { ?>
                  <select name="mmr_footer_socials_types[<?php echo $i; ?>]">
                      <option value="0"><?php echo $text_select ?></option>
                      <?php foreach ($mmr_socials as $mmr_social) { ?>
                        <option value="<?php echo $mmr_social; ?>" <?php if ($mmr_social == $mmr_footer_socials_types[$i]) { ?>selected="selected"<?php } ?>><?php echo $mmr_social; ?></option>
                    <?php } ?>
                </select> <input type="text" size="61" name="mmr_footer_socials_links[<?php echo $i; ?>]" value="<?php echo isset($mmr_footer_socials_links[$i]) ? $mmr_footer_socials_links[$i] : 'http://'; ?>" />
                <br />
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_footer_payments; ?></h2>
                <span class="help"><?php echo $entry_footer_payments_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $text_enabled; ?></td>
              <td>
                <?php if ($mmr_footer_payments_enabled) { ?>
                <input type="radio" name="mmr_footer_payments_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_payments_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_payments_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_payments_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_footer_socials_icons_large; ?></td>
              <td>
                <?php if ($mmr_footer_payments_icons_large) { ?>
                <input type="radio" name="mmr_footer_payments_icons_large" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_payments_icons_large" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_payments_icons_large" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_payments_icons_large" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_title; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="mmr_footer_payments_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_footer_payments_title[$language['language_id']]) ? $mmr_footer_payments_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_icon; ?> & <?php echo $entry_information; ?> (<?php echo $entry_optional; ?>)</td>
              <td>
                <?php for ($i = 1; $i <= 6; $i++) { ?>
                <select name="mmr_footer_payments_types[<?php echo $i; ?>]"> <span class="help inline"><?php echo $entry_optional; ?></span>
                  <option value="0"><?php echo $text_select ?></option>
                  <?php foreach ($mmr_payments as $mmr_payment) { ?>
                  <option value="<?php echo $mmr_payment; ?>" <?php if ($mmr_payment == $mmr_footer_payments_types[$i]) { ?>selected="selected"<?php } ?>><?php echo $mmr_payment; ?></option>
                  <?php } ?>
                </select>
                <select name="mmr_footer_payments_links[<?php echo $i; ?>]">
                  <option value="0"><?php echo $text_select ?></option>
                  <?php foreach ($informations as $information) { ?>
                  <option value="<?php echo $information['information_id'] ?>" <?php if ($information['information_id'] == $mmr_footer_payments_links[$i]) { ?>selected="selected"<?php } ?>><?php echo $information['title'] ?></option>
                  <?php } ?>
                </select>
                <br />
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_footer_custom; ?></h2>
                <span class="help"><?php echo $entry_footer_custom_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $text_enabled; ?></td>
              <td>
                <?php if ($mmr_footer_custom_enabled) { ?>
                <input type="radio" name="mmr_footer_custom_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_custom_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_custom_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_custom_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_title; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="mmr_footer_custom_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_footer_custom_title[$language['language_id']]) ? $mmr_footer_custom_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_text; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <textarea rows="3" cols="64" name="mmr_footer_custom_text[<?php echo $language['language_id']; ?>]"><?php echo isset($mmr_footer_custom_text[$language['language_id']]) ? $mmr_footer_custom_text[$language['language_id']] : ''; ?></textarea> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_footer_custom_year; ?>
              </td>
              <td>
                <input type="text" name="mmr_footer_custom_year" value="<?php echo isset($mmr_footer_custom_year) ? $mmr_footer_custom_year : ''; ?>" />
              </td>
            </tr>
          </table>


          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_footer_contact; ?></h2>
                <span class="help"><?php echo $entry_footer_contact_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_footer_contact_hidden; ?></td>
              <td>
                <?php if ($mmr_footer_contact_hidden) { ?>
                <input type="radio" name="mmr_footer_contact_hidden" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_contact_hidden" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_contact_hidden" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_contact_hidden" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_title; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="mmr_footer_contact_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_footer_contact_title[$language['language_id']]) ? $mmr_footer_contact_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>
          </table>

          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_footer_links; ?></h2>
                <span class="help"><?php echo $entry_footer_links_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $text_enabled; ?></td>
              <td>
                <?php if ($mmr_footer_links_enabled) { ?>
                <input type="radio" name="mmr_footer_links_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_links_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_footer_links_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_footer_links_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_title; ?>
              </td>
              <td>
                <?php foreach ($languages as $language) { ?>
                <input type="text" name="mmr_footer_links_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_footer_links_title[$language['language_id']]) ? $mmr_footer_links_title[$language['language_id']] : ''; ?>" />
                <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                <?php } ?>
              </td>
            </tr>
          </table>
          <div class="vtabs">
            <?php $footer_link_row = 1; ?>
            <?php foreach ($footer_links as $footer_link) { ?>
            <a href="#footer_link-<?php echo $footer_link_row; ?>" id="footer_link_vtab-<?php echo $footer_link_row; ?>"><?php echo $entry_footer_link . ' ' . $footer_link_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#footer_link_vtab-<?php echo $footer_link_row; ?>').remove(); $('#footer_link-<?php echo $footer_link_row; ?>').remove(); return false;" /></a>
            <?php $footer_link_row++; ?>
            <?php } ?>
            <span id="footer_link_vtab_add"><?php echo $entry_add_link; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addFooterLink();" /></span>
          </div>
          <div class="vtabs-content" id="footer_link-vtabs">
            <?php $footer_link_row = 1; ?>
            <?php foreach ($footer_links as $footer_link) { ?>
            <div id="footer_link-<?php echo $footer_link_row; ?>">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_footer_link; ?> <?php echo $footer_link_row; ?></h3>
                  </td>
                </tr>
                <tr>
                  <td><?php echo $entry_title; ?></td>
                  <td>
                    <?php foreach ($languages as $language) { ?>
                    <input type="text" name="mmr_footer_links[<?php echo $footer_link_row; ?>][text][<?php echo $language['language_id']; ?>]" value="<?php echo isset($footer_link['text'][$language['language_id']]) ? $footer_link['text'][$language['language_id']] : ''; ?>" />
                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_footer_link_mode; ?>
                  </td>
                  <td>
                    <?php if ($footer_link['link_mode']) { ?>
                    <input type="radio" name="mmr_footer_links[<?php echo $footer_link_row; ?>][link_mode]" value="0" />
                    <?php echo $entry_information; ?>
                    <input type="radio" name="mmr_footer_links[<?php echo $footer_link_row; ?>][link_mode]" value="1" checked="checked" />
                    <?php echo $entry_url; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_footer_links[<?php echo $footer_link_row; ?>][link_mode]" value="0" checked="checked" />
                    <?php echo $entry_information; ?>
                    <input type="radio" name="mmr_footer_links[<?php echo $footer_link_row; ?>][link_mode]" value="1" />
                    <?php echo $entry_url; ?>
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_link; ?>
                  </td>
                  <td>
                    <select name="mmr_footer_links[<?php echo $footer_link_row; ?>][link_id]">
                      <option value="0"><?php echo $text_select ?></option>
                      <?php foreach ($informations as $information) { ?>
                      <option value="<?php echo $information['information_id'] ?>" <?php if ($information['information_id'] == $footer_link['link_id']) { ?>selected="selected"<?php } ?>><?php echo $information['title'] ?></option>
                      <?php } ?>
                    </select> <span class="help inline"><?php echo $entry_information; ?></span><div class="help or"><?php echo $text_or; ?></div>
                    <input type="text" size="21" name="mmr_footer_links[<?php echo $footer_link_row; ?>][link_url]" value="<?php echo isset($footer_link['link_url']) ? $footer_link['link_url'] : ''; ?>" /> <span class="help inline"><?php echo $entry_url; ?> (<?php echo $entry_footer_link_mode_url_help; ?>)</span>
                  </td>
                </tr>
              </table>
            </div>
            <?php $footer_link_row++; ?>
            <?php } ?>
          </div>
        </div>

        <div id="tab-builtin_modules">

          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_builtin_modules; ?></h2>
                <span class="help"><?php echo $entry_tab_builtin_modules_help; ?></span>
              </td>
            </tr>
          </table>

          <div id="tabs_modules" class="htabs">
            <a href="#tab-effects"><?php echo $entry_tab_effects; ?></a>
            <a href="#tab-quickorder"><?php echo $entry_tab_quickorder; ?></a>
            <a href="#tab-callback"><?php echo $entry_tab_callback; ?></a>
            <a href="#tab-stickers"><?php echo $entry_tab_stickers; ?></a>
            <a href="#tab-advantages"><?php echo $entry_tab_advantages; ?></a>
            <a href="#tab-savings"><?php echo $entry_tab_savings; ?></a>
            <a href="#tab-cartgift"><?php echo $entry_tab_cartgift; ?></a>
            <a href="#tab-timer"><?php echo $entry_tab_timer; ?></a>
          </div>

          <div id="tab-effects">
            <table class="form">
              <tr>
                <td colspan="2">
                  <h2><?php echo $entry_tab_effects; ?></h2>
                  <span class="help"><?php echo $entry_effects_help; ?></span>
                </td>
              </tr>
              <tr>
                <td><?php echo $text_enabled; ?></td>
                <td>
                  <?php if ($mmr_effects_enabled) { ?>
                  <input type="radio" name="mmr_effects_enabled" value="1" checked="checked" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_effects_enabled" value="0" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="mmr_effects_enabled" value="1" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_effects_enabled" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td><?php echo $entry_effects_home_enabled; ?></td>
                <td>
                  <?php if ($mmr_effects_home_enabled) { ?>
                  <input type="radio" name="mmr_effects_home_enabled" value="1" checked="checked" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_effects_home_enabled" value="0" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="mmr_effects_home_enabled" value="1" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_effects_home_enabled" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } ?>
                </td>
              </tr>
            </table>
            <div class="vtabs">
              <?php for ($i = 1; $i <= 13; $i++) { ?>
              <a href="#effect<?php echo $i; ?>"><?php echo $entry_effects_vtab[$i]; ?></a>
              <?php if ($i==8) { ?>
              <div>&nbsp;</div>
              <?php } ?>
              <?php } ?>
            </div>
            <div class="vtabs-content">
              <?php for ($i = 1; $i <= 13; $i++) { ?>
              <div id="effect<?php echo $i; ?>">
                <table class="form">
                  <tr>
                    <td colspan="2">
                      <h3><?php echo $entry_effects_vtab[$i]; ?></h3>
                      <span class="help"><?php echo $entry_effects_vtab_help[$i]; ?></span>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2">
                      <h4><?php echo $entry_tab_effects; ?> (<?php echo $entry_jquery; ?>)</h4>
                    </td>
                  </tr>
                  <tr>
                    <td><?php echo $text_enabled; ?></td>
                    <td>
                      <?php if ($mmr_effects[$i]['enabled-js']) { ?>
                      <input type="radio" name="mmr_effects[<?php echo $i; ?>][enabled-js]" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <input type="radio" name="mmr_effects[<?php echo $i; ?>][enabled-js]" value="0" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="mmr_effects[<?php echo $i; ?>][enabled-js]" value="1" />
                      <?php echo $text_yes; ?>
                      <input type="radio" name="mmr_effects[<?php echo $i; ?>][enabled-js]" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_type; ?></td>
                    <td>
                      <select name="mmr_effects[<?php echo $i; ?>][type-js]" >
                        <?php foreach ($mmr_effects_js_options as $key => $mmr_effects_js_option) {
                        ($mmr_effects[$i]['type-js'] == $key) ? $active = 'selected' : $active = ''; ?>
                        <option value="<?php echo $key; ?>" <?php echo $active; ?>><?php echo $mmr_effects_js_option; ?></option>
                        <?php } ?>
                      </select>
                    </td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_duration; ?></td>
                    <td>
                      <select name="mmr_effects[<?php echo $i; ?>][duration-js]">
                        <?php for ($j = 100; $j <= 5000; $j=$j+100) {
                          ($mmr_effects[$i]['duration-js'] == $j) ? $active = 'selected' : $active = ''; ?>
                        <option value="<?php echo $j; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                        <?php } ?>
                      </select> <span class="help inline"><?php echo $entry_ms; ?></span>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2">
                      <h4><?php echo $entry_tab_effects; ?> (<?php echo $entry_css3; ?>)</h4>
                    </td>
                  </tr>
                  <tr>
                    <td><?php echo $text_enabled; ?></td>
                    <td>
                      <?php if ($mmr_effects[$i]['enabled-css']) { ?>
                      <input type="radio" name="mmr_effects[<?php echo $i; ?>][enabled-css]" value="1" checked="checked" />
                      <?php echo $text_yes; ?>
                      <input type="radio" name="mmr_effects[<?php echo $i; ?>][enabled-css]" value="0" />
                      <?php echo $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="mmr_effects[<?php echo $i; ?>][enabled-css]" value="1" />
                      <?php echo $text_yes; ?>
                      <input type="radio" name="mmr_effects[<?php echo $i; ?>][enabled-css]" value="0" checked="checked" />
                      <?php echo $text_no; ?>
                      <?php } ?>
                    </td>
                  </tr>
                  <tr>
                    <td><?php echo $entry_type; ?></td>
                    <td>
                      <select name="mmr_effects[<?php echo $i; ?>][type-css]" >
                        <?php foreach ($mmr_effects_css_options as $mmr_effects_css_option) {
                      ($mmr_effects[$i]['type-css'] == $mmr_effects_css_option) ? $active = 'selected' : $active = ''; ?>
                        <option value="<?php echo $mmr_effects_css_option; ?>" <?php echo $active; ?>><?php echo $mmr_effects_css_option; ?></option>
                        <?php } ?>
                      </select>
                    </td>
                  </tr>
                </table>
              </div>
              <?php } ?>
            </div>
          </div>

          <div id="tab-quickorder">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_quickorder; ?></h2>
                <span class="help"><?php echo $entry_quickorder_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $text_enabled; ?></td>
              <td>
                <?php if ($mmr_quickorder_enabled) { ?>
                <input type="radio" name="mmr_quickorder_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_quickorder_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_quickorder_buy_caption_hidden; ?>
              </td>
              <td>
                <?php if ($mmr_quickorder_buy_caption_hidden) { ?>
                <input type="radio" name="mmr_quickorder_buy_caption_hidden" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_buy_caption_hidden" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_quickorder_buy_caption_hidden" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_buy_caption_hidden" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_display_options; ?></h2>
                <span class="help"><?php echo $entry_quickorder_buttons_display_help; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_image_popup; ?>
              </td>
              <td>
                <?php if ($mmr_quickorder_popup_button_disabled) { ?>
                <input type="radio" name="mmr_quickorder_popup_button_disabled" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_popup_button_disabled" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_quickorder_popup_button_disabled" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_popup_button_disabled" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_description; ?>
              </td>
              <td>
                <?php if ($mmr_quickorder_description_button_disabled) { ?>
                <input type="radio" name="mmr_quickorder_description_button_disabled" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_description_button_disabled" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_quickorder_description_button_disabled" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_description_button_disabled" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_specification; ?>
              </td>
              <td>
                <?php if ($mmr_quickorder_specification_button_disabled) { ?>
                <input type="radio" name="mmr_quickorder_specification_button_disabled" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_specification_button_disabled" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_quickorder_specification_button_disabled" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_specification_button_disabled" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_review; ?>
              </td>
              <td>
                <?php if ($mmr_quickorder_review_button_disabled) { ?>
                <input type="radio" name="mmr_quickorder_review_button_disabled" value="0" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_review_button_disabled" value="1" checked="checked" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_quickorder_review_button_disabled" value="0" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_review_button_disabled" value="1" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_fields; ?></h2>
                <span class="help"><?php echo $entry_quickorder_fields_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_quickorder_mail_language; ?></td>
              <td>
                <select name="mmr_quickorder_mail_language">
                  <?php foreach ($languages as $language) { ?>
                  <?php ($language['language_id'] == $mmr_quickorder_mail_language) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $language['language_id']; ?>" <?php echo $active; ?>><?php echo $language['name']; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_quickorder_code_field_enabled; ?></td>
              <td>
                <?php if ($mmr_quickorder_product_code_field_enabled) { ?>
                <input type="radio" name="mmr_quickorder_product_code_field_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_product_code_field_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_quickorder_product_code_field_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_quickorder_product_code_field_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_product_code_field; ?>
              </td>
              <td>
                <select name="mmr_quickorder_product_code_field">
                  <?php foreach ($mmr_sticker_custom_fields as $field) { ?>
                  <?php ($field ==  $mmr_quickorder_product_code_field) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $field; ?>" <?php echo $active; ?>><?php echo $field; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
          </table>
          <div class="vtabs">
            <?php $quickorder_field_row = 1; ?>
            <?php foreach ($quickorder_fields as $quickorder_field) { ?>
            <a href="#quickorder_field-<?php echo $quickorder_field_row; ?>" id="quickorder_field_vtab-<?php echo $quickorder_field_row; ?>"><?php echo $entry_field . ' ' . $quickorder_field_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#quickorder_field_vtab-<?php echo $quickorder_field_row; ?>').remove(); $('#quickorder_field-<?php echo $quickorder_field_row; ?>').remove(); return false;" /></a>
            <?php $quickorder_field_row++; ?>
            <?php } ?>
            <span id="quickorder_field_vtab_add"><?php echo $entry_add_field; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addQuickorderField();" /></span>
          </div>
          <div class="vtabs-content" id="quickorder_field-vtabs">
            <?php $quickorder_field_row = 1; ?>
            <?php foreach ($quickorder_fields as $quickorder_field) { ?>
            <div id="quickorder_field-<?php echo $quickorder_field_row; ?>">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_field; ?> <?php echo $quickorder_field_row; ?></h3>
                  </td>
                </tr>
                <tr>
                  <td><?php echo $entry_status; ?></td>
                  <td><select name="mmr_quickorder_fields[<?php echo $quickorder_field_row; ?>][status]">
                      <?php if ($quickorder_field['status']) { ?>
                      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                      <option value="0"><?php echo $text_disabled; ?></option>
                      <?php } else { ?>
                      <option value="1"><?php echo $text_enabled; ?></option>
                      <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                      <?php } ?>
                    </select></td>
                </tr>
                <tr>
                  <td><?php echo $entry_label; ?></td>
                  <td>
                    <?php foreach ($languages as $language) { ?>
                    <input type="text" name="mmr_quickorder_fields[<?php echo $quickorder_field_row; ?>][label][<?php echo $language['language_id']; ?>]" value="<?php echo isset($quickorder_field['label'][$language['language_id']]) ? $quickorder_field['label'][$language['language_id']] : ''; ?>" />
                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_required; ?>
                  </td>
                  <td>
                    <?php if ($quickorder_field['required']) { ?>
                    <input type="radio" name="mmr_quickorder_fields[<?php echo $quickorder_field_row; ?>][required]" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_quickorder_fields[<?php echo $quickorder_field_row; ?>][required]" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_quickorder_fields[<?php echo $quickorder_field_row; ?>][required]" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_quickorder_fields[<?php echo $quickorder_field_row; ?>][required]" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
              </table>
            </div>
            <?php $quickorder_field_row++; ?>
            <?php } ?>
          </div>
          </div>
          
          <div id="tab-callback">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_callback; ?></h2>
                <span class="help"><?php echo $entry_callback_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $text_enabled; ?></td>
              <td>
                <?php if ($mmr_callback_enabled) { ?>
                <input type="radio" name="mmr_callback_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_callback_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_callback_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_callback_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_fields; ?></h2>
                <span class="help"><?php echo $entry_callback_fields_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_callback_mail_language; ?></td>
              <td>
                <select name="mmr_callback_mail_language">
                  <?php foreach ($languages as $language) { ?>
                  <?php ($language['language_id'] == $mmr_callback_mail_language) ? $active = 'selected' : $active=''; ?>
                  <option value="<?php echo $language['language_id']; ?>" <?php echo $active; ?>><?php echo $language['name']; ?></option>
                  <?php } ?>
                </select>
              </td>
            </tr>
          </table>
          <div class="vtabs">
            <?php $callback_field_row = 1; ?>
            <?php foreach ($callback_fields as $callback_field) { ?>
            <a href="#callback_field-<?php echo $callback_field_row; ?>" id="callback_field_vtab-<?php echo $callback_field_row; ?>"><?php echo $entry_field . ' ' . $callback_field_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#callback_field_vtab-<?php echo $callback_field_row; ?>').remove(); $('#callback_field-<?php echo $callback_field_row; ?>').remove(); return false;" /></a>
            <?php $callback_field_row++; ?>
            <?php } ?>
            <span id="callback_field_vtab_add"><?php echo $entry_add_field; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addcallbackField();" /></span>
          </div>
          <div class="vtabs-content" id="callback_field-vtabs">
            <?php $callback_field_row = 1; ?>
            <?php foreach ($callback_fields as $callback_field) { ?>
            <div id="callback_field-<?php echo $callback_field_row; ?>">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_field; ?> <?php echo $callback_field_row; ?></h3>
                  </td>
                </tr>
                <tr>
                  <td><?php echo $entry_status; ?></td>
                  <td><select name="mmr_callback_fields[<?php echo $callback_field_row; ?>][status]">
                      <?php if ($callback_field['status']) { ?>
                      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                      <option value="0"><?php echo $text_disabled; ?></option>
                      <?php } else { ?>
                      <option value="1"><?php echo $text_enabled; ?></option>
                      <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                      <?php } ?>
                    </select></td>
                </tr>
                <tr>
                  <td><?php echo $entry_label; ?></td>
                  <td>
                    <?php foreach ($languages as $language) { ?>
                    <input type="text" name="mmr_callback_fields[<?php echo $callback_field_row; ?>][label][<?php echo $language['language_id']; ?>]" value="<?php echo isset($callback_field['label'][$language['language_id']]) ? $callback_field['label'][$language['language_id']] : ''; ?>" />
                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_required; ?>
                  </td>
                  <td>
                    <?php if ($callback_field['required']) { ?>
                    <input type="radio" name="mmr_callback_fields[<?php echo $callback_field_row; ?>][required]" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_callback_fields[<?php echo $callback_field_row; ?>][required]" value="0" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="mmr_callback_fields[<?php echo $callback_field_row; ?>][required]" value="1" />
                    <?php echo $text_yes; ?>
                    <input type="radio" name="mmr_callback_fields[<?php echo $callback_field_row; ?>][required]" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </td>
                </tr>
              </table>
            </div>
            <?php $callback_field_row++; ?>
            <?php } ?>
          </div>
          </div>

          <div id="tab-stickers">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_stickers; ?></h2>
                <span class="help"><?php echo $entry_stickers_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $text_enabled; ?></td>
              <td>
                <?php if ($mmr_stickers_enabled) { ?>
                <input type="radio" name="mmr_stickers_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_stickers_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_stickers_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_stickers_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_stickers_size_small; ?>
                <span class="help"><?php echo $entry_stickers_size_help; ?></span>
              </td>
              <td>
                <select name="mmr_stickers_size_small">
                  <?php for ($i = 1.0; $i <= 5.0; $i=$i+0.5) {
                        ($mmr_stickers_size_small == $i) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                  <?php } ?>
                </select> <span class="help inline"><?php echo $entry_em; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_stickers_size_large; ?>
                <span class="help"><?php echo $entry_stickers_size_help; ?></span>
              </td>
              <td>
                <select name="mmr_stickers_size_large">
                  <?php for ($i = 1.0; $i <= 5.0; $i=$i+0.5) {
                        ($mmr_stickers_size_large == $i) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                  <?php } ?>
                </select> <span class="help inline"><?php echo $entry_em; ?></span>
              </td>
            </tr>
          </table>
          <div class="vtabs">
            <?php for ($i = 1; $i <= 9; $i++) { ?>
            <a href="#sticker<?php echo $i; ?>"><?php echo $entry_stickers_vtab[$i]; ?></a>
            <?php } ?>
          </div>
          <div class="vtabs-content">
          <?php for ($i = 1; $i <= 9; $i++) { ?>
          <div id="sticker<?php echo $i; ?>">
          <table class="form">
          <tr>
            <td colspan="2">
              <h3><?php echo $entry_stickers_vtab[$i]; ?></h3>
              <span class="help"><?php echo $entry_stickers_vtab_help[$i]; ?></span>
            </td>
          </tr>
          <tr>
            <td><?php echo $text_enabled; ?></td>
            <td>
              <?php if ($mmr_stickers[$i]['enabled']) { ?>
              <input type="radio" name="mmr_stickers[<?php echo $i; ?>][enabled]" value="1" checked="checked" />
              <?php echo $text_yes; ?>
              <input type="radio" name="mmr_stickers[<?php echo $i; ?>][enabled]" value="0" />
              <?php echo $text_no; ?>
              <?php } else { ?>
              <input type="radio" name="mmr_stickers[<?php echo $i; ?>][enabled]" value="1" />
              <?php echo $text_yes; ?>
              <input type="radio" name="mmr_stickers[<?php echo $i; ?>][enabled]" value="0" checked="checked" />
              <?php echo $text_no; ?>
              <?php } ?>
            </td>
          </tr>
          <?php if (($i==2)||($i==7)||($i==8)||($i==9)) { ?>
          <tr>
            <td>
              <?php echo $entry_stickers_custom_limit; ?>
            </td>
            <td>
              <select name="mmr_stickers[<?php echo $i; ?>][limit]">
                <?php foreach ($mmr_sticker_custom_fields as $field) { ?>
                <?php ($field ==  $mmr_stickers[$i]['limit']) ? $active = 'selected' : $active=''; ?>
                <option value="<?php echo $field; ?>" <?php echo $active; ?>><?php echo $field; ?></option>
                <?php } ?>
              </select>
            </td>
          </tr>
          <?php } else if ($i==4) { ?>
          <tr>
            <td>
              <?php echo $entry_stickers_popular_limit; ?>
            </td>
            <td>
              <input type="text" size="3" name="mmr_stickers[4][limit]" value="<?php echo $mmr_stickers[4]['limit']; ?>" />
            </td>
          </tr>
          <?php } else if ($i==5) { ?>
          <tr>
            <td>
              <?php echo $entry_stickers_new_limit; ?>
            </td>
            <td>
              <input type="text" size="3" name="mmr_stickers[5][limit]" value="<?php echo $mmr_stickers[5]['limit']; ?>" /> <span class="help inline"><?php echo $entry_days; ?></span>
            </td>
          </tr>
          <?php } else if ($i==6) { ?>
          <tr>
            <td>
              <?php echo $entry_stickers_voted_limit; ?>
            </td>
            <td>
              <select name="mmr_stickers[6][limit]">
                <?php for ($k = 1; $k <= 5; $k++) {
                      ($mmr_stickers[6]['limit'] == $k) ? $active = 'selected' : $active = ''; ?>
                <option value="<?php echo $k; ?>" <?php echo $active; ?>><?php echo $k; ?></option>
                <?php } ?>
              </select>
            </td>
          </tr>
          <?php } ?>
          <tr>
            <td class="vtop">
              <?php echo $entry_icon; ?>
              <span class="help"><?php echo $entry_icon_help; ?></span>
            </td>
            <td>
              <select name="mmr_stickers[<?php echo $i; ?>][icon]" >
                <?php for ($j = 1; $j <= count($mmr_fa_icons); $j++) {
                          ($mmr_stickers[$i]['icon'] == $mmr_fa_icons[$j]) ? $active = 'selected' : $active = ''; ?>
                <option value="<?php echo $mmr_fa_icons[$j]; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                <?php } ?>
              </select> <span class="inline"><a class="modal_link" target="_blank" href="../catalog/view/theme/moneymaker/image/fa-icons.png" ><?php echo $text_view;?></a></span>
            </td>
          </tr>
          <tr>
            <td>
              <?php echo $entry_color; ?>
            </td>
            <td>
              <input type="text" name="mmr_stickers[<?php echo $i; ?>][icon_color]" value="<?php echo $mmr_stickers[$i]['icon_color']; ?>" size="6" class="color"  />
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <h3><?php echo $entry_title; ?></h3>
              <span class="help"><?php echo $entry_stickers_title_help; ?></span>
            </td>
          </tr>
          <?php if ($i==1) { ?>
          <tr>
            <td>
              <?php echo $entry_text; ?>
            </td>
            <td>
              <input type="text" disabled value="<?php echo $entry_stickers_rating_title_help; ?>" />
            </td>
          </tr>
          <?php } else { ?>
          <tr>
            <td>
              <?php echo $entry_text; ?>
            </td>
            <td>
              <?php foreach ($languages as $language) { ?>
              <input type="text" name="mmr_stickers[<?php echo $i; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo $mmr_stickers[$i]['title'][$language['language_id']]; ?>" />
              <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
              <?php } ?>
            </td>
          </tr>
          <?php } ?>
          <tr>
            <td>
              <?php echo $entry_color; ?>
            </td>
            <td>
              <input type="text" name="mmr_stickers[<?php echo $i; ?>][title_color]" value="<?php echo $mmr_stickers[$i]['title_color']; ?>" size="6" class="color"  />
            </td>
          </tr>
          <tr>
            <td>
              <?php echo $entry_font_size_small; ?>
            </td>
            <td>
              <select name="mmr_stickers[<?php echo $i; ?>][title_size_small]">
                <?php for ($j = 7; $j <= 32; $j++) {
                          ($mmr_stickers[$i]['title_size_small'] == $j) ? $active = 'selected' : $active = ''; ?>
                <option value="<?php echo $j; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                <?php } ?>
              </select> <span class="help inline"><?php echo $entry_px; ?></span>
            </td>
          </tr>
          <tr>
            <td>
              <?php echo $entry_font_size_large; ?>
            </td>
            <td>
              <select name="mmr_stickers[<?php echo $i; ?>][title_size_large]">
                <?php for ($j = 7; $j <= 48; $j++) {
                          ($mmr_stickers[$i]['title_size_large'] == $j) ? $active = 'selected' : $active = ''; ?>
                <option value="<?php echo $j; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                <?php } ?>
              </select> <span class="help inline"><?php echo $entry_px; ?></span>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <h3><?php echo $entry_caption; ?></h3>
              <span class="help"><?php echo $entry_stickers_caption_help; ?></span>
            </td>
          </tr>
          <tr>
            <td>
              <?php echo $entry_text; ?>
            </td>
            <td>
              <?php foreach ($languages as $language) { ?>
              <input type="text" name="mmr_stickers[<?php echo $i; ?>][caption][<?php echo $language['language_id']; ?>]" value="<?php echo $mmr_stickers[$i]['caption'][$language['language_id']]; ?>" />
              <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
              <?php } ?>
            </td>
          </tr>
          <tr>
            <td>
              <?php echo $entry_color; ?>
            </td>
            <td>
              <input type="text" name="mmr_stickers[<?php echo $i; ?>][caption_color]" value="<?php echo $mmr_stickers[$i]['caption_color']; ?>" size="6" class="color"  />
            </td>
          </tr>
          <tr>
            <td>
              <?php echo $entry_font_size_small; ?>
            </td>
            <td>
              <select name="mmr_stickers[<?php echo $i; ?>][caption_size_small]">
                <?php for ($j = 7; $j <= 32; $j++) {
                          ($mmr_stickers[$i]['caption_size_small'] == $j) ? $active = 'selected' : $active = ''; ?>
                <option value="<?php echo $j; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                <?php } ?>
              </select> <span class="help inline"><?php echo $entry_px; ?></span>
            </td>
          </tr>
          <tr>
            <td>
              <?php echo $entry_font_size_large; ?>
            </td>
            <td>
              <select name="mmr_stickers[<?php echo $i; ?>][caption_size_large]">
                <?php for ($j = 7; $j <= 48; $j++) {
                          ($mmr_stickers[$i]['caption_size_large'] == $j) ? $active = 'selected' : $active = ''; ?>
                <option value="<?php echo $j; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                <?php } ?>
              </select> <span class="help inline"><?php echo $entry_px; ?></span>
            </td>
          </tr>
          </table>
          </div>
          <?php } ?>
          </div>
          </div>

          <div id="tab-advantages">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_advantages; ?></h2>
                <span class="help"><?php echo $entry_advantages_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $text_enabled; ?></td>
              <td>
                <?php if ($mmr_advantages_enabled) { ?>
                <input type="radio" name="mmr_advantages_enabled" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_enabled" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_advantages_enabled" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_enabled" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_color; ?> (<?php echo $entry_icon; ?>)
              </td>
              <td>
                <input type="text" name="mmr_advantages_icons_color" value="<?php echo $mmr_advantages_icons_color; ?>" size="6" class="color"  />
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_size; ?> (<?php echo $entry_icon; ?>)
              </td>
              <td>
                <select name="mmr_advantages_icons_size">
                  <?php for ($i = 1.0; $i <= 5.0; $i=$i+0.5) {
                        ($mmr_advantages_icons_size == $i) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                  <?php } ?>
                </select> <span class="help inline"><?php echo $entry_em; ?></span>
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_color; ?> (<?php echo $entry_font; ?>)
              </td>
              <td>
                <input type="text" name="mmr_advantages_font_color" value="<?php echo $mmr_advantages_font_color; ?>" size="6" class="color"  />
              </td>
            </tr>
            <tr>
              <td>
                <?php echo $entry_size; ?> (<?php echo $entry_font; ?>)
              </td>
              <td>
                <select name="mmr_advantages_font_size">
                  <?php for ($i = 7; $i <= 32; $i++) {
                        ($mmr_advantages_font_size == $i) ? $active = 'selected' : $active = ''; ?>
                  <option value="<?php echo $i; ?>" <?php echo $active; ?>><?php echo $i; ?></option>
                  <?php } ?>
                </select> <span class="help inline"><?php echo $entry_px; ?></span>
              </td>
            </tr>
          </table>
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_display_options; ?></h2>
                <span class="help"><?php echo $entry_advantages_display_help; ?></span>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_tab_product; ?></td>
              <td>
                <?php if ($mmr_advantages_display_product) { ?>
                <input type="radio" name="mmr_advantages_display_product" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_product" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_advantages_display_product" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_product" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_catalog_categories; ?></td>
              <td>
                <?php if ($mmr_advantages_display_category) { ?>
                <input type="radio" name="mmr_advantages_display_category" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_category" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_advantages_display_category" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_category" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_manufacturer; ?></td>
              <td>
                <?php if ($mmr_advantages_display_manufacturer) { ?>
                <input type="radio" name="mmr_advantages_display_manufacturer" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_manufacturer" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_advantages_display_manufacturer" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_manufacturer" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_search; ?></td>
              <td>
                <?php if ($mmr_advantages_display_search) { ?>
                <input type="radio" name="mmr_advantages_display_search" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_search" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_advantages_display_search" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_search" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_special; ?></td>
              <td>
                <?php if ($mmr_advantages_display_special) { ?>
                <input type="radio" name="mmr_advantages_display_special" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_special" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_advantages_display_special" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_special" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_home; ?></td>
              <td>
                <?php if ($mmr_advantages_display_home) { ?>
                <input type="radio" name="mmr_advantages_display_home" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_home" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="mmr_advantages_display_home" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="mmr_advantages_display_home" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
              </td>
            </tr>
          </table>
          <div class="vtabs">
            <?php $advantage_row = 1; ?>
            <?php foreach ($advantages as $advantage) { ?>
            <a href="#advantage-<?php echo $advantage_row; ?>" id="advantage_vtab-<?php echo $advantage_row; ?>"><?php echo $entry_advantage . ' ' . $advantage_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#advantage_vtab-<?php echo $advantage_row; ?>').remove(); $('#advantage-<?php echo $advantage_row; ?>').remove(); return false;" /></a>
            <?php $advantage_row++; ?>
            <?php } ?>
            <span id="advantage_vtab_add"><?php echo $entry_add_advantage; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addAdvantage();" /></span>
          </div>
          <div class="vtabs-content" id="advantage-vtabs">
            <?php $advantage_row = 1; ?>
            <?php foreach ($advantages as $advantage) { ?>
            <div id="advantage-<?php echo $advantage_row; ?>">
              <table class="form">
                <tr>
                  <td colspan="2">
                    <h3><?php echo $entry_advantage; ?> <?php echo $advantage_row; ?></h3>
                  </td>
                </tr>
                <tr>
                  <td class="vtop">
                    <?php echo $entry_icon; ?> <?php echo $advantage_row; ?>
                    <span class="help"><?php echo $entry_icon_help; ?></span>
                  </td>
                  <td>
                    <select name="mmr_advantages[<?php echo $advantage_row; ?>][icon]" >
                      <?php for ($j = 1; $j <= count($mmr_fa_icons); $j++) {
                        ($advantage['icon'] == $mmr_fa_icons[$j]) ? $active = 'selected' : $active = ''; ?>
                      <option value="<?php echo $mmr_fa_icons[$j]; ?>" <?php echo $active; ?>><?php echo $j; ?></option>
                      <?php } ?>
                    </select> <span class="inline"><a class="modal_link" target="_blank" href="../catalog/view/theme/moneymaker/image/fa-icons.png" ><?php echo $text_view;?></a></span>
                  </td>
                </tr>
                <tr>
                  <td><?php echo $entry_text; ?></td>
                  <td>
                    <?php foreach ($languages as $language) { ?>
                    <input type="text" name="mmr_advantages[<?php echo $advantage_row; ?>][text][<?php echo $language['language_id']; ?>]" value="<?php echo isset($advantage['text'][$language['language_id']]) ? $advantage['text'][$language['language_id']] : ''; ?>" />
                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                    <?php } ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <?php echo $entry_link; ?>
                  </td>
                  <td>
                    <select name="mmr_advantages[<?php echo $advantage_row; ?>][link_id]">
                      <option value="0"><?php echo $text_select ?></option>
                      <?php foreach ($informations as $information) { ?>
                      <option value="<?php echo $information['information_id'] ?>" <?php if ($information['information_id'] == $advantage['link_id']) { ?>selected="selected"<?php } ?>><?php echo $information['title'] ?></option>
                      <?php } ?>
                    </select> <span class="help inline"><?php echo $entry_optional; ?></span>
                  </td>
                </tr>
              </table>
            </div>
            <?php $advantage_row++; ?>
            <?php } ?>
          </div>
          </div>

          <div id="tab-savings">
            <table class="form">
              <tr>
                <td colspan="2">
                  <h2><?php echo $entry_tab_savings; ?></h2>
                  <span class="help"><?php echo $entry_savings_help; ?></span>
                </td>
              </tr>
              <tr>
                <td><?php echo $text_enabled; ?></td>
                <td>
                  <?php if ($mmr_savings_enabled) { ?>
                  <input type="radio" name="mmr_savings_enabled" value="1" checked="checked" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_savings_enabled" value="0" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="mmr_savings_enabled" value="1" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_savings_enabled" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_text; ?>
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" name="mmr_savings_text[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_savings_text[$language['language_id']]) ? $mmr_savings_text[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_color; ?> (<?php echo $entry_text; ?>)
                </td>
                <td>
                  <input type="text" name="mmr_savings_text_color" value="<?php echo $mmr_savings_text_color; ?>" size="6" class="color"  />
                </td>
              </tr>
            </table>
          </div>

          <div id="tab-cartgift">
            <table class="form">
              <tr>
                <td colspan="2">
                  <h2><?php echo $entry_tab_cartgift; ?></h2>
                  <span class="help"><?php echo $entry_cartgift_help; ?></span>
                </td>
              </tr>
              <tr>
                <td><?php echo $text_enabled; ?></td>
                <td>
                  <?php if ($mmr_cartgift_enabled) { ?>
                  <input type="radio" name="mmr_cartgift_enabled" value="1" checked="checked" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_cartgift_enabled" value="0" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="mmr_cartgift_enabled" value="1" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_cartgift_enabled" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_caption; ?> (<?php echo $entry_catalog_cart; ?>)
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" name="mmr_cartgift_caption[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_cartgift_caption[$language['language_id']]) ? $mmr_cartgift_caption[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_text." (".$entry_logged_out.")"; ?>
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" class="long_text" name="mmr_cartgift_text[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_cartgift_text[$language['language_id']]) ? $mmr_cartgift_text[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_text." (".$entry_logged_in.")"; ?>
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" class="long_text" name="mmr_cartgift_text_logged[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_cartgift_text_logged[$language['language_id']]) ? $mmr_cartgift_text_logged[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </td>
              </tr>
            </table>
          </div>

          <div id="tab-timer">
            <table class="form">
              <tr>
                <td colspan="2">
                  <h2><?php echo $entry_tab_timer; ?></h2>
                  <span class="help"><?php echo $entry_timer_help; ?></span>
                </td>
              </tr>
              <tr>
                <td><?php echo $text_enabled; ?></td>
                <td>
                  <?php if ($mmr_timer_enabled) { ?>
                  <input type="radio" name="mmr_timer_enabled" value="1" checked="checked" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_timer_enabled" value="0" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="mmr_timer_enabled" value="1" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_timer_enabled" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_title; ?>
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" name="mmr_timer_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_timer_title[$language['language_id']]) ? $mmr_timer_title[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td><?php echo $entry_timer_title_date_enabled; ?></td>
                <td>
                  <?php if ($mmr_timer_title_date_enabled) { ?>
                  <input type="radio" name="mmr_timer_title_date_enabled" value="1" checked="checked" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_timer_title_date_enabled" value="0" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="mmr_timer_title_date_enabled" value="1" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="mmr_timer_title_date_enabled" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_text; ?>
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" name="mmr_timer_text[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_timer_text[$language['language_id']]) ? $mmr_timer_text[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_text; ?> (<?php echo $entry_link; ?>)
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" name="mmr_timer_text_link[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_timer_text_link[$language['language_id']]) ? $mmr_timer_text_link[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_link; ?>
                </td>
                <td>
                  <select name="mmr_timer_link_id">
                    <option value="0"><?php echo $text_select ?></option>
                    <?php foreach ($informations as $information) { ?>
                    <option value="<?php echo $information['information_id'] ?>" <?php if ($information['information_id'] == $mmr_timer_link_id) { ?>selected="selected"<?php } ?>><?php echo $information['title'] ?></option>
                    <?php } ?>
                  </select>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_timer_units; ?>
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" size="3" name="mmr_timer_text_days[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_timer_text_days[$language['language_id']]) ? $mmr_timer_text_days[$language['language_id']] : ''; ?>" />
                  <input type="text" size="3" name="mmr_timer_text_hours[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_timer_text_hours[$language['language_id']]) ? $mmr_timer_text_hours[$language['language_id']] : ''; ?>" />
                  <input type="text" size="3" name="mmr_timer_text_minutes[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_timer_text_minutes[$language['language_id']]) ? $mmr_timer_text_minutes[$language['language_id']] : ''; ?>" />
                  <input type="text" size="3" name="mmr_timer_text_seconds[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_timer_text_seconds[$language['language_id']]) ? $mmr_timer_text_seconds[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </td>
              </tr>
              <tr>
                <td>
                  <?php echo $entry_timer_text_limited; ?>
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <input type="text" name="mmr_timer_text_limited[<?php echo $language['language_id']; ?>]" value="<?php echo isset($mmr_timer_text_limited[$language['language_id']]) ? $mmr_timer_text_limited[$language['language_id']] : ''; ?>" />
                  <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
                  <?php } ?>
                </td>
              </tr>
              
              
            </table>
          </div>

        </div>
        <div id="tab-help">
          <table class="form">
            <tr>
              <td colspan="2">
                <h2><?php echo $entry_tab_help; ?></h2>
                <span class="help"><?php echo $entry_tab_help_text; ?></span>
              </td>
            </tr>
          </table>
        </div>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>
  <script type="text/javascript">
    $('#tabs a').tabs();
    $('#tabs_modules a').tabs();
    $('#tab-header .vtabs.vtabs1 a').tabs();
    $('#tab-header .vtabs.vtabs2 a').tabs();
    $('#tab-footer .vtabs a').tabs();
    $('#tab-advantages .vtabs a').tabs();
    $('#tab-effects .vtabs a').tabs();
    $('#tab-quickorder .vtabs a').tabs();
    $('#tab-callback .vtabs a').tabs();
    $('#tab-product .vtabs a').tabs();
    $('#tab-stickers .vtabs a').tabs();
  </script>

  <script type="text/javascript"><!--
    var header_link_row = <?php echo $header_link_row; ?>;
    function addHeaderLink() {
      html  = '<div id="header_link-' + header_link_row + '">';
      html += '  <table class="form">';
      html += '    <tr>';
      html += '      <td colspan="2"><h3><?php echo $entry_header_link; ?> ' + header_link_row + '</h3></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_title; ?></td>';
      html += '      <td>';
    <?php foreach ($languages as $language) { ?>
        html += '<input type="text" name="mmr_header_links[' + header_link_row + '][text][<?php echo $language['language_id']; ?>]" value="" /> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />';
      <?php } ?>
      html += '     </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_header_link_mode; ?></td>';
      html += '      <td><input type="radio" name="mmr_header_links[' + header_link_row + '][link_mode]" value="0" checked="checked" /><?php echo $entry_information; ?>';
      html += '      <input type="radio" name="mmr_header_links[' + header_link_row + '][link_mode]" value="1" /><?php echo $entry_url; ?>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_link; ?></td>';
      html += '      <td><select name="mmr_header_links[' + header_link_row + '][link_id]">';
      html += '      <option value="0"><?php echo $text_select ?></option>';
      html += '      <?php foreach ($informations as $information) { ?>';
      html += '      <option value="<?php echo $information['information_id'] ?>"><?php echo $information['title'] ?></option>';
      html += '      <?php } ?>';
      html += '      </select> <span class="help inline"><?php echo $entry_information; ?></span><div class="help or"><?php echo $text_or; ?></div>';
      html += '      <input type="text" size="21" name="mmr_header_links[' + header_link_row + '][link_url]" value="http://" /> <span class="help inline"><?php echo $entry_url; ?> (<?php echo $entry_header_link_mode_url_help; ?>)</span>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_icon; ?></td>';
      html += '      <td><input type="radio" name="mmr_header_links[' + header_link_row + '][icon_mode]" value="1" /><?php echo $text_yes; ?>';
      html += '      <input type="radio" name="mmr_header_links[' + header_link_row + '][icon_mode]" value="0" checked="checked" /><?php echo $text_no; ?>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td class="vtop"><?php echo $entry_icon; ?><span class="help"><?php echo $entry_icon_help; ?></span></td>';
      html += '      <td><select name="mmr_header_links[' + header_link_row + '][icon]">';
      <?php for ($j = 1; $j <= count($mmr_fa_icons); $j++) { ?>
      html += '      <option value="<?php echo $mmr_fa_icons[$j]; ?>" <?php if ($j==1) echo "selected"; ?>><?php echo $j; ?></option>';
      <?php } ?>
      html += '      </select> <span class="inline"><a class="modal_link" target="_blank" href="../catalog/view/theme/moneymaker/image/fa-icons.png" ><?php echo $text_view;?></a></span>';
      html += '      </td>';
      html += '    </tr>';
      html += '    </table>';
      html += '    </div>';
      $('#header_link-vtabs').append(html);
      $('#header_link_vtab_add').before('<a href="#header_link-' + header_link_row + '" id="header_link_vtab-' + header_link_row + '"><?php echo $entry_header_link; ?> ' + header_link_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs.vtabs1 a:first\').trigger(\'click\'); $(\'#header_link_vtab-' + header_link_row + '\').remove(); $(\'#header_link-' + header_link_row + '\').remove(); return false;" /></a>');
      $('#tab-header .vtabs.vtabs1 a').tabs();
      $('#header_link_vtab-' + header_link_row).trigger('click');
      header_link_row++;
    }
    //--></script>

  <script type="text/javascript"><!--
    var header_contact_row = <?php echo $header_contact_row; ?>;
    function addHeaderContact() {
      html  = '<div id="header_contact-' + header_contact_row + '">';
      html += '  <table class="form">';
      html += '    <tr>';
      html += '      <td colspan="2"><h3><?php echo $entry_element; ?> ' + header_contact_row + '</h3><span class="help"><?php echo $entry_header_contact_help; ?></span></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_header_contacts_mode; ?></td>';
      html += '      <td><select name="mmr_header_contacts[' + header_contact_row + '][mode]">';
      html += '      <option value="0"><?php echo $text_select ?></option>';
      html += '      <?php foreach ($mmr_contact_modes as $key => $mmr_contact_mode) { ?>';
      html += '      <option value="<?php echo $key; ?>"><?php echo $mmr_contact_mode; ?></option>';
      html += '      <?php } ?>';
      html += '      </select>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_header_contacts_mobiles; ?></td>';
      html += '      <td><select name="mmr_header_contacts[' + header_contact_row + '][mobile_icon]">';
      html += '      <option value="0"><?php echo $text_select ?></option>';
      html += '      <?php foreach ($mmr_contact_mobile_icons as $mmr_contact_mobile_icon) { ?>';
      html += '      <option value="<?php echo $mmr_contact_mobile_icon; ?>"><?php echo $mmr_contact_mobile_icon; ?></option>';
      html += '      <?php } ?>';
      html += '      </select>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td class="vtop"><?php echo $entry_icon; ?><span class="help"><?php echo $entry_icon_help; ?></span></td>';
      html += '      <td><select name="mmr_header_contacts[' + header_contact_row + '][icon]">';
    <?php for ($j = 1; $j <= count($mmr_fa_icons); $j++) { ?>
        html += '      <option value="<?php echo $mmr_fa_icons[$j]; ?>" <?php if ($j==1) echo "selected"; ?>><?php echo $j; ?></option>';
      <?php } ?>
      html += '      </select> <span class="inline"><a class="modal_link" target="_blank" href="../catalog/view/theme/moneymaker/image/fa-icons.png" ><?php echo $text_view;?></a></span>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_text; ?> (<?php echo $entry_title; ?>)</td>';
      html += '      <td>';
    <?php foreach ($languages as $language) { ?>
        html += '<input type="text" name="mmr_header_contacts[' + header_contact_row + '][text][<?php echo $language['language_id']; ?>]" value="" /> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />';
      <?php } ?>
      html += '     </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_link; ?></td>';
      html += '      <td>';
      html += '      <input type="text" name="mmr_header_contacts[' + header_contact_row + '][link]" value="" /> <span class="help inline"><?php echo $entry_optional; ?></span>';
      html += '     </td>';
      html += '    </tr>';
      html += '    </table>';
      html += '    </div>';
      $('#header_contact-vtabs').append(html);
      $('#header_contact_vtab_add').before('<a href="#header_contact-' + header_contact_row + '" id="header_contact_vtab-' + header_contact_row + '"><?php echo $entry_header_contact; ?> ' + header_contact_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs.vtabs2 a:first\').trigger(\'click\'); $(\'#header_contact_vtab-' + header_contact_row + '\').remove(); $(\'#header_contact-' + header_contact_row + '\').remove(); return false;" /></a>');
      $('#tab-header .vtabs.vtabs2 a').tabs();
      $('#header_contact_vtab-' + header_contact_row).trigger('click');
      header_contact_row++;
    }
    //--></script>

  <script type="text/javascript"><!--
    var footer_link_row = <?php echo $footer_link_row; ?>;
    function addFooterLink() {
      html  = '<div id="footer_link-' + footer_link_row + '">';
      html += '  <table class="form">';
      html += '    <tr>';
      html += '      <td colspan="2"><h3><?php echo $entry_footer_link; ?> ' + footer_link_row + '</h3></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_title; ?></td>';
      html += '      <td>';
    <?php foreach ($languages as $language) { ?>
        html += '<input type="text" name="mmr_footer_links[' + footer_link_row + '][text][<?php echo $language['language_id']; ?>]" value="" /> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />';
      <?php } ?>
      html += '     </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_footer_link_mode; ?></td>';
      html += '      <td><input type="radio" name="mmr_footer_links[' + footer_link_row + '][link_mode]" value="0" checked="checked" /><?php echo $entry_information; ?>';
      html += '      <input type="radio" name="mmr_footer_links[' + footer_link_row + '][link_mode]" value="1" /><?php echo $entry_url; ?>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_link; ?></td>';
      html += '      <td><select name="mmr_footer_links[' + footer_link_row + '][link_id]">';
      html += '      <option value="0"><?php echo $text_select ?></option>';
      html += '      <?php foreach ($informations as $information) { ?>';
      html += '      <option value="<?php echo $information['information_id'] ?>"><?php echo $information['title'] ?></option>';
      html += '      <?php } ?>';
      html += '      </select> <span class="help inline"><?php echo $entry_information; ?></span><div class="help or"><?php echo $text_or; ?></div>';
      html += '      <input type="text" size="21" name="mmr_footer_links[' + footer_link_row + '][link_url]" value="http://" /> <span class="help inline"><?php echo $entry_url; ?> (<?php echo $entry_footer_link_mode_url_help; ?>)</span>';
      html += '      </td>';
      html += '    </tr>';
      html += '    </table>';
      html += '    </div>';
      $('#footer_link-vtabs').append(html);
      $('#footer_link_vtab_add').before('<a href="#footer_link-' + footer_link_row + '" id="footer_link_vtab-' + footer_link_row + '"><?php echo $entry_footer_link; ?> ' + footer_link_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#footer_link_vtab-' + footer_link_row + '\').remove(); $(\'#footer_link-' + footer_link_row + '\').remove(); return false;" /></a>');
      $('#tab-footer .vtabs a').tabs();
      $('#footer_link_vtab-' + footer_link_row).trigger('click');
      footer_link_row++;
    }
    //--></script>

  <script type="text/javascript"><!--
    var product_tab_row = <?php echo $product_tab_row; ?>;
    function addProductTab() {
      html  = '<div id="product_tab-' + product_tab_row + '">';
      html += '  <table class="form">';
      html += '    <tr>';
      html += '      <td colspan="2"><h3><?php echo $entry_tab; ?> ' + product_tab_row + '</h3><span class="help"><?php echo $entry_font_customization_help; ?></span></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_title; ?></td>';
      html += '      <td>';
      <?php foreach ($languages as $language) { ?>
      html += '      <input type="text" name="mmr_product_tabs_additional[' + product_tab_row + '][title][<?php echo $language['language_id']; ?>]" value="" /> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />';
      <?php } ?>
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_content; ?></td>';
      html += '      <td><select name="mmr_product_tabs_additional[' + product_tab_row + '][link_id]">';
      html += '      <option value="0"><?php echo $text_select ?></option>';
      html += '      <?php foreach ($informations as $information) { ?>';
      html += '      <option value="<?php echo $information['information_id'] ?>"><?php echo $information['title'] ?></option>';
      html += '      <?php } ?>';
      html += '      </select>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_status; ?></td>';
      html += '      <td><select name="mmr_product_tabs_additional[' + product_tab_row + '][status]">';
      html += '        <option value="1"><?php echo $text_enabled; ?></option>';
      html += '        <option value="0"><?php echo $text_disabled; ?></option>';
      html += '      </select></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td colspan="2"><h4><?php echo $entry_font; ?></h4></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_font_customization; ?></td>';
      html += '      <td><input type="radio" name="mmr_product_tabs_additional[' + product_tab_row + '][font_customized]" value="1" /><?php echo $text_yes; ?>';
      html += '      <input type="radio" name="mmr_product_tabs_additional[' + product_tab_row + '][font_customized]" value="0" checked="checked" /><?php echo $text_no; ?>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_size; ?></td>';
      html += '      <td><select name="mmr_product_tabs_additional[' + product_tab_row + '][font_size]">';
      <?php for ($i = 7; $i <= 32; $i++) { ?>
      html += '        <option value="<?php echo $i; ?>" <?php if ($i==14) { ?>selected<?php } ?>><?php echo $i; ?></option>';
      <?php } ?>
      html += '      </select> <span class="help inline"><?php echo $entry_px; ?></span></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_color; ?></td>';
      html += '      <td><input type="text" name="mmr_product_tabs_additional[' + product_tab_row + '][font_color]" value="#333333" size="6" class="color" /></td>';
      html += '    </tr>';
      html += '    </table>';
      html += '    </div>';
      $('#product_tab-vtabs').append(html);
      $('#product_tab_vtab_add').before('<a href="#product_tab-' + product_tab_row + '" id="product_tab_vtab-' + product_tab_row + '"><?php echo $entry_tab; ?> ' + product_tab_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#product_tab_vtab-' + product_tab_row + '\').remove(); $(\'#product_tab-' + product_tab_row + '\').remove(); return false;" /></a>');
      $('#tab-product .vtabs a').tabs();
      $('#product_tab_vtab-' + product_tab_row).trigger('click');
      product_tab_row++;
    }
    //--></script>

  <script type="text/javascript"><!--
    var quickorder_field_row = <?php echo $quickorder_field_row; ?>;
    function addQuickorderField() {
      html  = '<div id="quickorder_field-' + quickorder_field_row + '">';
      html += '  <table class="form">';
      html += '    <tr>';
      html += '      <td colspan="2"><h3><?php echo $entry_field; ?> ' + quickorder_field_row + '</h3></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_status; ?></td>';
      html += '      <td><select name="mmr_quickorder_fields[' + quickorder_field_row + '][status]">';
      html += '        <option value="1"><?php echo $text_enabled; ?></option>';
      html += '        <option value="0"><?php echo $text_disabled; ?></option>';
      html += '      </select></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_label; ?></td>';
      html += '      <td>';
      <?php foreach ($languages as $language) { ?>
      html += '<input type="text" name="mmr_quickorder_fields[' + quickorder_field_row + '][label][<?php echo $language['language_id']; ?>]" value="" /> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />';
      <?php } ?>
      html += '     </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_required; ?></td>';
      html += '      <td><input type="radio" name="mmr_quickorder_fields[' + quickorder_field_row + '][required]" value="1" /><?php echo $text_yes; ?>';
      html += '      <input type="radio" name="mmr_quickorder_fields[' + quickorder_field_row + '][required]" value="0" checked="checked" /><?php echo $text_no; ?>';
      html += '      </td>';
      html += '    </tr>';
      html += '    </table>';
      html += '    </div>';
      $('#quickorder_field-vtabs').append(html);
      $('#quickorder_field_vtab_add').before('<a href="#quickorder_field-' + quickorder_field_row + '" id="quickorder_field_vtab-' + quickorder_field_row + '"><?php echo $entry_field; ?> ' + quickorder_field_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#quickorder_field_vtab-' + quickorder_field_row + '\').remove(); $(\'#quickorder_field-' + quickorder_field_row + '\').remove(); return false;" /></a>');
      $('#tab-quickorder .vtabs a').tabs();
      $('#quickorder_field_vtab-' + quickorder_field_row).trigger('click');
      quickorder_field_row++;
    }
    //--></script>

  <script type="text/javascript"><!--
    var callback_field_row = <?php echo $callback_field_row; ?>;
    function addcallbackField() {
      html  = '<div id="callback_field-' + callback_field_row + '">';
      html += '  <table class="form">';
      html += '    <tr>';
      html += '      <td colspan="2"><h3><?php echo $entry_field; ?> ' + callback_field_row + '</h3></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_status; ?></td>';
      html += '      <td><select name="mmr_callback_fields[' + callback_field_row + '][status]">';
      html += '        <option value="1"><?php echo $text_enabled; ?></option>';
      html += '        <option value="0"><?php echo $text_disabled; ?></option>';
      html += '      </select></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_label; ?></td>';
      html += '      <td>';
      <?php foreach ($languages as $language) { ?>
      html += '<input type="text" name="mmr_callback_fields[' + callback_field_row + '][label][<?php echo $language['language_id']; ?>]" value="" /> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />';
      <?php } ?>
      html += '     </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_required; ?></td>';
      html += '      <td><input type="radio" name="mmr_callback_fields[' + callback_field_row + '][required]" value="1" /><?php echo $text_yes; ?>';
      html += '      <input type="radio" name="mmr_callback_fields[' + callback_field_row + '][required]" value="0" checked="checked" /><?php echo $text_no; ?>';
      html += '      </td>';
      html += '    </tr>';
      html += '    </table>';
      html += '    </div>';
      $('#callback_field-vtabs').append(html);
      $('#callback_field_vtab_add').before('<a href="#callback_field-' + callback_field_row + '" id="callback_field_vtab-' + callback_field_row + '"><?php echo $entry_field; ?> ' + callback_field_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#callback_field_vtab-' + callback_field_row + '\').remove(); $(\'#callback_field-' + callback_field_row + '\').remove(); return false;" /></a>');
      $('#tab-callback .vtabs a').tabs();
      $('#callback_field_vtab-' + callback_field_row).trigger('click');
      callback_field_row++;
    }
    //--></script>

  <script type="text/javascript"><!--
    var advantage_row = <?php echo $advantage_row; ?>;
    function addAdvantage() {
      html  = '<div id="advantage-' + advantage_row + '">';
      html += '  <table class="form">';
      html += '    <tr>';
      html += '      <td colspan="2"><h3><?php echo $entry_advantage; ?> ' + advantage_row + '</h3></td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td class="vtop"><?php echo $entry_icon; ?><span class="help"><?php echo $entry_icon_help; ?></span></td>';
      html += '      <td><select name="mmr_advantages[' + advantage_row + '][icon]">';
      <?php for ($j = 1; $j <= count($mmr_fa_icons); $j++) { ?>
      html += '      <option value="<?php echo $mmr_fa_icons[$j]; ?>" <?php if ($j==222) echo "selected"; ?>><?php echo $j; ?></option>';
      <?php } ?>
      html += '      </select> <span class="inline"><a class="modal_link" target="_blank" href="../catalog/view/theme/moneymaker/image/fa-icons.png" ><?php echo $text_view;?></a></span>';
      html += '      </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_text; ?></td>';
      html += '      <td>';
      <?php foreach ($languages as $language) { ?>
      html += '<input type="text" name="mmr_advantages[' + advantage_row + '][text][<?php echo $language['language_id']; ?>]" value="" /> <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />';
      <?php } ?>
      html += '     </td>';
      html += '    </tr>';
      html += '    <tr>';
      html += '      <td><?php echo $entry_link; ?></td>';
      html += '      <td><select name="mmr_advantages[' + advantage_row + '][link_id]">';
      html += '      <option value="0"><?php echo $text_select ?></option>';
      html += '      <?php foreach ($informations as $information) { ?>';
      html += '      <option value="<?php echo $information['information_id'] ?>"><?php echo $information['title'] ?></option>';
      html += '      <?php } ?>';
      html += '      </select> <span class="help inline"><?php echo $entry_optional; ?></span>';
      html += '      </td>';
      html += '    </tr>';
      html += '    </table>';
      html += '    </div>';
      $('#advantage-vtabs').append(html);
      $('#advantage_vtab_add').before('<a href="#advantage-' + advantage_row + '" id="advantage_vtab-' + advantage_row + '"><?php echo $entry_advantage; ?> ' + advantage_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#advantage_vtab-' + advantage_row + '\').remove(); $(\'#advantage-' + advantage_row + '\').remove(); return false;" /></a>');
      $('#tab-advantages .vtabs a').tabs();
      $('#advantage_vtab-' + advantage_row).trigger('click');
      advantage_row++;
    }
    //--></script>

<script type="text/javascript" src="view/javascript/moneymaker/jscolor/jscolor.js"></script>
<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();

	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');

	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" />');
					}
				});
			}
		},
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>
<script type="text/javascript"><!--
	$(document).ready(function(){
		$('.buttons > a.button').removeClass('hidden');
	});
//--></script>
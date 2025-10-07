<?php
if (isset($_POST['product_title'])) {$product_title = trim($_POST['product_title']);}
if (isset($_POST['product_price'])) {$product_price = trim($_POST['product_price']);}
if (isset($_POST['product_code'])) {$product_code = trim($_POST['product_code']);}
if (isset($_POST['product_url'])) {$product_url = trim($_POST['product_url']);}
if (isset($_POST['product_qty'])) {$product_qty = trim($_POST['product_qty']);}
if (isset($_POST['mmr_quickorder_fields'])) {$product_fields = $_POST['mmr_quickorder_fields'];}
if (isset($_POST['mmr_quickorder_fields_label'])) {$product_fields_label = $_POST['mmr_quickorder_fields_label'];}
if (isset($_POST['mmr_quickorder_fields_required'])) {$product_fields_required = $_POST['mmr_quickorder_fields_required'];}
if (isset($_POST['email'])) {$email = trim($_POST['email']);}
if (isset($_POST['email_subject'])) {$subject = trim($_POST['email_subject']);}
if (isset($_POST['email_order_received'])) {$email_order_received = trim($_POST['email_order_received']);}
if (isset($_POST['email_order_detail'])) {$email_order_detail = trim($_POST['email_order_detail']);}
if (isset($_POST['email_url'])) {$email_url = trim($_POST['email_url']);}

//simple validation
$valid = false;
if (isset($product_fields)) {
  foreach ($product_fields as $key => $product_field) {
    if ($product_fields_required[$key] == 1 ) {
      if (isset($product_field) && $product_field!=="") {$valid = true;} else {$valid = false; break; }
    } else {$valid = true;}
  }
}

if ($valid) {
  $newline = "\n";
  $boundary = '----=_NextPart_' . md5(time());
  $to = $sender = $from = $email;
  $text = $email_order_received  . $newline . $newline .
    $email_order_detail . $newline . $product_title . " (x". $product_qty. ") " . $newline . $email_url.": ".$product_url;
  if ($product_code) {$text .=  " (" . $product_code . ")";}
  $text .=  $newline . $product_price . $newline . $newline;
  foreach ($product_fields as $key => $product_field) {
    if ($product_field!=="") $text .= $product_fields_label[$key].": ".$product_field. $newline;
  }
  $header = '';
  $header .= 'MIME-Version: 1.0' . $newline;
  $header .= 'Date: ' . date('D, d M Y H:i:s O') . $newline;
  $header .= 'From: ' . '=?UTF-8?B?' . base64_encode($sender) . '?=' . '<' . $from . '>' . $newline;
  $header .= 'Reply-To: ' . '=?UTF-8?B?' . base64_encode($sender) . '?=' . '<' . $from . '>' . $newline;
  $header .= 'Return-Path: ' . $from . $newline;
  $header .= 'X-Mailer: PHP/' . phpversion() . $newline;
  $header .= 'Content-Type: multipart/related; boundary="' . $boundary . '"' . $newline . $newline;
  $message  = '--' . $boundary . $newline;
  $message .= 'Content-Type: text/plain; charset="utf-8"' . $newline;
  $message .= 'Content-Transfer-Encoding: 8bit' . $newline . $newline;
  $message .= $text . $newline . $newline;
  $message .= '--' . $boundary . '--' . $newline;
  ini_set('sendmail_from', $from);
  mail($to, '=?UTF-8?B?' . base64_encode($subject) . '?=', $message, $header);
} else {
  echo 0;
};
?>
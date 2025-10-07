<?php if (!isset($redirect)) { ?>
<div class="table-responsive col-xs-12">
  <br />
  <table class="table">
    <thead>
    <tr>
      <td><?php echo $column_name; ?></td>
      <td><?php echo $column_model; ?></td>
      <td><?php echo $column_quantity; ?></td>
      <td class="text-right text-nowrap"><?php echo $column_price; ?></td>
      <td class="text-right text-nowrap"><?php echo $column_total; ?></td>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($products as $product) { ?>
    <?php if($product['recurring']): ?>
    <tr>
      <td colspan="6" style="border:none;"><image src="catalog/view/theme/moneymaker/image/reorder.png" alt="" title="" style="float:left;" /><span style="float:left;line-height:18px; margin-left:10px;">
                          <strong><?php echo $text_recurring_item ?></strong>
          <?php echo $product['profile_description'] ?>
      </td>
    </tr>
    <?php endif; ?>
    <tr>
      <td>
        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
        <div>
          <?php foreach ($product['option'] as $option) { ?>
          &nbsp;<small>- <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
          <?php } ?>
          <?php if($product['recurring']): ?>
          &nbsp;<small>- <?php echo $text_payment_profile ?>: <?php echo $product['profile_name'] ?></small>
          <?php endif; ?>
        </div>
      </td>
      <td><?php echo $product['model']; ?></td>
      <td><?php echo $product['quantity']; ?></td>
      <td class="text-right text-nowrap"><?php echo $product['price']; ?></td>
      <td class="text-right text-nowrap"><?php echo $product['total']; ?></td>
    </tr>
    <?php } ?>
    <?php foreach ($vouchers as $vouchers) { ?>
    <tr>
      <td><?php echo $vouchers['description']; ?></td>
      <td></td>
      <td>1</td>
      <td class="text-right"><?php echo $vouchers['amount']; ?></td>
      <td class="text-right"><?php echo $vouchers['amount']; ?></td>
    </tr>
    <?php } ?>
    <tr><td></td></tr>
    <?php foreach ($totals as $total) { ?>
    <tr>
      <td></td>
      <td colspan="3" class="text-right text-nowrap text-neutral"><?php echo $total['title']; ?></td>
      <td class="text-right text-nowrap"><?php echo $total['text']; ?></td>
    </tr>
    <?php } ?>
    </tbody>
  </table>
</div>
<div class="payment"><?php echo $payment; ?></div>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script>
<?php } ?>
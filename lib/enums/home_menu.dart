import 'package:flutter/cupertino.dart';
import 'package:nagad_clone/styles/AppText.dart';

enum HomeMenu {
  //top menu
  SEND_MONEY('Send Money', 'assets/ic_sendmoney.png', Text(AppText.placeholder)),
  CASH_OUT('Cash Out', 'assets/ic_cash_out.png', Text(AppText.placeholder)),
  MOBILE_RECHARGE('Top-up', 'assets/ic_mobile_recharge.png', Text(AppText.placeholder)),
  ADD_MONEY('Add Money', 'assets/ic_add_money_normal.png', Text(AppText.placeholder)),

  TRANSFER_MONEY('Transfer', 'assets/ic_transfer_money_normal.png', Text(AppText.placeholder)),
  INSURANCE('Insurance', 'assets/ic_insurance.png', Text(AppText.placeholder)),
  NAGAD_MELA('Nagad Mela', 'assets/ic_nagad_mela.png', Text(AppText.placeholder)),

  MERCHANT_PAY('Merchant Pay', 'assets/ic_merchantpay.png', Text(AppText.placeholder)),
  BILL_PAY('Bill Pay', 'assets/ic_billpay.png', Text(AppText.placeholder)),
  EMI_PAY('EMI Pay', 'assets/ic_mfi_normal.png', Text(AppText.placeholder)),
  DONATION('Donation', 'assets/ic_donation.png', Text(AppText.placeholder)),

  CONTACT('Contact', 'assets/ic_contactus.png', Text(AppText.placeholder)),
  ZAKAT_CALCULATOR('Zakat', 'assets/ic_zakat.png', Text(AppText.placeholder)),
  LIMIT_AND_CHARGE('Limits', 'assets/ic_limit.png', Text(AppText.placeholder)),
  SHUROKKHA('Shurokkha', 'assets/ic_donation.png', Text(AppText.placeholder)),
  SHADHIN('Shadhin', 'assets/ic_shadhin_pay_customer.png', Text(AppText.placeholder)),



  MOREE('More', 'assets/ic_sendmoney.png', Text(AppText.placeholder));


  final String title;
  final String icon;
  final Widget widget;

  const HomeMenu(this.title, this.icon, this.widget);
}
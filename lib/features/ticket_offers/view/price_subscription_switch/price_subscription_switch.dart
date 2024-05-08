import 'dart:io';

import 'package:effective_mobile/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PriceSubscriptionSwitch extends StatefulWidget {
  const PriceSubscriptionSwitch({super.key});

  @override
  State<PriceSubscriptionSwitch> createState() =>
      _PriceSubscriptionSwitchState();
}

class _PriceSubscriptionSwitchState extends State<PriceSubscriptionSwitch> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.only(left: 16.0, right: 8.0),
      height: 51.0,
      decoration: BoxDecoration(
        color: Theme.of(context).dialogBackgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          /// TITLE
          Expanded(
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/ic_bell.svg'),
                const SizedBox(width: 8.0),
                Text(
                  Titles.priceSubscription,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
              ],
            ),
          ),

          /// SWITCH
          Platform.isIOS || Platform.isMacOS
              ? CupertinoSwitch(
                  value: _switchValue,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (value) => _switch())
              : Switch(
                  value: _switchValue,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (value) => _switch())
        ],
      ),
    );
  }

  void _switch() {
    setState(() => _switchValue = !_switchValue);
  }
}

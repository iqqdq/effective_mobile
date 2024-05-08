import 'package:effective_mobile/extensions/extensions.dart';
import 'package:effective_mobile/components/components.dart';
import 'package:effective_mobile/features/ticket_offers/view/view.dart';
import 'package:flutter/material.dart';

class TagView extends StatefulWidget {
  final Function(DateTime) onComebackDateTimeUpdate;
  final Function(DateTime) onWhenDateTimeUpdate;

  const TagView({
    super.key,
    required this.onComebackDateTimeUpdate,
    required this.onWhenDateTimeUpdate,
  });

  @override
  State<TagView> createState() => _TagViewState();
}

class _TagViewState extends State<TagView> {
  final List<String> _assets = [
    'assets/icons/ic_plus.svg',
    '',
    'assets/icons/ic_man.svg',
    'assets/icons/ic_filter.svg',
  ];
  late List<String> _tags;
  DateTime? _comebackDateTime;
  DateTime _whenDateTime = DateTime.now();

  @override
  void initState() {
    _updateTags();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _tags.length,
        itemBuilder: (context, index) => Material(
          color: Colors.transparent,
          child: TagTile(
            title: _tags[index],
            asset: _assets[index],
            onTap: () =>
                index == 0 || index == 1 ? _selectDate(index: index) : {},
          ),
        ),
      ),
    );
  }

  void _updateTags() {
    setState(() => _tags = [
          _comebackDateTime == null
              ? Titles.comeback
              : _comebackDateTime!.toShortDate(),
          _whenDateTime.toShortDate(),
          '1, ${Titles.economy}',
          Titles.filter.toLowerCase(),
        ]);
  }

  Future _selectDate({required int index}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      locale: const Locale('ru'),
      initialDate: _whenDateTime,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              background: Theme.of(context).scaffoldBackgroundColor,
              primary: Theme.of(context).primaryColor,
              onPrimary: HexColors.white,
              onSurface: HexColors.white,
            ),
          ),
          child: child ?? Container(),
        );
      },
    );

    if (picked != null) {
      index == 0 ? _comebackDateTime = picked : _whenDateTime = picked;

      if (_comebackDateTime != null) {
        // RETUTRN COMEBACK DATE TO SCREEN
        widget.onComebackDateTimeUpdate(_comebackDateTime!);
        // REMOVE IMAGE FROM FIRST TAG
        _assets.first = '';
      }

      // RETURN WHEN DATE TO SCREEN
      widget.onWhenDateTimeUpdate(_whenDateTime);

      _updateTags();
    }
  }
}

import 'package:effective_mobile/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final String? hintText;
  final String preffixIcon;
  final Widget? suffixIcon;
  final VoidCallback onSubmitted;

  const SearchTextField({
    super.key,
    required this.textEditingController,
    required this.focusNode,
    this.hintText,
    required this.preffixIcon,
    this.suffixIcon,
    required this.onSubmitted,
  });

  @override
  State<StatefulWidget> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: Row(children: [
        SvgPicture.asset(
          widget.textEditingController.text.isEmpty
              ? widget.preffixIcon
              : (widget.textEditingController.text.isNotEmpty ||
                      widget.focusNode.hasFocus
                  ? 'assets/icons/ic_search_white.svg'
                  : 'assets/icons/ic_search_grey.svg'),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: TextField(
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp("[а-яА-Я]"))
            ],
            controller: widget.textEditingController,
            focusNode: widget.focusNode,
            textCapitalization: TextCapitalization.sentences,
            keyboardAppearance: Brightness.dark,
            style: Theme.of(context).textTheme.titleMedium,
            onChanged: (text) => setState(() {}),
            onEditingComplete: () => setState(() => widget.focusNode.unfocus()),
            onSubmitted: (text) => {
              FocusScope.of(context).unfocus(),
              widget.onSubmitted(),
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              isDense: true,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: HexColors.grey6),
              suffixIcon: widget.suffixIcon ??
                  (widget.textEditingController.text.isNotEmpty
                      ? InkWell(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              top: 14.0,
                              bottom: 6.0,
                            ),
                            child:
                                SvgPicture.asset('assets/icons/ic_close.svg'),
                          ),
                          onTap: () => setState(() {
                            widget.textEditingController.clear();
                            widget.focusNode.requestFocus();
                          }),
                        )
                      : null),
            ),
          ),
        ),
      ]),
    );
  }
}

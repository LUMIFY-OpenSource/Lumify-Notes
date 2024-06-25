import 'package:flutter/material.dart';
import 'package:progress_builder/progress_builder.dart';

import '../../../configurations/configurations.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    this.authButtonType = AuthButtonType.filled,
    this.iconPath,
    this.label,
    required this.onPressed,
    this.icon,
  }) : super(key: key);

  final AuthButtonType authButtonType;
  final String? iconPath;
  final IconData? icon;
  final String? label;
  final Future<void> Function() onPressed;

  @override
  Widget build(BuildContext context) => CircularProgressBuilder.adaptive(
        builder: (context, action, error) =>
            authButtonType == AuthButtonType.filled
                ? ElevatedButton(
                    onPressed: action,
                    child: Padding(
                      padding: const EdgeInsets.all(kPadding * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (iconPath != null)
                            ImageIcon(
                              AssetImage(iconPath!),
                              color: Theme.of(context).primaryColor,
                            )
                          else
                            Icon(
                              icon,
                              color: Theme.of(context).primaryColor,
                            ),
                          const SizedBox(
                            width: kPadding * 2,
                          ),
                          Text(label!),
                        ],
                      ),
                    ),
                  )
                : authButtonType == AuthButtonType.outlined
                    ? OutlinedButton.icon(
                        onPressed: action,
                        icon: iconPath != null
                            ? ImageIcon(
                                AssetImage(iconPath!),
                                color: Theme.of(context).primaryColor,
                              )
                            : Icon(
                                icon,
                                color: Theme.of(context).primaryColor,
                              ),
                        label: Padding(
                          padding: const EdgeInsets.all(kPadding * 2),
                          child: Text(label!),
                        ),
                      )
                    : IconButton(
                        onPressed: action,
                        icon: iconPath != null
                            ? ImageIcon(
                                AssetImage(iconPath!),
                                color: Theme.of(context).primaryColor,
                              )
                            : Icon(
                                icon,
                                color: Theme.of(context).primaryColor,
                              ),
                      ),
        action: (_) async {
          await onPressed.call();
        },
      );
}

enum AuthButtonType {
  filled,
  outlined,
  icon,
}

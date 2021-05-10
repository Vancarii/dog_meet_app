import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

class Pup1Attributes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Golden Retriever',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: '45 pounds',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Not very playful',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Gentle Greeter',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Intact',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Female',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
      ],
    );
  }
}

class Pup2Attributes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Demon',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: '4 pounds',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Not very playful',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Loud Greeter',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Intact',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: RawChip(
            label: CustomText(
              text: 'Female',
              size: 12,
              bold: true,
              color: AppColors.colorBlack,
            ),
            backgroundColor: Colors.amber[100],
          ),
        ),
      ],
    );
  }
}

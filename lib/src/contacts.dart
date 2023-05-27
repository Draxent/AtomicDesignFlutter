import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionContacts extends StatelessWidget {
  const SectionContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: AppColors.primary2,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 240, vertical: 140),
          child: Column(
            children: [
              _SectionContactsContent(),
              Space.vXXL,
              _SectionContactsClients(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionContactsContent extends StatelessWidget {
  const _SectionContactsContent();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _SectionContactsText(),
        Space.hXXL,
        _SectionContactsForm(),
      ],
    );
  }
}

class _SectionContactsText extends StatelessWidget {
  const _SectionContactsText();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 353,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Heading(
            title: 'Contact',
            heading: 'Get in touch with us',
            isWhite: true,
          ),
          Space.vS,
          Text(
            'Leverage agile frameworks to provide a robust synopsis for strategy foster collaborative thinking to further the overall value.',
            style: context.bodyMedium.white,
          ),
          Space.vL,
          const SocialInfo(
            type: SocialInfoType.clock,
            firstText: 'Mon - Sat 9.00 - 18.00',
            secondText: 'Sunday Closed',
          ),
          Space.vL,
          const SocialInfo(
            type: SocialInfoType.email,
            firstText: 'Email',
            secondText: 'contact@logistics.com',
          ),
          Space.vL,
          const SocialInfo(
            type: SocialInfoType.phone,
            firstText: 'Call Us',
            secondText: '(00) 112 365 489',
          ),
        ],
      ),
    );
  }
}

class _SectionContactsForm extends StatelessWidget {
  const _SectionContactsForm();

  @override
  Widget build(BuildContext context) {
    return AppForm(
      inputs: const [
        Input(hintText: 'Your name'),
        Input(hintText: 'Email'),
        Input(hintText: 'Phone Number'),
        Input(hintText: 'City'),
      ],
      msgInput: const Input(
        hintText: 'Your Message',
        isRequired: false,
        numLines: 4,
      ),
      submitText: 'Submit Message',
    );
  }
}

class _SectionContactsClients extends StatelessWidget {
  const _SectionContactsClients();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Client(
          background: Images.contactsClientImg1,
          logo: Images.contactsClientLogo1,
        ),
        Client(
          background: Images.contactsClientImg2,
          logo: Images.contactsClientLogo2,
        ),
        Client(
          background: Images.contactsClientImg3,
          logo: Images.contactsClientLogo3,
        ),
        Client(
          background: Images.contactsClientImg4,
          logo: Images.contactsClientLogo4,
        ),
      ],
    );
  }
}

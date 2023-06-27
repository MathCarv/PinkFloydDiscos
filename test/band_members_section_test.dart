import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pinkfloyd/band_members_section.dart';

void main() {
  testWidgets(
      'BandMembersSection - Verificar se a seção de membros da banda é exibida corretamente',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

    expect(find.text('Membros da Banda'), findsOneWidget);
    expect(find.byType(BandMemberCircle), findsNWidgets(8));
    expect(find.byType(SingleChildScrollView), findsOneWidget);
  });

  testWidgets(
      'BandMembersSection - Verificar se o título "Membros da Banda" está presente e formatado corretamente',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

    final titleText = find.text('Membros da Banda');

    expect(titleText, findsOneWidget);
    expect(
      tester.widget<Text>(titleText).style!.color,
      equals(Colors.white),
    );
    expect(
      tester.widget<Text>(titleText).style!.fontSize,
      equals(20),
    );
    expect(
      tester.widget<Text>(titleText).style!.fontWeight,
      equals(FontWeight.bold),
    );
  });

  testWidgets(
      'BandMembersSection - Verificar se as imagens e nomes dos membros da banda são exibidos corretamente',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

    expect(find.byType(CircleAvatar), findsNWidgets(8));
    expect(find.text('David Gilmour'), findsOneWidget);
    expect(find.text('Syd Barrett'), findsOneWidget);
    expect(find.text('Nick Mason'), findsOneWidget);
    expect(find.text('Roger Waters'), findsOneWidget);
    expect(find.text('Richard Wright'), findsOneWidget);
    expect(find.text('Matheus Carvalho'), findsOneWidget);
    expect(find.text('Igor Villamarim'), findsOneWidget);
    expect(find.text('Thalita Fortes'), findsOneWidget);
  });

  testWidgets(
      'BandMembersSection - Verificar se a seção de membros da banda não está vazia',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

    expect(find.byType(BandMemberCircle), findsWidgets);
  });

  testWidgets(
      'BandMembersSection - Verificar se o título "Membros da Banda" não está ausente',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

    final titleText = find.text('Membros da Banda');

    expect(titleText, findsOneWidget);
  });
  testWidgets(
      'BandMembersSection - Verificar se o título "Membros da Banda" não está vazio',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

    final titleText = find.text('Membros da Banda');

    expect(titleText, findsOneWidget);
    expect(tester.widget<Text>(titleText).data, isNotEmpty);
  });

  testWidgets(
      'BandMembersSection - Verificar se os nomes dos membros da banda não estão vazios',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

    expect(find.byType(CircleAvatar), findsNWidgets(8));

    final memberNames = [
      'David Gilmour',
      'Syd Barrett',
      'Nick Mason',
      'Roger Waters',
      'Richard Wright',
      'Matheus Carvalho',
      'Igor Villamarim',
      'Thalita Fortes',
    ];

    for (final name in memberNames) {
      final memberName = find.text(name);
      expect(memberName, findsOneWidget);
      expect(tester.widget<Text>(memberName).data, isNotEmpty);
    }
  });

  testWidgets(
      'BandMembersSection - Verificar se o estilo do título "Membros da Banda" está correto',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

    final titleText = find.text('Membros da Banda');

    expect(titleText, findsOneWidget);
    final titleStyle = tester.widget<Text>(titleText).style!;
    expect(titleStyle.color, equals(Colors.white));
    expect(titleStyle.fontSize, equals(20));
    expect(titleStyle.fontWeight, equals(FontWeight.bold));
  });

  testWidgets(
    'BandMembersSection - Verificar se o nome "John Smith" não está presente quando a seção está vazia',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

      expect(find.text('John Smith'), findsNothing);
    },
  );

  testWidgets(
    'BandMembersSection - Verificar se o estilo do título "Membros da Banda" não está correto',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

      final titleText = find.text('Membros da Banda');

      expect(titleText, findsOneWidget);
      final titleStyle = tester.widget<Text>(titleText).style!;
      expect(titleStyle.color, isNot(equals(Colors.black)));
      expect(titleStyle.fontSize, isNot(equals(16)));
      expect(titleStyle.fontWeight, isNot(equals(FontWeight.normal)));
    },
  );

  testWidgets(
    'BandMembersSection - Verificar se o título "Integrantes da Banda" não está presente',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

      final titleText = find.text('Integrantes da Banda');

      expect(titleText, findsNothing);
    },
  );

  testWidgets(
    'BandMembersSection - Verificar se o nome "John Smith" não está presente',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

      expect(find.text('John Smith'), findsNothing);
    },
  );

  testWidgets(
    'BandMembersSection - Verificar se o estilo do título "Membros da Banda" está incorreto',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: BandMembersSection()));

      final titleText = find.text('Membros da Banda');

      expect(titleText, findsOneWidget);
      final titleStyle = tester.widget<Text>(titleText).style!;
      expect(titleStyle.color, isNot(equals(Colors.black)));
      expect(titleStyle.fontSize, isNot(equals(16)));
      expect(titleStyle.fontWeight, isNot(equals(FontWeight.normal)));
    },
  );
}

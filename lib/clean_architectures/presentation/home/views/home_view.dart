import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:advanced_mobile_gpt/core/components/extensions/context_extensions.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/appbar.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/advanced_mobile_gpt/recent_document.dart';
import 'package:advanced_mobile_gpt/core/components/widgets/header_custom.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/home/views/widgets/board_status.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/home/views/widgets/category_field.dart';
import 'package:advanced_mobile_gpt/clean_architectures/presentation/home/views/widgets/premium_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: <Widget>[
          AppBarCustom(
            pinned: true,
            backgroundColor: _primaryColor.withOpacity(0.3),
            widgetExpanded: const PremiumView(),
            expandedHeight: context.heightDevice * 0.3,
            title: const <Widget>[],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                const BoardStatus(),
                HeaderTextCustom(
                  headerText: 'Features',
                  textStyle:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                  isShowSeeMore: true,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: HomeCategoryField(),
                ),
                HeaderTextCustom(
                  headerText: 'Recent document',
                  textStyle:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                  isShowSeeMore: true,
                ),
                RecentDocumentItem(
                  header: 'What is love?',
                  content:
                      'All i need a little love in my life. All i need is a little love in the light, but i\'m hopping it might start',
                  type: 'Bloc idea',
                  createdDate: DateTime.now(),
                ),
                const SizedBox(height: 10.0),
                RecentDocumentItem(
                  header: 'What is love?',
                  content:
                      'All i need a little love in my life. All i need is a little love in the light, but i\'m hopping it might start',
                  type: 'Bloc idea',
                  createdDate: DateTime.now(),
                ),
                const SizedBox(height: 100.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}

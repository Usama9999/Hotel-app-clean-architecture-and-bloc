import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times_app/core/helper/helper.dart';
import 'package:ny_times_app/core/translations/l10n.dart';
import 'package:ny_times_app/core/utils/injections.dart';
import 'package:ny_times_app/src/features/main_pages/domain/hotels/usecases/hotels_usecase.dart';
import 'package:ny_times_app/src/features/main_pages/presentation/hotels/bloc/hotel_bloc.dart';
import 'package:ny_times_app/src/features/main_pages/presentation/shared_widgets/hotel_card_widget.dart';
import 'package:ny_times_app/src/shared/presentation/pages/background_page.dart';
import 'package:ny_times_app/src/shared/presentation/widgets/app_loader.dart';
import 'package:ny_times_app/src/shared/presentation/widgets/custom_app_bar_widget.dart';
import 'package:ny_times_app/src/shared/presentation/widgets/reload_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  ArticlesBloc _bloc = ArticlesBloc(articlesUseCase: sl<HotelsUseCase>());

  // Key for scaffold to open drawer
  GlobalKey<ScaffoldState> _key = GlobalKey();

  // Refresh controller for list view
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  bool isSearching = false;

  @override
  void initState() {
    callHotels();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      appBar: CustomAppBarWidget(
        title: Text(
          S.of(context).nearby_hotel,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
            _key.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            size: 20,
          ),
        ),
      ),
      scaffoldKey: _key,
      withDrawer: true,
      child: Column(
        children: [
          // Custom App Bar

          // Space
          SizedBox(
            height: Helper.getVerticalSpace(),
          ),
          Expanded(
            child: BlocConsumer<ArticlesBloc, HotelState>(
              bloc: _bloc,
              listener: (context, state) {
                if (state is SuccessGetHotelState) {
                  _refreshController.refreshCompleted(
                    resetFooterState: true,
                  );
                }
              },
              builder: (context, state) {
                if (state is LoadingGetHotelState) {
                  return const AppLoader();
                } else if (state is ErrorGetHotelState) {
                  return ReloadWidget.error(
                    content: state.errorMsg,
                    onPressed: () {
                      callHotels();
                    },
                  );
                }

                // Check if there is no data
                if ((state as SuccessGetHotelState).articles.isEmpty) {
                  return ReloadWidget.empty(content: S.of(context).no_data);
                }

                return SmartRefresher(
                    enablePullDown: true,
                    enablePullUp: false,
                    header: WaterDropHeader(
                      waterDropColor: Theme.of(context).cardColor,
                    ),
                    controller: _refreshController,
                    onRefresh: _onRefresh,
                    onLoading: null,
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate((state).articles.length, (i) {
                          return HotelCard(
                            model: (state).articles[i],
                          );
                        }),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }

  // Refresh method called when pull down list
  void _onRefresh() async {
    _refreshController.requestRefresh();
    callHotels(withLoading: false);
  }

  // Call articles
  callHotels({bool withLoading = true}) {
    _bloc.add(
      OnGettingArticlesEvent(
        withLoading: withLoading,
      ),
    );
  }
}

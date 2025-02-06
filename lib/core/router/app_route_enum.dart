enum AppRouteEnum {
  articlesPage,
  navBar,
  articleDetailsPage,
  weViewPage,
  photoViewPage
}

extension AppRouteExtension on AppRouteEnum {
  String get name {
    switch (this) {
      case AppRouteEnum.articlesPage:
        return "/articles_page";

      case AppRouteEnum.articleDetailsPage:
        return "/article_details_page";

      case AppRouteEnum.weViewPage:
        return "/web_view_page";

      case AppRouteEnum.photoViewPage:
        return "/photo_view_page";

      case AppRouteEnum.navBar:
        return "/nav_bar";
    }
  }
}

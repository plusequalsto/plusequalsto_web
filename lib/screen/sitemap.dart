import 'package:xml/xml.dart';

class Sitemap {
  final List<String> _urls;

  Sitemap(this._urls);

  String generateSitemap() {
    // Create the XML builder
    final builder = XmlBuilder();

    // Start the XML document
    builder.element('urlset', nest: () {
      builder.attribute(
          'xmlns', 'http://www.sitemaps.org/schemas/sitemap-image/v1');

      for (final url in _urls) {
        builder.element('url', nest: () {
          builder.element('loc', nest: url);
          builder.element('lastmod', nest: DateTime.now().toIso8601String());
          builder.element('changefreq', nest: 'monthly');
          builder.element('priority', nest: '0.5');
        });
      }
    });

    // Build the XML document and return it as a string
    final document = builder.buildDocument();
    return document.toXmlString(pretty: true);
  }
}

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TradingViewChart extends StatefulWidget {
  @override
  _TradingViewChartState createState() => _TradingViewChartState();
}

class _TradingViewChartState extends State<TradingViewChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TradingView Chart'),
      ),
      body: const WebView(
        initialUrl: 'https://in.tradingview.com/chart/mwe5LXsn/',
      ),
    );
  }
}

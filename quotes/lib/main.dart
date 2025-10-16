import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: QuotesList()));
}

class QuotesList extends StatefulWidget {
  const QuotesList({super.key});

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote("Be yourself; everyone else is already taken.", "Oscar Wilde"),
    Quote("So many books, so little time.", "Frank Zappa"),
    Quote("A room without books is like a body without a soul.", "Marcus Tullius Cicero"),
  ];

  Widget quoteTemplate (quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '${quote.text}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                '${quote.author}',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
          letterSpacing: 2.0,
        ),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(children: quotes.map((quote) => quoteTemplate(quote)).toList()),
    );
  }
}

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: "Oscar Wilde", text: "Be yourself, everyone else is already taken"),
    Quote(author: "Oscar Wilde", text: "I have nothing to declare except my genius"),
    Quote(author: "Parth Kapadia", text: "The truth is rarerly pure and never simple"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome quotes"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map(
                (quote) => QuoteCard(
                    quote:quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }
                )
          ).toList(),
      ),
    );
  }
}





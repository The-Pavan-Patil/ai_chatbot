import 'dart:async';

import 'package:ai_chatbot/chatmessage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController _controller = TextEditingController();
  final List<ChatMessage> _messages = [];

  OpenAI? chatGPT;
  StreamSubscription? _subscription;

  final kkey =  "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";

  @override
  void initState() {

    super.initState();
  }
  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  void _sendMessage(){
    ChatMessage message = ChatMessage(text: _controller.text, sender: "User");
    setState(() {
      _messages.insert(0, message);
    });
    _controller.clear();

    //,,,,,,,,,,,,,
    final request = CompleteText(prompt: message.text, model: TextDavinci3Model(),maxTokens: 200);

    _subscription = chatGPT?.build(token: kkey,orgId: "").onChatCompletion(request: request).\
  }

  Widget _buildTextComposer() {
    return Row(
      children: [
         Expanded(
            child: TextField(controller: _controller ,decoration:  InputDecoration.collapsed(hintText: "Send a message"),onSubmitted: (value)  => _sendMessage(),)
        ),
        IconButton(onPressed: () => _sendMessage(), icon: const Icon(Icons.send)
        )
      ],
    ).p16();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Chatbot"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      body: SafeArea(child: Column(
        children: [
            Flexible(
              child: ListView.builder(
                itemCount: _messages.length,
                reverse: true,
                  padding: Vx.m8,
                itemBuilder: (context, index){
                  return _messages[index];
                }
              ),
            ),
          _buildTextComposer()
        ],
      )),
    );
  }
}

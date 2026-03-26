enum ChatEventType {
  chatBoxSync,
  chatBoxReloadByIds,
  chatBoxReloadCompletion,
  snapSync,
  snapFeedback,
  snapSendStatus,
  snapResend,
  snapRecall,
}

class KayeLeadImplant {
  static const String AFFECT_ADD = 'AFFECT_ADD';
  static const String AFFECT_UPDATE = 'AFFECT_UPDATE';
  static const String AFFECT_DELETE = 'AFFECT_DELETE';

  final ChatEventType type;
  final dynamic object;
  final List<int>? chatIds;
  final Map<String, List>? affects;

  KayeLeadImplant(this.type, {this.object, this.chatIds, this.affects});

  @override
  String toString() {
    return "type:$type,affects:$affects";
  }
}

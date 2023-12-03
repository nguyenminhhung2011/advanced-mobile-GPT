enum ChatStatus { error, loading, success }

extension ChatStatusExt on ChatStatus {
  bool get isLoading => this == ChatStatus.loading;
  bool get isError => this == ChatStatus.error;
  bool get isSuccess => this == ChatStatus.success;
}

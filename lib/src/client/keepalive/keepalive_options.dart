/// Keepalive options as outlined at:
/// https://github.com/grpc/grpc/blob/master/doc/keepalive.md
///
/// Referenced from `grpc-go`.
class KeepaliveOptions {
  /// After a duration of this time if the client doesn't see any activity it
  /// pings the server to see if the transport is still alive.
  /// If set below 10s, a minimum value of 10s will be used instead.
  /// The current default value is null.
  final Duration? time;

  /// After having pinged for keepalive check, the client waits for a duration
  /// of Timeout and if no activity is seen even after that the connection is
  /// closed.
  /// The current default value is 20 seconds.
  final Duration timeout;

  const KeepaliveOptions({
    this.timeout = const Duration(seconds: 20),
    this.time,
  });
}

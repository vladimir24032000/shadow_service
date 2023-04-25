import 'bluetooth_operations.dart';
import 'bluetooth_queue/queue_operation.dart';

class BluetoothOperationsProvider {
  static BluetoothOperations get call => QueueOperation();
}

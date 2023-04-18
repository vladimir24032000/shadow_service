// Functions in the database are named exactly in this style
enum UserPermission {
  accelGyro('AccelGyro'),
  advancedGaitAnalysis('AdvancedGaitAnalysis'),
  audioMode('AudioMode'),
  barChart('BarChart'),
  basicGaitAnalysis('BasicGaitAnalysis'),
  connectMoreSensors('ConnectMoreSensors'),
  developerMode('DeveloperMode'),
  exportASCII('ExportASCII'),
  loadServer('LoadServer'),
  testFunction('TestFunction'),
  videoMode('VideoMode');

  final String firebaseValue;

  const UserPermission(this.firebaseValue);
}

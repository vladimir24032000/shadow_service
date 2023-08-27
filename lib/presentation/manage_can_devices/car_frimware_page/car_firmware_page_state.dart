import 'package:service_app/core/firebase/firmware_model/firmware_model.dart';

sealed class CarFirmwarePageState {}

class InitCarFirmwarePageState implements CarFirmwarePageState {
  final BrandModel? selectedBrand;
  final ModelModel? selectedModel;
  final YearModel? selectedYear;
  final EquipmentModel? selectedEquipment;

  InitCarFirmwarePageState({
    this.selectedBrand,
    this.selectedModel,
    this.selectedYear,
    this.selectedEquipment,
  });
}

class InProgressCarFirmwarePageState implements CarFirmwarePageState {}

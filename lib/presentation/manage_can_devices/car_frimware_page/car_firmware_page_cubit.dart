import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/core/firebase/firebase_repo.dart';
import 'package:service_app/core/firebase/firmware_model/firmware_model.dart';
import 'package:service_app/presentation/manage_can_devices/car_frimware_page/car_firmware_page_state.dart';

class CarFirmwarePageCubit extends Cubit<CarFirmwarePageState> {
  final FirebaseRepo _firebaseRepo = FirebaseRepo();
  CarFirmwarePageCubit() : super(InitCarFirmwarePageState()) {
    getFirmwaresFromDb();
  }
  Uint8List? carfirmware;
  int? pagesCount;
  String? firmwwareName;
  FirmwareModel firmwareModel = FirmwareModel([]);
  String? downloadLink;

  Future<void> getFirmwaresFromDb() async {
    emit(InProgressCarFirmwarePageState());
    firmwareModel = await _firebaseRepo.getFirmwareModel();
    emit(InitCarFirmwarePageState());
  }

  Future<void> pickFirmware() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(dialogTitle: "Select a firmaware file", type: FileType.any);

    if (result != null) {
      File file = File(result.files.single.path!);
      firmwwareName = result.files.single.name.split(".")[0];

      carfirmware = await file.readAsBytes();
      splitFirmware();
    } else {
      // User canceled the picker
    }
  }

  void splitFirmware() {
    pagesCount = carfirmware!.length ~/ 128;
    if (pagesCount! * 128 < carfirmware!.length) {
      pagesCount = pagesCount! + 1;
    }
    final realSize = pagesCount! * 128;
    if (realSize > carfirmware!.length) {
      final bytesToAdd = realSize - carfirmware!.length;
      carfirmware = Uint8List.fromList(
          [...carfirmware!, ...List.generate(bytesToAdd, (index) => 255)]);
    }
  }

  Future<void> downloadFirmware() async {
    switch (state) {
      case InitCarFirmwarePageState():
        if (downloadLink != null) {
          firmwwareName = _firebaseRepo.getFrimwareName(downloadLink!);
          carfirmware = await _firebaseRepo.downloadFrimware(downloadLink!);
          splitFirmware();
        }
        break;
      default:
        break;
    }
  }

  void selectBrand(BrandModel? model) {
    if (firmwareModel.brands != null && model != null) {
      if (firmwareModel.brands!.contains(model)) {
        emit(InitCarFirmwarePageState(selectedBrand: model));
      }
    }
  }

  void selectModel(ModelModel? model) {
    switch (state) {
      case InitCarFirmwarePageState initState:
        if (initState.selectedBrand != null && model != null) {
          if (initState.selectedBrand!.models.contains(model)) {
            emit(InitCarFirmwarePageState(
              selectedBrand: initState.selectedBrand,
              selectedModel: model,
            ));
          }
        }
        break;
      default:
    }
  }

  void selectYear(YearModel? model) {
    switch (state) {
      case InitCarFirmwarePageState initState:
        if (initState.selectedModel != null && model != null) {
          if (initState.selectedModel!.years.contains(model)) {
            emit(InitCarFirmwarePageState(
              selectedBrand: initState.selectedBrand,
              selectedModel: initState.selectedModel,
              selectedYear: model,
            ));
          }
        }
        break;
      default:
    }
  }

  void selectEquipment(EquipmentModel? model) {
    switch (state) {
      case InitCarFirmwarePageState initState:
        if (initState.selectedYear != null && model != null) {
          if (initState.selectedYear!.equipments.contains(model)) {
            emit(InitCarFirmwarePageState(
              selectedBrand: initState.selectedBrand,
              selectedModel: initState.selectedModel,
              selectedYear: initState.selectedYear,
              selectedEquipment: model,
            ));
            downloadLink = model.link;
          }
        }
        break;
      default:
    }
  }
}

class FirmwareModel {
  List<BrandModel>? brands;

  FirmwareModel(this.brands);
  FirmwareModel.fromJson(Map<String, dynamic> json) {
    brands = [];
    for (final brandEntrie in json.entries) {
      final models = <ModelModel>[];
      for (final modelEntrie in brandEntrie.value.entries) {
        final years = <YearModel>[];
        for (final yearEntrie in modelEntrie.value.entries) {
          final equipments = <EquipmentModel>[];
          for (final equipmentsEntrie in yearEntrie.value.entries) {
            final equipment = EquipmentModel(
                equipmentsEntrie.key, equipmentsEntrie.value['firmware_link']);
            equipments.add(equipment);
          }
          final year = YearModel(yearEntrie.key, equipments);
          years.add(year);
        }

        final model = ModelModel(modelEntrie.key, years);
        models.add(model);
      }

      final brand = BrandModel(brandEntrie.key, models);
      brands!.add(brand);
    }
  }
}

class BrandModel {
  final String name;
  final List<ModelModel> models;

  BrandModel(this.name, this.models);
}

class ModelModel {
  final String name;
  final List<YearModel> years;

  ModelModel(this.name, this.years);
}

class YearModel {
  final String name;
  final List<EquipmentModel> equipments;

  YearModel(this.name, this.equipments);
}

class EquipmentModel {
  final String name;
  final String link;

  EquipmentModel(this.name, this.link);
}

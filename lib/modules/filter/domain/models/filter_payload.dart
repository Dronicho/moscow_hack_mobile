import 'package:moscow_hack/modules/filter/domain/models/filter_description.dart';

class FilterPayload {
  final List<FilterDescription>? filter;
  final String? search;

  FilterPayload(this.filter, this.search);
}

class NkoFilters extends FilterPayload {
  NkoFilters(super.filter, super.search);
}

class ProjectFilters extends FilterPayload {
  ProjectFilters(super.filter, super.search);
}

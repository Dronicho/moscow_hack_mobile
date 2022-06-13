import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/modules/filter/cubit/filter_cubit.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_description.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/widgets/app_chip.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/primary_button.dart';
import 'package:table_calendar/table_calendar.dart';

class FilterModal<T extends FilterCubit> extends StatefulWidget {
  final String name;

  const FilterModal({super.key, required this.name});

  @override
  State<FilterModal<T>> createState() => _FilterModalState();
}

class _FilterModalState<T extends FilterCubit> extends State<FilterModal<T>> {
  late FilterDescription description;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.0,
                child: TextButton(onPressed: context.pop, child: const Text('Отмена')),
              ),
              Text('Фильтры', style: context.textTheme.titleMedium),
              TextButton(onPressed: context.pop, child: const Text('Отмена'))
            ],
          ),
        ),
        BlocBuilder<T, FilterState>(builder: (context, state) {
          final description = state.map(
              initial: (_) => null,
              loading: (_) => null,
              loaded: (d) => d.filters.firstWhere((element) => element.name == widget.name));
          if (description == null) {
            return const AppErrorWidget();
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(description.displayName, style: context.textTheme.bodyLarge),
                ),
              ),
              FilterCard<T>(description: description),
            ],
          );
        }),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: PrimaryButton(onPressed: context.pop, child: const Text('Закрыть')),
        )
      ],
    );
  }
}

class FilterCard<T extends FilterCubit> extends StatelessWidget {
  final FilterDescription description;
  const FilterCard({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return description.map(
        switchSlider: (data) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: data.items
                .map((e) => PrimaryButton(
                      width: 150,
                      onPressed: () {
                        context.read<T>().updateFilter(description.copyWith(value: e == description.value ? '1' : e));
                      },
                      color: e == description.value ? null : AppColors.white,
                      child: Text(e),
                    ))
                .toList()),
        slider: (data) {
          final value = data.value as RangeValues;
          return RangeSlider(
            values: value,
            divisions: (data.max - data.min).round(),
            labels: RangeLabels(value.start.toInt().toString(), value.end.toInt().toString()),
            onChanged: (newValue) {
              context.read<T>().updateFilter(description.copyWith(value: newValue));
            },
            min: data.min.toDouble(),
            max: data.max.toDouble(),
          );
        },
        multiSelect: (data) {
          final value = data.value as List<String>;
          return Wrap(
            spacing: 8.0,
            children: data.items.map((e) {
              Widget child;
              if (value.contains(e)) {
                child = AppChip.primary(label: e);
              } else {
                child = AppChip.neutral(label: e);
              }
              return GestureDetector(
                  onTap: () {
                    List<String> newValue;
                    if (value.contains(e)) {
                      newValue = value.where((element) => element != e).toList();
                    } else {
                      newValue = [...value, e];
                    }

                    context.read<T>().updateFilter(description.copyWith(value: newValue));
                  },
                  child: child);
            }).toList(),
          );
        },
        select: (data) {
          return DropdownButton(
              items: data.items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (value) {
                if (value != null) {
                  context.read<T>().updateFilter(description.copyWith(value: data));
                }
              });
        },
        date: (data) {
          final value = description.value as DateTime;
          return TableCalendar(
            locale: 'ru_RU',
            onDaySelected: (selectedDay, focusedDay) {
              context.read<T>().updateFilter(description.copyWith(value: focusedDay));
            },
            headerStyle: const HeaderStyle(formatButtonVisible: false),
            availableGestures: AvailableGestures.horizontalSwipe,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: value,
            currentDay: value,
          );
        });
  }
}

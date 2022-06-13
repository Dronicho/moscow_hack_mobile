import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/modules/filter/cubit/filter_cubit.dart';
import 'package:moscow_hack/modules/my_projects/create_project_cubit/create_project_cubit.dart';
import 'package:moscow_hack/modules/my_projects/cubit/nko_projects_cubit.dart';
import 'package:moscow_hack/modules/my_projects/nko_projects_list.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/wrap_with_padding.dart';
import 'package:moscow_hack/widgets/input_fields/fields.dart';
import 'package:moscow_hack/widgets/primary_button.dart';
import 'package:moscow_hack/widgets/search_bar.dart';
import 'package:moscow_hack/widgets/stateless_widget_with_bloc.dart';

class NkoProjectsScreen extends StatelessWidgetWithBlocs {
  const NkoProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const PageScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPersistentHeader(
            pinned: true,
            delegate: MainAppBar(
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('МОИ ПРОЕКТЫ', style: context.textTheme.titleLarge?.copyWith(color: AppColors.black)),
                    ],
                  ),
                ),
                toolbarHeight: kToolbarHeight,
                topPadding: context.mediaQueryPadding.top,
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(100),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: PrimaryButton(
                                    onPressed: () async {
                                      await Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (context) => const CreateProjectScreen()));

                                      context.read<NkoProjectsCubit>().load();
                                    },
                                    child: const Text('СОЗДАТЬ ПРОЕКТ')))
                          ],
                        ),
                        SearchBar<NkoFilterCubit>(
                          buildFilters: false,
                          delegate: NkoSearchDelegate(),
                        ),
                      ],
                    ))),
          )
        ],
        body: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: BlocProvider<NkoProjectsCubit>(
            create: (context) => get(),
            child: const NkoProjectsList(),
          ),
        ),
      ),
    );
  }

  @override
  List<BlocProvider<StateStreamableSource<Object?>>> getProviders() {
    return [BlocProvider<NkoProjectsCubit>(create: (context) => get())];
  }
}

// Jesus...
// Я это делал за 1 час до дл не судите строго(((
class CreateProjectScreen extends StatefulWidget {
  const CreateProjectScreen({super.key});

  @override
  State<CreateProjectScreen> createState() => _CreateProjectScreenState();
}

class _CreateProjectScreenState extends State<CreateProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateProjectCubit(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(title: const Text('Новый проект')),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
                children: wrapWithPadding(
                    context,
                    [
                      BlocTextField<CreateProjectCubit, CreateProjectState>(
                        valueGetter: (state) => state.model.name,
                        onChanged: (state, value) => context.read<CreateProjectCubit>().updateEvent(
                            // state.maybeWhen(
                            //   modified: (event) => event.copyWith(website: value),
                            //   orElse: () => NewEvent(website: value),
                            // ),
                            state.model.copyWith(name: value)),
                        title: 'Название',
                      ),
                      BlocTextField<CreateProjectCubit, CreateProjectState>(
                        valueGetter: (state) => state.model.description,
                        onChanged: (state, value) => context.read<CreateProjectCubit>().updateEvent(
                            // state.maybeWhen(
                            //   modified: (event) => event.copyWith(website: value),
                            //   orElse: () => NewEvent(website: value),
                            // ),
                            state.model.copyWith(description: value)),
                        title: 'Описание',
                      ),
                      BlocTextField<CreateProjectCubit, CreateProjectState>(
                        keyboardType: TextInputType.url,
                        valueGetter: (state) => state.model.photoURL,
                        onChanged: (state, value) =>
                            context.read<CreateProjectCubit>().updateEvent(state.model.copyWith(photoURL: value)),
                        title: 'Ссылка на фото',
                      ),
                      DatePickerField<CreateProjectCubit, CreateProjectState>(
                        initialDateGetter: (s) => s.model.timeStart,
                        startDateGetter: (s) => s.model.timeStart,
                        valueGetter: (s) => s.model.timeStart,
                        onChanged: (state, value) =>
                            context.read<CreateProjectCubit>().updateEvent(state.model.copyWith(timeStart: value)),
                        title: 'Дата начала',
                      ),
                      DatePickerField<CreateProjectCubit, CreateProjectState>(
                        initialDateGetter: (s) => s.model.timeEnd,
                        startDateGetter: (s) => s.model.timeEnd,
                        valueGetter: (s) => s.model.timeEnd,
                        onChanged: (state, value) =>
                            context.read<CreateProjectCubit>().updateEvent(state.model.copyWith(timeEnd: value)),
                        title: 'Дата окончания',
                      ),
                      BlocTextField<CreateProjectCubit, CreateProjectState>(
                        keyboardType: TextInputType.url,
                        valueGetter: (state) => state.model.skills[0],
                        onChanged: (state, value) =>
                            context.read<CreateProjectCubit>().updateEvent(state.model.copyWith(skills: [value])),
                        title: 'Требования для волонтеров',
                      ),
                      BlocTextField<CreateProjectCubit, CreateProjectState>(
                        keyboardType: TextInputType.url,
                        valueGetter: (state) => state.model.tags[0],
                        onChanged: (state, value) =>
                            context.read<CreateProjectCubit>().updateEvent(state.model.copyWith(tags: [value])),
                        title: 'Сервис для волонтеров',
                      ),
                      PrimaryButton(
                          onPressed: () async {
                            await context.read<CreateProjectCubit>().create();
                            context.pop();
                          },
                          child: Text('Создать проект'))
                    ],
                    padding: const EdgeInsets.symmetric(vertical: 8.0))),
          ),
        );
      }),
    );
  }
}

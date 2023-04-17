// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationBarEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationBarEventCopyWith<NavigationBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationBarEventCopyWith<$Res> {
  factory $NavigationBarEventCopyWith(
          NavigationBarEvent value, $Res Function(NavigationBarEvent) then) =
      _$NavigationBarEventCopyWithImpl<$Res, NavigationBarEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$NavigationBarEventCopyWithImpl<$Res, $Val extends NavigationBarEvent>
    implements $NavigationBarEventCopyWith<$Res> {
  _$NavigationBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeTabCopyWith<$Res>
    implements $NavigationBarEventCopyWith<$Res> {
  factory _$$_ChangeTabCopyWith(
          _$_ChangeTab value, $Res Function(_$_ChangeTab) then) =
      __$$_ChangeTabCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_ChangeTabCopyWithImpl<$Res>
    extends _$NavigationBarEventCopyWithImpl<$Res, _$_ChangeTab>
    implements _$$_ChangeTabCopyWith<$Res> {
  __$$_ChangeTabCopyWithImpl(
      _$_ChangeTab _value, $Res Function(_$_ChangeTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_ChangeTab(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeTab implements _ChangeTab {
  const _$_ChangeTab(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationBarEvent.changeTab(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTab &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTabCopyWith<_$_ChangeTab> get copyWith =>
      __$$_ChangeTabCopyWithImpl<_$_ChangeTab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTab,
  }) {
    return changeTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
  }) {
    return changeTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class _ChangeTab implements NavigationBarEvent {
  const factory _ChangeTab(final int index) = _$_ChangeTab;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeTabCopyWith<_$_ChangeTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigationBarState {
  NavigationBarItems get navigationBarItem =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationBarStateCopyWith<NavigationBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationBarStateCopyWith<$Res> {
  factory $NavigationBarStateCopyWith(
          NavigationBarState value, $Res Function(NavigationBarState) then) =
      _$NavigationBarStateCopyWithImpl<$Res, NavigationBarState>;
  @useResult
  $Res call({NavigationBarItems navigationBarItem});
}

/// @nodoc
class _$NavigationBarStateCopyWithImpl<$Res, $Val extends NavigationBarState>
    implements $NavigationBarStateCopyWith<$Res> {
  _$NavigationBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigationBarItem = null,
  }) {
    return _then(_value.copyWith(
      navigationBarItem: null == navigationBarItem
          ? _value.navigationBarItem
          : navigationBarItem // ignore: cast_nullable_to_non_nullable
              as NavigationBarItems,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavigationBarStateCopyWith<$Res>
    implements $NavigationBarStateCopyWith<$Res> {
  factory _$$_NavigationBarStateCopyWith(_$_NavigationBarState value,
          $Res Function(_$_NavigationBarState) then) =
      __$$_NavigationBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NavigationBarItems navigationBarItem});
}

/// @nodoc
class __$$_NavigationBarStateCopyWithImpl<$Res>
    extends _$NavigationBarStateCopyWithImpl<$Res, _$_NavigationBarState>
    implements _$$_NavigationBarStateCopyWith<$Res> {
  __$$_NavigationBarStateCopyWithImpl(
      _$_NavigationBarState _value, $Res Function(_$_NavigationBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigationBarItem = null,
  }) {
    return _then(_$_NavigationBarState(
      navigationBarItem: null == navigationBarItem
          ? _value.navigationBarItem
          : navigationBarItem // ignore: cast_nullable_to_non_nullable
              as NavigationBarItems,
    ));
  }
}

/// @nodoc

class _$_NavigationBarState implements _NavigationBarState {
  const _$_NavigationBarState({required this.navigationBarItem});

  @override
  final NavigationBarItems navigationBarItem;

  @override
  String toString() {
    return 'NavigationBarState(navigationBarItem: $navigationBarItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationBarState &&
            (identical(other.navigationBarItem, navigationBarItem) ||
                other.navigationBarItem == navigationBarItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigationBarItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigationBarStateCopyWith<_$_NavigationBarState> get copyWith =>
      __$$_NavigationBarStateCopyWithImpl<_$_NavigationBarState>(
          this, _$identity);
}

abstract class _NavigationBarState implements NavigationBarState {
  const factory _NavigationBarState(
          {required final NavigationBarItems navigationBarItem}) =
      _$_NavigationBarState;

  @override
  NavigationBarItems get navigationBarItem;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationBarStateCopyWith<_$_NavigationBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

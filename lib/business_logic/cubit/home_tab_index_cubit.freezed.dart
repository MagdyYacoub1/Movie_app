// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_tab_index_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeTabIndexState {
  int get tabIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) initial,
    required TResult Function(int tabIndex) tabChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? initial,
    TResult? Function(int tabIndex)? tabChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabChange value) tabChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TabChange value)? tabChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabChange value)? tabChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeTabIndexStateCopyWith<HomeTabIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabIndexStateCopyWith<$Res> {
  factory $HomeTabIndexStateCopyWith(
          HomeTabIndexState value, $Res Function(HomeTabIndexState) then) =
      _$HomeTabIndexStateCopyWithImpl<$Res, HomeTabIndexState>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$HomeTabIndexStateCopyWithImpl<$Res, $Val extends HomeTabIndexState>
    implements $HomeTabIndexStateCopyWith<$Res> {
  _$HomeTabIndexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeTabIndexStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeTabIndexStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$InitialImpl(
      null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'HomeTabIndexState.initial(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) initial,
    required TResult Function(int tabIndex) tabChange,
  }) {
    return initial(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? initial,
    TResult? Function(int tabIndex)? tabChange,
  }) {
    return initial?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabChange value) tabChange,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TabChange value)? tabChange,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabChange value)? tabChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeTabIndexState {
  const factory _Initial(final int tabIndex) = _$InitialImpl;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TabChangeImplCopyWith<$Res>
    implements $HomeTabIndexStateCopyWith<$Res> {
  factory _$$TabChangeImplCopyWith(
          _$TabChangeImpl value, $Res Function(_$TabChangeImpl) then) =
      __$$TabChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$TabChangeImplCopyWithImpl<$Res>
    extends _$HomeTabIndexStateCopyWithImpl<$Res, _$TabChangeImpl>
    implements _$$TabChangeImplCopyWith<$Res> {
  __$$TabChangeImplCopyWithImpl(
      _$TabChangeImpl _value, $Res Function(_$TabChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$TabChangeImpl(
      null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TabChangeImpl implements _TabChange {
  const _$TabChangeImpl(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'HomeTabIndexState.tabChange(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangeImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      __$$TabChangeImplCopyWithImpl<_$TabChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) initial,
    required TResult Function(int tabIndex) tabChange,
  }) {
    return tabChange(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? initial,
    TResult? Function(int tabIndex)? tabChange,
  }) {
    return tabChange?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabChange,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabChange value) tabChange,
  }) {
    return tabChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TabChange value)? tabChange,
  }) {
    return tabChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabChange value)? tabChange,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(this);
    }
    return orElse();
  }
}

abstract class _TabChange implements HomeTabIndexState {
  const factory _TabChange(final int tabIndex) = _$TabChangeImpl;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

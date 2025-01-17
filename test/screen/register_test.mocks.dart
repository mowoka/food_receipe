// Mocks generated by Mockito 5.4.4 from annotations
// in food_recipe/test/screen/register_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i13;

import 'package:flutter/material.dart' as _i11;
import 'package:food_recipe/core/domain/entities/storage_user.dart' as _i8;
import 'package:food_recipe/core/domain/entities/user.dart' as _i3;
import 'package:food_recipe/features/onboard/data/repositories/register_repository_impl.dart'
    as _i5;
import 'package:food_recipe/features/onboard/domain/repositories/register_repository.dart'
    as _i4;
import 'package:food_recipe/features/onboard/domain/usecases/storage_save_user.dart'
    as _i7;
import 'package:food_recipe/features/onboard/presentation/controllers/register_controller.dart'
    as _i10;
import 'package:get/get.dart' as _i6;
import 'package:get/get_state_manager/src/simple/list_notifier.dart' as _i12;
import 'package:get_storage/get_storage.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i9;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGetStorage_0 extends _i1.SmartFake implements _i2.GetStorage {
  _FakeGetStorage_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUser_1 extends _i1.SmartFake implements _i3.User {
  _FakeUser_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRegisterRepository_2 extends _i1.SmartFake
    implements _i4.RegisterRepository {
  _FakeRegisterRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRegisterRepositoryImpl_3 extends _i1.SmartFake
    implements _i5.RegisterRepositoryImpl {
  _FakeRegisterRepositoryImpl_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRx_4<T> extends _i1.SmartFake implements _i6.Rx<T> {
  _FakeRx_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStorageSaveUser_5 extends _i1.SmartFake
    implements _i7.StorageSaveUser {
  _FakeStorageSaveUser_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInternalFinalCallback_6<T> extends _i1.SmartFake
    implements _i6.InternalFinalCallback<T> {
  _FakeInternalFinalCallback_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [StorageUser].
///
/// See the documentation for Mockito's code generation for more information.
class MockStorageUser extends _i1.Mock implements _i8.StorageUser {
  @override
  String get spKey => (super.noSuchMethod(
        Invocation.getter(#spKey),
        returnValue: _i9.dummyValue<String>(
          this,
          Invocation.getter(#spKey),
        ),
        returnValueForMissingStub: _i9.dummyValue<String>(
          this,
          Invocation.getter(#spKey),
        ),
      ) as String);

  @override
  _i2.GetStorage get storage => (super.noSuchMethod(
        Invocation.getter(#storage),
        returnValue: _FakeGetStorage_0(
          this,
          Invocation.getter(#storage),
        ),
        returnValueForMissingStub: _FakeGetStorage_0(
          this,
          Invocation.getter(#storage),
        ),
      ) as _i2.GetStorage);

  @override
  _i3.User get() => (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
        ),
        returnValue: _FakeUser_1(
          this,
          Invocation.method(
            #get,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeUser_1(
          this,
          Invocation.method(
            #get,
            [],
          ),
        ),
      ) as _i3.User);

  @override
  void save(_i3.User? value) => super.noSuchMethod(
        Invocation.method(
          #save,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [StorageSaveUser].
///
/// See the documentation for Mockito's code generation for more information.
class MockStorageSaveUser extends _i1.Mock implements _i7.StorageSaveUser {
  @override
  _i4.RegisterRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeRegisterRepository_2(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeRegisterRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.RegisterRepository);

  @override
  void execute({required String? name}) => super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
          {#name: name},
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [RegisterController].
///
/// See the documentation for Mockito's code generation for more information.
class MockRegisterController extends _i1.Mock
    implements _i10.RegisterController {
  @override
  _i5.RegisterRepositoryImpl get repo => (super.noSuchMethod(
        Invocation.getter(#repo),
        returnValue: _FakeRegisterRepositoryImpl_3(
          this,
          Invocation.getter(#repo),
        ),
        returnValueForMissingStub: _FakeRegisterRepositoryImpl_3(
          this,
          Invocation.getter(#repo),
        ),
      ) as _i5.RegisterRepositoryImpl);

  @override
  _i6.Rx<_i11.TextEditingController> get nameController => (super.noSuchMethod(
        Invocation.getter(#nameController),
        returnValue: _FakeRx_4<_i11.TextEditingController>(
          this,
          Invocation.getter(#nameController),
        ),
        returnValueForMissingStub: _FakeRx_4<_i11.TextEditingController>(
          this,
          Invocation.getter(#nameController),
        ),
      ) as _i6.Rx<_i11.TextEditingController>);

  @override
  set nameController(_i6.Rx<_i11.TextEditingController>? _nameController) =>
      super.noSuchMethod(
        Invocation.setter(
          #nameController,
          _nameController,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.StorageSaveUser get storageSaveUser => (super.noSuchMethod(
        Invocation.getter(#storageSaveUser),
        returnValue: _FakeStorageSaveUser_5(
          this,
          Invocation.getter(#storageSaveUser),
        ),
        returnValueForMissingStub: _FakeStorageSaveUser_5(
          this,
          Invocation.getter(#storageSaveUser),
        ),
      ) as _i7.StorageSaveUser);

  @override
  set storageSaveUser(_i7.StorageSaveUser? _storageSaveUser) =>
      super.noSuchMethod(
        Invocation.setter(
          #storageSaveUser,
          _storageSaveUser,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.InternalFinalCallback<void> get onStart => (super.noSuchMethod(
        Invocation.getter(#onStart),
        returnValue: _FakeInternalFinalCallback_6<void>(
          this,
          Invocation.getter(#onStart),
        ),
        returnValueForMissingStub: _FakeInternalFinalCallback_6<void>(
          this,
          Invocation.getter(#onStart),
        ),
      ) as _i6.InternalFinalCallback<void>);

  @override
  _i6.InternalFinalCallback<void> get onDelete => (super.noSuchMethod(
        Invocation.getter(#onDelete),
        returnValue: _FakeInternalFinalCallback_6<void>(
          this,
          Invocation.getter(#onDelete),
        ),
        returnValueForMissingStub: _FakeInternalFinalCallback_6<void>(
          this,
          Invocation.getter(#onDelete),
        ),
      ) as _i6.InternalFinalCallback<void>);

  @override
  bool get initialized => (super.noSuchMethod(
        Invocation.getter(#initialized),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  int get listeners => (super.noSuchMethod(
        Invocation.getter(#listeners),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  void onInit() => super.noSuchMethod(
        Invocation.method(
          #onInit,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerUser({required String? name}) => super.noSuchMethod(
        Invocation.method(
          #registerUser,
          [],
          {#name: name},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void update([
    List<Object>? ids,
    bool? condition = true,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #update,
          [
            ids,
            condition,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onReady() => super.noSuchMethod(
        Invocation.method(
          #onReady,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onClose() => super.noSuchMethod(
        Invocation.method(
          #onClose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void $configureLifeCycle() => super.noSuchMethod(
        Invocation.method(
          #$configureLifeCycle,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i12.Disposer addListener(_i12.GetStateUpdate? listener) =>
      (super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValue: () {},
        returnValueForMissingStub: () {},
      ) as _i12.Disposer);

  @override
  void removeListener(_i13.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void refresh() => super.noSuchMethod(
        Invocation.method(
          #refresh,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void refreshGroup(Object? id) => super.noSuchMethod(
        Invocation.method(
          #refreshGroup,
          [id],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyChildrens() => super.noSuchMethod(
        Invocation.method(
          #notifyChildrens,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListenerId(
    Object? id,
    _i13.VoidCallback? listener,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #removeListenerId,
          [
            id,
            listener,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i12.Disposer addListenerId(
    Object? key,
    _i12.GetStateUpdate? listener,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addListenerId,
          [
            key,
            listener,
          ],
        ),
        returnValue: () {},
        returnValueForMissingStub: () {},
      ) as _i12.Disposer);

  @override
  void disposeId(Object? id) => super.noSuchMethod(
        Invocation.method(
          #disposeId,
          [id],
        ),
        returnValueForMissingStub: null,
      );
}

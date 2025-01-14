import 'package:json_annotation/json_annotation.dart';
import 'package:passkeys_platform_interface/types/pubkeycred_param.dart';
import 'package:passkeys_platform_interface/types/types.dart';

part 'passkeySignUpRequest.g.dart';

@JsonSerializable(createFactory: false, explicitToJson: true)
class PasskeySignUpRequest {
  PasskeySignUpRequest(this.publicKey);

  final PublicKey publicKey;

  Map<String, dynamic> toJson() => _$PasskeySignUpRequestToJson(this);
}

@JsonSerializable(createFactory: false, explicitToJson: true)
class PublicKey {
  PublicKey(
    this.rp,
    this.user,
    this.challenge,
    this.pubKeyCredParams,
    this.authenticatorSelection,
    this.timeout,
  );

  final RelyingPartyType rp;
  final UserType user;
  final String challenge;
  final List<PubKeyCredParamType> pubKeyCredParams;
  final AuthenticatorSelectionType authenticatorSelection;
  final int? timeout;

  Map<String, dynamic> toJson() => _$PublicKeyToJson(this);
}

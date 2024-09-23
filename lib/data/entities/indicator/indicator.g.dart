// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndicatorEntityImpl _$$IndicatorEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$IndicatorEntityImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String? ?? "",
      displayName: json['display_name'] as String? ?? "",
    );

Map<String, dynamic> _$$IndicatorEntityImplToJson(
        _$IndicatorEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'display_name': instance.displayName,
    };

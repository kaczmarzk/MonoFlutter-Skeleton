///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<SlangLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<SlangLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [SlangLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: SlangLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<SlangLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get title => 'CrewClash';
	late final TranslationsGenericEn generic = TranslationsGenericEn.internal(_root);
	late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn.internal(_root);
}

// Path: generic
class TranslationsGenericEn {
	TranslationsGenericEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get error_message => 'Oops, something glitched out!';
	String get error_message_retry => 'Oops, something glitched out! Try again.';
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get nickname_screen_title => 'Who Are You in the Crew?';
	String get nickname_screen_input_title => 'YOUR NICKNAME';
	String get nickname_screen_button_title => 'Continue';
	String get nickname_screen_button_hint => 'Pick a name your friends will love';
	late final TranslationsOnboardingInputValidationEn input_validation = TranslationsOnboardingInputValidationEn.internal(_root);
}

// Path: onboarding.input_validation
class TranslationsOnboardingInputValidationEn {
	TranslationsOnboardingInputValidationEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get empty => 'Whoops, you forgot to type a nickname!';
	String get notCorrectLength => 'Length mismatch! Keep it between 3 and 15.';
	String get containsProhibitedChars => 'No sneaky symbols allowed—stick to letters and numbers!';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'title': return 'CrewClash';
			case 'generic.error_message': return 'Oops, something glitched out!';
			case 'generic.error_message_retry': return 'Oops, something glitched out! Try again.';
			case 'onboarding.nickname_screen_title': return 'Who Are You in the Crew?';
			case 'onboarding.nickname_screen_input_title': return 'YOUR NICKNAME';
			case 'onboarding.nickname_screen_button_title': return 'Continue';
			case 'onboarding.nickname_screen_button_hint': return 'Pick a name your friends will love';
			case 'onboarding.input_validation.empty': return 'Whoops, you forgot to type a nickname!';
			case 'onboarding.input_validation.notCorrectLength': return 'Length mismatch! Keep it between 3 and 15.';
			case 'onboarding.input_validation.containsProhibitedChars': return 'No sneaky symbols allowed—stick to letters and numbers!';
			default: return null;
		}
	}
}


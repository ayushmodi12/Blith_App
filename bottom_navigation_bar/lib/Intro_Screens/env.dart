
class Env {
	static bool isGalleryActive = false;

	//Utility functions to allow us to nest flutter projects within a parent application, without breaking fonts/image assets.
	//To facilitate this, the package value must be null when used in the primary project, but non-null when used from within the parent app.
	static String? getPackage(String value) => isGalleryActive? value : null;
	static String getBundle(String value) => "packages/$value";

/**
 * USAGE
		//In main App() class
		static String _pkg = "constellations_list";
		static String get pkg => Env.getPackage(_pkg);
		static String get bundle => Env.getBundle(_pkg);

		//Anywhere in app
		TextStyle(fontFamily: "Poppins", package: App.pkg);
		Image.asset("images/logo.webp", package: App.pkg);
		rootBundle.load('${App.bundle}/assets/glow.webp')
		
	IMPORTANT: If using rootBundle.load(), there's 2 additional steps:
		1. Move your assets into /lib, for example /lib/images/img.webp
		2. Include the assets in pubspec.yaml, using the package syntax:
		   /packages/mypackagename/images/img.webp

		Note: You only have to do this for assets that are loaded with rootBundle(), the rest can stay in the root directory of your project
 */
}
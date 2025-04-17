class OnboardingInfo {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingInfo({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

const onboardingPages = [
  OnboardingInfo(
    imagePath: 'assets/images/oneboarding_01.jpeg',
    title: 'Need a Hospitals?',
    description: 'Select your preferred hospital for faster medical response.',
  ),
  OnboardingInfo(
    imagePath: 'assets/images/oneboarding_01.jpeg',
    title: 'Are you stuck at the scene??',
    description: 'Connect to the nearest police station in seconds.',
  ),
  OnboardingInfo(
    imagePath: 'assets/images/oneboarding_01.jpeg',
    title: 'are you facing a danger fire or explosion?',
    description: 'Report fires or gas leaks with one tap.',
  ),
  OnboardingInfo(
    imagePath: 'assets/images/oneboarding_01.jpeg',
    title: 'Are you facing a critical security threat??',
    description: 'Request National Guard aid in critical security incidents.',
  ),
  OnboardingInfo(
    imagePath: 'assets/images/oneboarding_01.jpeg',
    title: 'Are you looking for clinic?',
    description: 'Book clinic appointments easily with Mustaeidun.',
  ),
];

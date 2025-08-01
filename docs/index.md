---
layout: default
title: Wellbeing Mapper
description: A mobile app for studying mental wellbeing in environmental & climate context
---

Welcome to the **Wellbeing Mapper** documentation website. Wellbeing Mapper is a mobile app for studying mental wellbeing in environmental & climate context. It has been developed as part of the [Planet4Health project](https://planet4health.eu), funded by the European Union. 

## 🧪 Current Status: Beta Testing

The app is currently in **beta testing phase** with the following modes available:

- **🔒 Private Mode**: Use the app for personal wellbeing tracking
- **🧪 App Testing Mode**: Test all research features safely (no real data collection)

Full research participation will be available in the next release for volunteers in Gauteng, South Africa, and Barcelona, Spain.

### Beta Testing Information
- All features are available for testing
- No real research data is collected in testing mode
- Can be used to explore the app's capabilities
- Feedback welcome via our development team

---

This site contains documentation for beta testers, app users, developers, and researchers.

## 🧪 For Beta Testers

### Quick Start
- **[Beta User Guide](BETA_USER_GUIDE.md)** - Complete beta testing guide
- **[Getting Started](BETA_USER_GUIDE.md#getting-started)** - Choose your mode and start testing
- **[Feedback Guidelines](BETA_USER_GUIDE.md#how-to-provide-feedback)** - How to report issues and suggestions

### Testing Focus Areas
- **App Functionality**: Location tracking, surveys, notifications
- **User Experience**: Interface clarity, onboarding flow
- **Technical Issues**: Performance, battery usage, crashes
- **Privacy Features**: Data handling, permission controls

## � For Future App Users

### When Research Mode is Available
- **[User Guide](USER_GUIDE.md)** - Complete guide to using the app for research
- **[Privacy Policy](PRIVACY.md)** - How we protect your data  
- **[Download](https://github.com/ActivitySpaceLab/gauteng-wellbeing-mapper-app/releases)** - Get the latest version

### Research Participation
- **Participant Codes**: Required from research team
- **Consent Process**: Full research consent and information sheets
- **Data Security**: End-to-end encryption for all research data
- **Study Locations**: Gauteng, South Africa and Barcelona, Spain

## 💻 For Developers

### Development Resources
- **[Developer Guide](DEVELOPER_GUIDE.md)** - Technical documentation and architecture
- **[Beta Testing Guide](BETA_TESTING_GUIDE.md)** - Release preparation instructions
- **[API Reference](API_REFERENCE.md)** - Complete API documentation
- **[Architecture Overview](ARCHITECTURE.md)** - System design and data flow

### Recent Updates
- **[App Mode System](DEVELOPER_GUIDE.md#app-mode-system)** - Beta vs. research configuration
- **[Notification Features](NOTIFICATION_FEATURE_SUMMARY.md)** - Enhanced survey reminder system
- **[Testing Tools](DEVELOPER_GUIDE.md#notification-system-features)** - Beta testing capabilities

## 🔬 For Researchers

### Future Research Release
- **[Server Setup](SERVER_SETUP.md)** - Research server configuration
- **[Encryption Setup](ENCRYPTION_SETUP.md)** - Security and key management
- **[Research Features](RESEARCH_FEATURES_SUMMARY.md)** - Available research tools
- **[Privacy Documentation](PRIVACY.md)** - Data protection measures

### Key Features
- **🔒 Private Mode**: Track where you spend your time privately on your device
- **🧪 App Testing Mode**: Test all research features safely (beta version)
- **Location Tracking**: Background GPS tracking with full user control
- **Wellbeing Surveys**: Quick 2-3 minute surveys about your mental wellbeing
- **Data Export**: Full control over your personal data
- **Notification System**: Bi-weekly survey reminders (configurable for testing)

### App Modes (Beta Version)
The beta version offers two modes for different user needs:

**🔒 Private Mode**
- All data stays on your phone
- No automatic sharing with researchers
- Perfect for personal wellbeing tracking

**🧪 App Testing Mode** *(Beta Only)*
- Experience all research features safely
- Practice with surveys and location mapping  
- NO real research data is collected
- All responses stay local for testing purposes
- Ideal for familiarizing yourself with research workflows

> **Note**: In the full research release, "App Testing Mode" will be replaced with "Research Mode" for actual study participation.
- Perfect for personal movement tracking
- Export your own data anytime

**🔬 Research Mode** *(Gauteng residents only)*
- Anonymous, encrypted data sharing
- Contribute to Planet4Health study
- Bi-weekly wellbeing surveys
- Help advance wellbeing research

## 🔧 For Developers

### Documentation
- **[Developer Guide](DEVELOPER_GUIDE.md)** - Setup, build, and development instructions
- **[API Reference](API_REFERENCE.md)** - Complete API documentation
- **[Architecture](ARCHITECTURE.md)** - App structure and design patterns
- **[Flow Charts](FLOW_CHARTS.md)** - User flows and system diagrams
- **[Release Guide](RELEASE_GUIDE.md)** - Complete release and deployment process
- **[Troubleshooting Guide](TROUBLESHOOTING_GUIDE.md)** - Common issues and solutions

### Quick Setup
```bash
# Clone the repository
git clone https://github.com/ActivitySpaceLab/gauteng-wellbeing-mapper-app.git

# Navigate to the project
cd gauteng-wellbeing-mapper-app/wellbeing-mapper-app

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### Key Technologies
- **Flutter 3.27.1** - Cross-platform mobile framework
- **Dart 3.3.1** - Programming language
- **Background Geolocation** - Location tracking
- **SQLite** - Local data storage
- **Material Design 3** - UI framework

### Research Features
- **[Notification System](NOTIFICATION_FEATURE_SUMMARY.md)** - Survey reminder system
- **[Research Features](RESEARCH_FEATURES_SUMMARY.md)** - Study participation tools
- **[Encryption Setup](ENCRYPTION_SETUP.md)** - Data security implementation
- **[Server Setup](SERVER_SETUP.md)** - Backend configuration

## 🔬 Research

This app is part of the **Planet4Health** study investigating how environmental factors affect mental wellbeing. This version of the app has been designed specifically for the case study in Gauteng, South Africa.

### Study Goals
- Understand relationships between place and mental health
- Identify environmental factors that promote wellbeing
- Develop evidence-based interventions for communities
- Support policy decisions for healthier urban environments

### Participation
- **Voluntary**: All participation is completely voluntary
- **Anonymous**: No personal identifiers are collected
- **Secure**: All data is encrypted before transmission
- **Ethical**: Approved by university research ethics committees

### Principal Investigators
- **Linda Theron**: linda.theron@up.ac.za (University of Pretoria)
- **Caradee Wright**: Caradee.Wright@mrc.ac.za (South African Medical Research Council)
- **John Palmer**: john.palmer@upf.edu (Universitat Pompeu Fabra, Barcelona)


## 🛡️ Privacy & Security

We take your privacy seriously:

- **End-to-end encryption** for all research data
- **No personal identifiers** in location or survey data
- **Full user control** over data sharing and participation
- **GDPR compliant** data handling practices
- **University ethics approval** for all research activities

[Read our full Privacy Policy](PRIVACY.md)

## 📞 Support

### For Users
- **In-app**: Use "Report an Issue" in the app menu
- **Email**: Contact the research team through the app
- **Website**: Visit the [Planet4Health website](https://planet4health.eu)

### For Developers
- **Issues**: [GitHub Issues](https://github.com/ActivitySpaceLab/gauteng-wellbeing-mapper-app/issues)
- **Discussions**: [GitHub Discussions](https://github.com/ActivitySpaceLab/gauteng-wellbeing-mapper-app/discussions)
- **Pull Requests**: [Contributing Guidelines](DEVELOPER_GUIDE.md#contributing)

## 📄 License

This project is licensed under the GNU General Public License v3.0 (GPLv3) - see the [LICENSE](../LICENSE) file for details.

---

### About the Planet4Health Project

The [Planet4Health Project](https://planet4health.eu) is a Horizon Europe research initiative focused on translating science into policy through a multisectoral approach to adaptation and mitigation of adverse effects of vector-borne diseases, environmental pollution, and climate change on planetary health.

**Mental Wellbeing in Environmental & Climate Context**

Traditional studies on environmental and climate changes have predominantly focused on physical health. However, these changes also contribute to rising mental health and psychosocial issues linked to socio-economic threats, including emotional distress and exacerbation of existing mental health conditions—often referred to as climate-related psychological distress.

This case study aims to collect and analyze mental wellbeing data alongside environmental data to develop a comprehensive understanding of mental health impacts. The project seeks to create integrated risk monitoring systems, map environmental hotspots, and provide solutions for better preparedness and response capacity.

*Last updated: {{ site.time | date: "%B %Y" }}*
